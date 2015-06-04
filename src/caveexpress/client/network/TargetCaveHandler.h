#pragma once

#include "network/IProtocolHandler.h"
#include "caveexpress/shared/network/messages/TargetCaveMessage.h"
#include "client/ClientMap.h"
#include "ui/UI.h"
#include "caveexpress/client/ui/windows/UIMapWindow.h"
#include "ui/nodes/UINodeSprite.h"

class TargetCaveHandler: public IClientProtocolHandler {
public:
	TargetCaveHandler() {
	}

	void execute(const IProtocolMessage& message) override
	{
		const TargetCaveMessage *msg = static_cast<const TargetCaveMessage*>(&message);
		const uint8_t caveNumber = msg->getCaveNumber();
		UINodeSprite* node = UI::get().getNode<UINodeSprite>(UI_WINDOW_MAP, UINODE_TARGETCAVEID);
		if (caveNumber == 0) {
			node->clearSprites();
			return;
		}

		const std::string caveNumberStr = "cavenumber" + toString((int) caveNumber);
		const SpritePtr& sprite = SpriteCache::get().load(caveNumberStr);
		node->addSprite(sprite);
	}
};