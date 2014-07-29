#include "Player.h"
#include "cavepacker/server/map/Map.h"
#include "engine/common/Logger.h"
#include "engine/common/network/INetwork.h"
#include "engine/common/System.h"
#include "engine/common/ConfigManager.h"
#include "engine/common/network/IProtocolHandler.h"

Player::Player (Map& map, ClientId clientId, int col, int row) :
		IEntity(EntityTypes::PLAYER, map, col, row), _clientId(clientId) {
}

Player::~Player ()
{
}

bool Player::moveByChar (char step)
{
	switch (tolower(step)) {
	case 'w':
	case 'l':
		return move(-1, 0);
	case 'e':
	case 'r':
		return move(1, 0);
	case 'n':
	case 'u':
		return move(0, -1);
	case 's':
	case 'd':
		return move(0, 1);
	}
	return false;
}

bool Player::move (int x, int y)
{
	debug(LOG_SERVER, String::format("move player %i:%i (current: %i:%i)", x, y, _col, _row));
	// move player and move touching packages
	const int targetCol = _col + x;
	const int targetRow = _row + y;
	MapTile* package = _map.getPackage(targetCol, targetRow);
	if (package != nullptr) {
		const int pCol = targetCol + x;
		const int pRow = targetRow + y;
		if (!_map.isFree(pCol, pRow)) {
			debug(LOG_SERVER, "can't move here - can't move package. target field is blocked");
			return false;
		}
		if (!package->setPos(pCol, pRow)) {
			debug(LOG_SERVER, "failed to move the package - thus can't move the player");
			return false;
		}
		debug(LOG_SERVER, "moved package");
		_map.increasePushes();
		_map.rebuildField();
	}
	if (!setPos(targetCol, targetRow)) {
		debug(LOG_SERVER, "failed to move the player");
		return false;
	}

	_map.increaseMoves();
	return true;
}
