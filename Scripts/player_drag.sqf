// Credit: Montel Williams
player_drag = {
		private["_unit"];
		_unit = _this select 0;
		// Might need to add the anti-abuse calls here. Check the original code... (Montel)
		if(_unit getVariable "Escorting") exitWith {[_unit] call player_release};
		_exit = false;
		if (isciv or isins) then {
			if !([player] call check_armed_player) exitWith {player groupChat "You must be armed to do this."; _exit = true;};
			if !((animationstate _unit) in player_vulnerable_states) exitWith {player groupChat "This person is not restrained or is not vulnerable."; _exit = true;};
		};
		if (_exit) exitwith {};
		if ([_unit] call check_safezone) exitwith {};
		if (insafezone) exitwith {};
		if(isNull _unit) exitWith {player groupChat "null unit"}; //Not valid
		if(!(_unit isKindOf "Man")) exitWith {player groupChat "unit not of type man"}; //Not a 'Man'
		if(!isPlayer _unit) exitWith {player groupChat "unit not a player"}; //Not a human player
		_unit attachTo [player, [0,0.8,0]];
		_unit setVariable["transporting",false,true];
		transporting = true;
		_unit setVariable["Escorting",true,true];
};

player_release = {
	private["_unit"];
	_unit = _this select 0;
	if(isNull _unit) exitWith {player groupChat "Null Unit"}; //Not valid
	if(!(_unit getVariable "Escorting")) exitWith {player groupChat "Unit is not currently being escorted"}; //He's not being Escorted.
	if(isNull _unit) exitWith {player groupChat "null unit"}; //Not valid
	detach _unit;
	_unit setVariable["Escorting",false,true];
	transporting = false;
};