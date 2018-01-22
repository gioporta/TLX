hint "Make sure you read the TLX tabs on map before playing";
server globalchat "[Server Message]Welcome to Takistan Life Xtreme";
custom_motd = nil;
while {true} do {
	{server globalChat format["[MoTD] %1", _x]} forEach [
			"Visit tlx-gaming.com for information and server rules"
		];
	
	if (not(isNil "custom_motd")) then { if (typeName custom_motd == "STRING") then { if (custom_motd != "") then {
		server globalChat format["[MoTD] %1", custom_motd];
	};};};
	sleep (3 * motdwaittime);
};
