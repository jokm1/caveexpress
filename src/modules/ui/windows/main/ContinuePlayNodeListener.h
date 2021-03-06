#pragma once

#include "campaign/CampaignManager.h"
#include "ui/UI.h"
#include "ui/windows/UIWindow.h"
#include "service/ServiceProvider.h"
#include "network/INetwork.h"
#include "common/Log.h"

class ContinuePlayNodeListener: public UINodeListener {
private:
	CampaignManager& _campaignManager;
	ServiceProvider& _serviceProvider;
public:
	ContinuePlayNodeListener (CampaignManager &campaignManager, ServiceProvider& serviceProvider) :
			_campaignManager(campaignManager), _serviceProvider(serviceProvider)
	{
	}

	void onClick () override
	{
		Log::info(LOG_UI, "Continue in campaign");
		if (_serviceProvider.getNetwork().isMultiplayer()) {
			UI::get().pop();
			return;
		}
		if (_campaignManager.isNewlyCompleted()) {
			Log::info(LOG_UI, "Finished the campaign");
			UI::get().popMain();
			UI::get().push(UI_WINDOW_GAMEFINISHED);
		} else {
			Log::info(LOG_UI, "Continue play");
			UI::get().pop();
			_campaignManager.continuePlay();
		}
	}
};
