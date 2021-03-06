#include "NPCFlying.h"
#include "caveexpress/server/entities/Player.h"
#include "caveexpress/server/entities/Egg.h"
#include "caveexpress/server/events/GameEventHandler.h"
#include "caveexpress/server/map/Map.h"
#include "caveexpress/shared/CaveExpressSoundType.h"
#include "caveexpress/shared/constants/ConfigVars.h"
#include "common/ConfigManager.h"

namespace caveexpress {

NPCFlying::NPCFlying (Map& map) :
		NPCAggressive(EntityTypes::NPC_FLYING, map), _spawnEgg(false)
{
	_spriteAlignment = ENTITY_ALIGN_MIDDLE_CENTER;
}

NPCFlying::~NPCFlying ()
{
}

void NPCFlying::setDying (const IEntity* entity)
{
	if (!isDying()) {
		_spawnEgg = rand() % 2 == 0;
	}
	NPCAggressive::setDying(entity);
}

void NPCFlying::onPreSolve (b2Contact* contact, IEntity* entity, const b2Manifold* oldManifold)
{
	NPCAggressive::onPreSolve(contact, entity, oldManifold);
	// we hit a player - so the player is crashing
	if (!isDying()) {
		if (entity->isPlayer()) {
			Player* player = assert_cast<Player*, IEntity*>(entity);
			player->setCrashed(CRASH_NPC_FLYING);
		}
	}
	contact->SetEnabled(false);
}

void NPCFlying::update (uint32_t deltaTime)
{
	NPCAggressive::update(deltaTime);
	if (!isDying())
		return;
	if (_spawnEgg) {
		_spawnEgg = false;
		const b2Vec2& pos = getPos();
		Egg* egg = new Egg(_map, pos.x, pos.y);
		egg->createBody();
	}

	b2Vec2 v = getLinearVelocity();
	v.y = _map.getGravity() / 2.0f;
	setLinearVelocity(v);
}

const Animation& NPCFlying::getFallingAnimation () const
{
	if (_lastDirectionRight)
		return Animations::ANIMATION_FLYING_FALLING_RIGHT;
	return Animations::ANIMATION_FLYING_FALLING_LEFT;
}

void NPCFlying::onSpawn ()
{
	if (getAnimationType() != Animation::NONE)
		return;

	const float speed = Config.getConfigVar(NPC_FLYING_SPEED)->getFloatValue();
	if (getPos().x <= 0.1) {
		_lastDirectionRight = true;
		setFlying(Animations::ANIMATION_FLYING_RIGHT, speed);
	} else {
		_lastDirectionRight = false;
		setFlying(Animations::ANIMATION_FLYING_LEFT, speed);
	}

	// send this sound to everyone
	_map.sendSound(0, SoundTypes::SOUND_NPC_FLYING_SPAWNED);
	_map.sendSpawnInfo(getPos(), _type);
}

void NPCFlying::setFlying (const Animation& animation, float speed)
{
	setState(NPCState::NPC_FLYING);
	setAnimationType(animation);
	float vx;
	if (animation == Animations::ANIMATION_FLYING_LEFT)
		vx = -speed;
	else
		vx = speed;
	setLinearVelocity(b2Vec2(vx, 0));
}

bool NPCFlying::shouldCollide (const IEntity* entity) const
{
	if (!NPCAggressive::shouldCollide(entity))
		return false;

	// flying npcs do only collide with players
	if (entity->isPlayer()) {
		const Player *p = assert_cast<const Player*, const IEntity*>(entity);
		return !p->isCrashed();
	}
	return false;
}

}
