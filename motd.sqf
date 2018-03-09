custom_motd = nil;
while {true} do {
	sleep (3 * motdwaittime);
	{server globalChat format["[MOTD] %1", _x]} forEach [
			"Thanks for playing on TLX. Visit tlx-gaming.com for information and server rules."
		];
	
	if (not(isNil "custom_motd")) then { if (typeName custom_motd == "STRING") then { if (custom_motd != "") then {
		server globalChat format["[MoTD] %1", custom_motd];
	};};};
};
