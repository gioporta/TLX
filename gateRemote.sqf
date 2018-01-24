{
	if (_x == (terrgate or pmcgate1 or pmcgate2) then {
		_x setPosATL [((getPosATL _x) select 0),((getPosATL _x) select 1), -10];
		[] spawn {
			sleep 20;
			_x setPosATL [((getPosATL _x) select 0),((getPosATL _x) select 1), 0];
		};
	} else {
		if (_x getVariable "raised") then {
			_x setPosATL [((getPosATL _x) select 0),((getPosATL _x) select 1), -10];
			_x setVariable ["raised", false, true];
		} else {
			_x setPosATL [((getPosATL _x) select 0),((getPosATL _x) select 1), 0];
			_x setVariable ["raised", true, true];
		};
	};
} forEach (_this select 3);	


