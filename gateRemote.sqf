{
  if (_x getVariable "raised") then {
  	_x setPosATL [((getPosATL _x) select 0),((getPosATL _x) select 1), -10];
  	_x setvariable ["raised", false, true];
  } else {
    systemChat format ["%1: %2", _x, getPosATL _x];
  	_x setPosATL [((getPosATL _x) select 0),((getPosATL _x) select 1), 0];
  	_x setvariable ["raised", true, true];
  };
} forEach _this;
