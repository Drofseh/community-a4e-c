local cscripts = folder.."../../Cockpit/Scripts/"
dofile(cscripts.."devices.lua")
dofile(cscripts.."command_defs.lua")

local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")

join(res.keyCommands,{

    {combos = {{key = 'Tab'}}, down = iCommandChat, name = _('Multiplayer chat - mode All'), category = _('General')},
    {combos = {{key = 'Tab', reformers = {'LCtrl'}}}, down = iCommandFriendlyChat, name = _('Multiplayer chat - mode Allies'), category = _('General')},
    {combos = {{key = 'Tab', reformers = {'LShift'}}}, down = iCommandAllChat, name = _('Chat read/write All'), category = _('General')},
    {combos = {{key = 'Y', reformers = {'LCtrl', 'LShift'}}}, down = iCommandChatShowHide, name = _('Chat show/hide'), category = _('General')},

    ---------------------------------------------
    -- General ----------------------------------
    ---------------------------------------------
    {combos = {{key = 'U'}}, down = iCommandPlaneShipTakeOff, name = _('Ship Take Off Position'), category = {_('General')}},
    -- {combos = {{key = 'P', reformers = {'RShift'}}}, down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},
    {combos = {{key = 'T'}}, down = iCommandPlaneWingtipSmokeOnOff, name = _('Smoke - ON/OFF'), category = {_('General')}},

    ---------------------------------------------
    -- View Cockpit -----------------------------
    ---------------------------------------------
    {combos = {{key = 'N', reformers = {'RAlt'}}}, down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = {_('View Cockpit')}},
    {combos = {{key = 'M', reformers = {'RAlt'}}}, down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = {_('View Cockpit')}},
    {combos = {{key = 'M' }}, down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = {_('View Cockpit')}},

    ---------------------------------------------
    -- Systems ----------------------------------
    ---------------------------------------------
    {combos = {{key = 'E', reformers = {'LCtrl'}}}, down = iCommandPlaneEject, name = _('Eject (3 times)'), category = {_('Systems')}},
    {combos = {{key = 'W'}}, down = Keys.BrakesOn, up = Keys.BrakesOff, name = _('Wheel Brake On'), category = {_('Systems')}},

    ---------------------------------------------
    -- Flight Control ---------------------------
    ---------------------------------------------
    {combos = {{key = 'Up'}}, down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Aircraft Pitch Down'), category = {_('Flight Control')}},
    {combos = {{key = 'Down'}}, down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Aircraft Pitch Up'), category = {_('Flight Control')}},
    {combos = {{key = 'Left'}}, down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = {_('Flight Control')}},
    {combos = {{key = 'Right'}}, down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = {_('Flight Control')}},
    {combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = {_('Flight Control')}},
    {combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = {_('Flight Control')}},

    ---------------------------------------------
    -- Stick ------------------------------------
    ---------------------------------------------
    {combos = {{key = '.', reformers = {'RCtrl'}}}, pressed = Keys.TrimUp, up = Keys.TrimStop, name = _('Trimmer Switch - NOSE UP'), category = {_('Stick'), _('Flight Control')}},
    {combos = {{key = ';', reformers = {'RCtrl'}}}, pressed = Keys.TrimDown, up = Keys.TrimStop, name = _('Trimmer Switch - NOSE DOWN'), category = {_('Stick'), _('Flight Control')}},
    {combos = {{key = ',', reformers = {'RCtrl'}}}, pressed = Keys.TrimLeft, up = Keys.TrimStop, name = _('Trimmer Switch - LEFT WIGN DOWN'), category = {_('Stick'), _('Flight Control')}},
    {combos = {{key = '/', reformers = {'RCtrl'}}}, pressed = Keys.TrimRight, up = Keys.TrimStop, name = _('Trimmer Switch - RIGHT WING DOWN'), category = {_('Stick'), _('Flight Control')}},
    {combos = {{key = 'Z', reformers = {'RCtrl'}}}, pressed = Keys.TrimLeftRudder, up = Keys.TrimStop, name = _('Rudder Trim Switch - Rudder Left'), category = {_('Left Console'), _('Flight Control')}},
    {combos = {{key = 'X', reformers = {'RCtrl'}}}, pressed = Keys.TrimRightRudder, up = Keys.TrimStop, name = _('Rudder Trim Switch - Rudder Right'), category = {_('Left Console'), _('Flight Control')}},
    {combos = {{key = 'T', reformers = {'LCtrl'}}}, down = Keys.TrimCancel, name = _('Trim: Reset'), category = {_('Stick'), _('Flight Control')}},
    {combos = {{key = 'Space'}}, down = Keys.PlaneFireOn, up = Keys.PlaneFireOff, name = _('Gun-Rocket Trigger'), category = {_('Stick')}},
    {combos = {{key = 'Space', reformers = {'LAlt'}}}, down = Keys.PickleOn,	up = Keys.PickleOff, name = _('Bomb Release Button'), category = {_('Stick')}},
    
    -- TODO: AP button
    {down = Keys.ToggleStick, name = _('Control Stick - HIDE/SHOW'), category = {_('Stick')}},

    ---------------------------------------------
    -- Throttle Quadrant ------------------------
    ---------------------------------------------
    {combos = {{key = 'Num+'}}, 						pressed = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Throttle Smoothly - Increase'), category = {_('Throttle Quadrant'), _('Flight Control')}},
    {combos = {{key = 'Num-'}}, 						pressed = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Throttle Smoothly - Decrease'), category = {_('Throttle Quadrant'), _('Flight Control')}},
    {combos = {{key = 'PageUp'}},           down = iCommandPlaneAUTIncreaseRegime, name = _('Throttle Step - Increase'), category = {_('Throttle Quadrant'), _('Flight Control')}},
    {combos = {{key = 'PageDown'}},         down = iCommandPlaneAUTDecreaseRegime, name = _('Throttle Step - Decrease'), category = {_('Throttle Quadrant'), _('Flight Control')}},

    {down = device_commands.throttle_click_ITER, value_down = 1, cockpit_device_id = devices.ENGINE, name = _('Throttle OFF/IGN/IDLE - Step Up'), category = {_('Throttle Quadrant')}},
    {down = device_commands.throttle_click_ITER, value_down = -1, cockpit_device_id = devices.ENGINE, name = _('Throttle OFF/IGN/IDLE - Step Down'), category = {_('Throttle Quadrant')}},

    {down = Keys.ExtLightMaster, value_down = 1, name = _('Master Exterior Lights Switch - ON'), category = {_('Throttle Grip')}},
    {down = Keys.ExtLightMaster, value_down = 0, name = _('Master Exterior Lights Switch - OFF'), category = {_('Throttle Grip')}},
    {down = Keys.ExtLightMasterToggle, name = _('Master Exterior Lights Switch - Toggle'), category = {_('Throttle Grip')}},
    {combos = {{key = 'B'}}, down = iCommandPlaneAirBrake, name = _('Speedbrake Switch - OPEN/CLOSE'), category = {_('Systems')}},
    {combos = {{key = 'B', reformers = {'LShift'}}}, down = iCommandPlaneAirBrakeOn, name = _('Speedbrake Switch - OPEN'), category = {_('Throttle Grip')}},
    {combos = {{key = 'B', reformers = {'LCtrl'}}}, down = iCommandPlaneAirBrakeOff, name = _('Speedbrake Switch - CLOSE'), category = {_('Throttle Grip')}},

    -- Flap Switch
    {combos = {{key = 'F'}}, down = iCommandPlaneFlaps, name = _('FLAP Switch - UP/DOWN'), category = {_('Throttle Quadrant')}},
    {combos = {{key = 'F', reformers = {'LCtrl'}}}, down = iCommandPlaneFlapsOn, name = _('FLAP Switch - DOWN'), category = {_('Throttle Quadrant')}},
    {combos = {{key = 'F', reformers = {'LShift'}}}, down = iCommandPlaneFlapsOff, name = _('FLAP Switch - UP'), category = {_('Throttle Quadrant')}},
    {combos = {{key = 'F', reformers = {'LAlt'}}}, down = Keys.PlaneFlapsStop, name = _('FLAP Switch - STOP'), category = {_('Throttle Quadrant')}},

    ---------------------------------------------
    -- Chaff Control Panel ----------------------
    ---------------------------------------------
    {down = Keys.CmBankSelectRotate, name = _('ALE-29A Dispenser Select Cycle'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBankSelect, value_down = -1, name = _('ALE-29A Dispenser Select - 1'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBankSelect, value_down = 1,  name = _('ALE-29A Dispenser Select - 2'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBankSelect, value_down = 0,  name = _('ALE-29A Dispenser Select - Both'), category = {_('Chaff Control Panel')}},
    {down = device_commands.cm_auto,    up = device_commands.cm_auto,   cockpit_device_id = devices.COUNTERMEASURES,  value_down = 1.0,   value_up = 0, name = _('ALE-29A AUTO Pushbutton'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBank1AdjUp, name = _('ALE-29A Dispenser 1 Counter - Increase'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBank1AdjDown, name = _('ALE-29A Dispenser 1 Counter - Decrease'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBank2AdjUp, name = _('ALE-29A Dispenser 2 Counter - Increase'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmBank2AdjDown, name = _('ALE-29A Dispenser 2 Counter - Decrease'), category = {_('Chaff Control Panel')}},
    {down = Keys.CmPowerToggle, name = _('ALE-29A PWR-OFF'), category = {_('Chaff Control Panel')}},

    ---------------------------------------------
    -- ECM Control Panel ------------------------
    ---------------------------------------------
    {down = Keys.ecm_apr25_off, value_down = 1.0,value_up = 0.0, name = _('APR-25 Power Switch - ON/OFF'), category = _('ECM Panel')},

    ---------------------------------------------
    -- Instrument Panel -------------------------
    ---------------------------------------------
    -- Gunsight Panel
    -- {combos = {{key = 'H', reformers = {'RCtrl'}}}, down = iCommandBrightnessILS, name = _('HUD Color'), category = {_('Systems')}},
    -- {combos = {{key = 'H', reformers = {'RCtrl','RShift'}}}, pressed = iCommandHUDBrightnessUp, name = _('HUD Brightness up'), category = {_('Systems')}},
    -- {combos = {{key = 'H', reformers = {'RShift','RAlt'}}}, pressed = iCommandHUDBrightnessDown, name = _('HUD Brightness down'), category = {_('Systems')}},

    -- Altimeter
    {combos = {{key = '-', reformers = {'RShift'}}}, down = Keys.AltPressureDec, name = _('Altimeter Pressure - Decrease'), category = {_('Instrument Panel')}},
    {combos = {{key = '=', reformers = {'RShift'}}}, down = Keys.AltPressureInc, name = _('Altimeter Pressure - Increase'), category = {_('Instrument Panel')}},

    -- Radar Altimeter
    {combos = {{key = '-', reformers = {'RCtrl'}}}, down = Keys.RadarAltWarningDown, name = _('Radar Altitude Warning: Lower'), category = {_('Instrument Panel')}},
    {combos = {{key = '=', reformers = {'RCtrl'}}}, down = Keys.RadarAltWarningUp, name = _('Radar Altitude Warning: Raise'), category = {_('Instrument Panel')}},

    -- Landing Gear Handle
    {combos = {{key = 'G'}}, down = Keys.PlaneGear, name = _('Landing Gear Handle - UP/DOWN'), category = {_('Instrument Panel')}},
    {combos = {{key = 'G', reformers = {'LCtrl'}}}, down = Keys.PlaneGearUp, name = _('Landing Gear Handle - UP'), category = {_('Instrument Panel')}},
    {combos = {{key = 'G', reformers = {'LShift'}}}, down = Keys.PlaneGearDown, name = _('Landing Gear Handle - DOWN'), category = {_('Instrument Panel')}},

    -- Arresting Hook Handle
    {combos = {{key = 'G', reformers = {'LAlt'}}}, down = iCommandPlaneHook, name = _('Tail Hook Handle - UP/DOWN'), category = {_('Instrument Panel')}},
    --{down = Keys.PlaneHookUp, name = _('Tail Hook Up'), category = {_('Systems')}},
    --{down = Keys.PlaneHookDown, name = _('Tail Hook Down'), category = {_('Systems')}},

    -- Misc Switches Panel
    {down = Keys.RadarTCPlanProfile, value_down = 1, name = _('Radar Terrain Clearance - PLAN'), category = {_('Misc Switches Panel')}},
    {down = Keys.RadarTCPlanProfile, value_down = 0, name = _('Radar Terrain Clearance - PROFILE'), category = {_('Misc Switches Panel')}},
    {down = Keys.RadarTCPlanProfile, value_down = -1, name = _('Radar Terrain Clearance Toggle'), category = {_('Misc Switches Panel')}},
    {down = Keys.RadarRangeLongShort, value_down = 1, name = _('Radar Range - LONG'), category = {_('Misc Switches Panel')}},
    {down = Keys.RadarRangeLongShort, value_down = 0, name = _('Radar Range - SHORT'), category = {_('Misc Switches Panel')}},
    {down = Keys.RadarRangeLongShort, value_down = -1, name = _('Radar Range Toggle'), category = {_('Misc Switches Panel')}},
    
    {down = device_commands.bdhi_mode, value_down = 1, cockpit_device_id = devices.NAV, name = _('BDHI - NAV CMPTR'), category = {_('Misc Switches Panel')}},
    {down = device_commands.bdhi_mode, value_down = 0, cockpit_device_id = devices.NAV, name = _('BDHI - TACAN'), category = {_('Misc Switches Panel')}},
    {down = device_commands.bdhi_mode, value_down = -1, cockpit_device_id = devices.NAV, name = _('BDHI - NAV PAC'), category = {_('Misc Switches Panel')}},
    
    {down = Keys.FuelGaugeExt, name = _('Fuel Gauge - EXT'), category = {_('Misc Switches Panel')}},
    {down = Keys.FuelGaugeInt, name = _('Fuel Gauge - INT'), category = {_('Misc Switches Panel')}},
    
    -- Armament Panel                                                                     
    {down = device_commands.arm_bomb, value_down = 1, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('BOMB ARM - NOSE & TAIL'), category = {_('Armament Panel')}},
    {down = device_commands.arm_bomb, value_down = 0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('BOMB ARM - OFF'), category = {_('Armament Panel')}},
    {down = device_commands.arm_bomb, value_down = -1, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('BOMB ARM - TAIL'), category = {_('Armament Panel')}},
    
    {combos = {{key = '1'}}, down = Keys.Station1, name = _('Station 1 Enable/Disable'), category = {_('Armament Panel')}},
    {combos = {{key = '2'}}, down = Keys.Station2, name = _('Station 2 Enable/Disable'), category = {_('Armament Panel')}},
    {combos = {{key = '3'}}, down = Keys.Station3, name = _('Station 3 Enable/Disable'), category = {_('Armament Panel')}},
    {combos = {{key = '4'}}, down = Keys.Station4, name = _('Station 4 Enable/Disable'), category = {_('Armament Panel')}},
    {combos = {{key = '5'}}, down = Keys.Station5, name = _('Station 5 Enable/Disable'), category = {_('Armament Panel')}},

    {down = device_commands.arm_func_selector,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0,  name = _('Function Selector - OFF'),             category = {_('Instrument Panel'), _('Armament Panel')}},
    {down = device_commands.arm_func_selector,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1,  name = _('Function Selector - ROCKETS'),         category = {_('Instrument Panel'), _('Armament Panel')}},
    {down = device_commands.arm_func_selector,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2,  name = _('Function Selector - GM UNARM'),        category = {_('Instrument Panel'), _('Armament Panel')}},
    {down = device_commands.arm_func_selector,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3,  name = _('Function Selector - SPRAY TANK'),      category = {_('Instrument Panel'), _('Armament Panel')}},
    {down = device_commands.arm_func_selector,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4,  name = _('Function Selector - LABS'),            category = {_('Instrument Panel'), _('Armament Panel')}},
    {down = device_commands.arm_func_selector,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5,  name = _('Function Selector - BOMBS & GM ARM'),  category = {_('Instrument Panel'), _('Armament Panel')}},
    {combos = {{key = '7'}}, down = Keys.ArmsFuncSelectorCCW, name = _('Function Selector - CCW'), category = {_('Armament Panel')}},
    {combos = {{key = '8'}}, down = Keys.ArmsFuncSelectorCW, name = _('Function Selector - CW'), category = {_('Armament Panel')}},
    
    {combos = {{key = '9'}}, down = Keys.GunsReadyToggle, name = _('Gun Charging Switch - READY/SAFE Toggle'), category = {_('Armament Panel')}},
    {combos = {{key = '0'}}, down = Keys.MasterArmToggle, name = _('Master Arm Switch Toggle'), category = {_('Armament Panel')}},
    
    -- Aircraft Weapons Release System Panel
    {down = Keys.AWRSMultiplierToggle,  name = _('MULTIPLIER Switch Toggle'),       category = {_('Instrument Panel'), _('AWE-1 Aircraft Weapons Release System Panel')}},
    {down = Keys.AWRSQtySelIncrease,    name = _('QTY SEL Switch - CW/Increase'),   category = {_('Instrument Panel'), _('AWE-1 Aircraft Weapons Release System Panel')}},
    {down = Keys.AWRSQtySelDecrease,    name = _('QTY SEL Switch - CCW/Decrease'),  category = {_('Instrument Panel'), _('AWE-1 Aircraft Weapons Release System Panel')}},
    {down = Keys.AWRSModeSelCCW,        name = _('MODE SELECT Switch - CCW/Right'), category = {_('Instrument Panel'), _('AWE-1 Aircraft Weapons Release System Panel')}},
    {down = Keys.AWRSModeSelCW,         name = _('MODE SELECT Switch - CW/Left'),   category = {_('Instrument Panel'), _('AWE-1 Aircraft Weapons Release System Panel')}},

    -- T-Handles
    {down = Keys.JettisonWeapons,up = Keys.JettisonWeaponsUp, name = _('EMER BOMB Release Handle'), category = {_('Instrument Panel')}},
    ---------------------------------------------
    -- Left Console -----------------------------
    ---------------------------------------------    
    -- Gunpods Control Panel
    {down = Keys.GunpodCharge,  name = _('GUNPOD CHARGE/OFF/CLEAR Toggle'), category = {_('Gunpods Control Panel')}},
    {down = Keys.GunpodLeft,    name = _('LH STATION - READY/SAFE'),        category = {_('Gunpods Control Panel')}},
    {down = Keys.GunpodCenter,  name = _('CTR STATION - READY/SAFE'),       category = {_('Gunpods Control Panel')}},
    {down = Keys.GunpodRight,   name = _('RH STATION - READY/SAFE'),        category = {_('Gunpods Control Panel')}},

    -- APC Control Panel
    {down = Keys.APCEngageStbyOff, value_down = -1, name = _('APC POWER Switch - OFF'),     category = {_('APC Control Panel')}},
    {down = Keys.APCEngageStbyOff, value_down = 0,  name = _('APC POWER Switch - STBY'),    category = {_('APC Control Panel')}},
    {down = Keys.APCEngageStbyOff, value_down = 1,  name = _('APC POWER Switch - ENGAGE'),  category = {_('APC Control Panel')}},
    {down = Keys.APCHotStdCold, value_down = -1,    name = _('APC TEMP Switch - COLD'),     category = {_('APC Control Panel')}},
    {down = Keys.APCHotStdCold, value_down = 0,     name = _('APC TEMP Switch - STD'),      category = {_('APC Control Panel')}},
    {down = Keys.APCHotStdCold, value_down = 1,     name = _('APC TEMP Switch - HOT'),      category = {_('APC Control Panel')}},

    -- JATO Control Panel
    {combos = {{key = 'S'}}, down = Keys.SpoilersArmToggle, name = _('Spoilers ARM-OFF Switch Toggle'), category = {_('JATO Control Panel')}},
    {down = Keys.SpoilersArmOn, name = _('Spoilers ARM-OFF Switch - ON'), category = {_('JATO Control Panel')}},
    {down = Keys.SpoilersArmOff, name = _('Spoilers ARM-OFF Switch - OFF'), category = {_('JATO Control Panel')}},
    {combos = {{key = 'Q'}}, down = Keys.JATOFiringButton, name = _('JATO Firing Button'), category = {_('JATO Control Panel')}},

    -- Engine Control Panel
    {combos = {{key = 'R'}}, down = iCommandPlaneFuelOn, up = iCommandPlaneFuelOff, name = _('Fuel Dump'), category = {_('Engine Control Panel')}},
    {combos = {{key = 'Home', reformers = {'RShift'}}}, down = Keys.Engine_Start, name = _('Engine Starter Switch - START'), category = {_('Engine Control Panel')}},
    {combos = {{key = 'End', reformers = {'RShift'}}}, down = Keys.Engine_Stop, name = _('Engine Starter Switch - ABORT'), category = {_('Engine Control Panel')}},

    -- Radar Control Panel
    {down = Keys.RadarModeOFF, name = _('Radar Mode Selector Switch Knob - OFF'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarModeSTBY, name = _('Radar Mode Selector Switch Knob - Standby'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarModeSearch, name = _('Radar Mode Selector Switch Knob - Search'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarModeTC, name = _('Radar Mode Selector Switch Knob - Terrain Clearance'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarModeA2G, name = _('Radar Mode Selector Switch Knob - A2G'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarMode, name = _('Radar Mode Selector Switch Knob Cycle'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarModeCW, name = _('Radar Mode Selector Switch Knob - CW'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarModeCCW, name = _('Radar Mode Selector Switch Knob - CCW'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarAoAComp, value_down = 1, name = _('Radar AoA Compensation Switch - ON'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarAoAComp, value_down = 0, name = _('Radar AoA Compensation Switch - OFF'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarAoAComp, value_down = -1, name = _('Radar AoA Compensation Switch Toggle'), category = {_('Radar Control Panel')}},    
    {down = Keys.RadarVolume, value_down = 1, name = _('Radar Obstacle Tone Volume Knob - Increase'), category = {_('Radar Control Panel')}},
    {down = Keys.RadarVolume, value_down = 0, name = _('Radar Obstacle Tone Volume Knob - Decrease'), category = {_('Radar Control Panel')}},

    -- AFCS Panel
    {down = Keys.AFCSOverride, name = _('AFCS Override (emergency)'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSStandbyToggle, name = _('AFCS Standby Toggle'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSEngageToggle, name = _('AFCS Engage Toggle'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSAltitudeToggle, name = _('AFCS Altitude Toggle'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHeadingToggle, name = _('AFCS Heading Toggle'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHeadingInc, name = _('AFCS Heading Increment'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHeadingDec, name = _('AFCS Heading Decrement'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHotasPath, name = _('AFCS Path Mode'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHotasAltHdg, name = _('AFCS Altitude + Heading Modes'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHotasAlt, name = _('AFCS Altitude Mode'), category = {_('AFCS Panel')}},
    {down = Keys.AFCSHotasEngage, name = _('AFCS Engage'), category = {_('AFCS Panel')}},

    {combos = {{key = '5', reformers = {'LShift'}}}, down = Keys.RadarHoldToggle, name = _('Radar Hold: Toggle'), category = _('Modes')},
    {combos = {{key = '6', reformers = {'LShift'}}}, down = Keys.RadarHoldDec, name = _('Radar Hold: Dec'), category = _('Modes')},
    {combos = {{key = '7', reformers = {'LShift'}}}, down = Keys.RadarHoldInc, name = _('Radar Hold: Inc'), category = _('Modes')},
    {combos = {{key = '8', reformers = {'LShift'}}}, down = Keys.SpeedHoldToggle, name = _('Speed Hold: Toggle'), category = _('Modes')},
    {combos = {{key = '9', reformers = {'LShift'}}}, down = Keys.SpeedHoldDec, name = _('Speed Hold: Dec'), category = _('Modes')},
    {combos = {{key = '0', reformers = {'LShift'}}}, down = Keys.SpeedHoldInc, name = _('Speed Hold: Inc'), category = _('Modes')},

    -- Oxygen and Anti-G Panel

    -- Canopy Control
    {combos = {{key = 'C', reformers = {'LCtrl'}}}, down = iCommandPlaneFonar, name = _('Canopy Open/Close'), category = {_('Left Console')}},

    ---------------------------------------------
    -- Right Console ----------------------------
    ---------------------------------------------
    -- Doppler Radar Control Panel
    {down = Keys.NavDopplerOff, name = _('Nav Doppler - OFF'), category = _('Navigation')},
    {down = Keys.NavDopplerStandby, name = _('Nav Doppler - STBY'), category = _('Navigation')},
    {down = Keys.NavDopplerLand, name = _('Nav Doppler - ON:LAND'), category = _('Navigation')},
    {down = Keys.NavDopplerSea, name = _('Nav Doppler - ON:SEA'), category = _('Navigation')},
    {down = Keys.NavDopplerTest, name = _('Nav Doppler - TEST'), category = _('Navigation')},
    {down = Keys.NavDopplerCW, name = _('Nav Doppler - clockwise'), category = _('Navigation')},
    {down = Keys.NavDopplerCCW, name = _('Nav Doppler - counter-clockwise'), category = _('Navigation')},

    -- Navigation Control Panel
    {down = Keys.NavPPosLatInc, name = _('Present Position Latitude - Increase'), category = _('Navigation')},
    {down = Keys.NavPPosLatDec, name = _('Present Position Latitude - Decrease'), category = _('Navigation')},
    {down = Keys.NavPPosLonInc, name = _('Present Position Longitude - Increase'), category = _('Navigation')},
    {down = Keys.NavPPosLonDec, name = _('Present Position Longitude - Decrease'), category = _('Navigation')},
    {down = Keys.NavDestLatInc, name = _('Destination Latitude - Increase'), category = _('Navigation')},
    {down = Keys.NavDestLatDec, name = _('Destination Latitude - Decrease'), category = _('Navigation')},
    {down = Keys.NavDestLonInc, name = _('Destination Longitude - Increase'), category = _('Navigation')},
    {down = Keys.NavDestLonDec, name = _('Destination Longitude - Decrease'), category = _('Navigation')},

    {down = Keys.NavSelectTest, name = _('Nav Select - TEST'), category = _('Navigation')},
    {down = Keys.NavSelectOff, name = _('Nav Select - OFF'), category = _('Navigation')},
    {down = Keys.NavSelectStandby, name = _('Nav Select - STBY'), category = _('Navigation')},
    {down = Keys.NavSelectD1, name = _('Nav Select - D1'), category = _('Navigation')},
    {down = Keys.NavSelectD2, name = _('Nav Select - D2'), category = _('Navigation')},
    {down = Keys.NavSelectCW, name = _('Nav Select - clockwise'), category = _('Navigation')},
    {down = Keys.NavSelectCCW, name = _('Nav Select - counter-clockwise'), category = _('Navigation')},

    -- ARN-52 TACAN Control Panel
    {combos = {{key = '0', reformers = {'LCtrl'}}}, down = Keys.NavReset, name = _('Reset Both TCN & NDB Channels'), category = {_('Systems')}},
    --{combos = {{key = '-', reformers = {'LAlt'}}}, down = Keys.NavTCNPrev, name = _('TACAN Channel: Previous'), category = {_('Systems')}},
    --{combos = {{key = '=', reformers = {'LAlt'}}}, down = Keys.NavTCNNext, name = _('TACAN Channel: Next'), category = {_('Systems')}},
    -- {combos = {{key = '-', reformers = {'LCtrl'}}}, down = Keys.NavNDBPrev, name = _('NDB Channel: Previous'), category = {_('Systems')}},
    -- {combos = {{key = '=', reformers = {'LCtrl'}}}, down = Keys.NavNDBNext, name = _('NDB Channel: Next'), category = {_('Systems')}},
    {combos = {{key = '-', reformers = {'LShift'}}}, down = Keys.NavILSPrev, name = _('ILS Channel: Previous'), category = {_('Systems')}},
    {combos = {{key = '=', reformers = {'LShift'}}}, down = Keys.NavILSNext, name = _('ILS Channel: Next'), category = {_('Systems')}},
 
    -- Interior Lights Panel
    {down = device_commands.intlight_whiteflood_CHANGE,     cockpit_device_id = devices.AVIONICS,  value_down = 0.1,     name = _('Interior Lights: White Floodlight Increase'),      category = {_('Right Console'), _('INT LTS Panel')}},
    {down = device_commands.intlight_whiteflood_CHANGE,     cockpit_device_id = devices.AVIONICS,  value_down = -0.1,    name = _('Interior Lights: White Floodlight Decrease'),      category = {_('Right Console'), _('INT LTS Panel')}},
    {down = device_commands.intlight_instruments_CHANGE,    cockpit_device_id = devices.AVIONICS,  value_down = 0.1,     name = _('Interior Lights: Instrument Lights Increase'),     category = {_('Right Console'), _('INT LTS Panel')}},
    {down = device_commands.intlight_instruments_CHANGE,    cockpit_device_id = devices.AVIONICS,  value_down = -0.1,    name = _('Interior Lights: Instrument Lights Decrease'),     category = {_('Right Console'), _('INT LTS Panel')}},
    {down = device_commands.intlight_console_CHANGE,        cockpit_device_id = devices.AVIONICS,  value_down = 0.1,     name = _('Interior Lights: Console Lights Increase'),        category = {_('Right Console'), _('INT LTS Panel')}},
    {down = device_commands.intlight_console_CHANGE,        cockpit_device_id = devices.AVIONICS,  value_down = -0.1,    name = _('Interior Lights: Console Lights Decrease'),        category = {_('Right Console'), _('INT LTS Panel')}},
    
    -- Exterior Lights Panel
    {down = Keys.ExtLightProbe, value_down = 1, name = _('Refueling Probe Light: BRIGHT'), category = {_('Systems')}},
    {down = Keys.ExtLightProbe, value_down = -1, name = _('Refueling Probe Light: DIM'), category = {_('Systems')}},
    {down = Keys.ExtLightProbe, value_down = 0, name = _('Refueling Probe Light: OFF'), category = {_('Systems')}},
    {down = Keys.ExtLightProbeCycle, name = _('Refueling Probe Light: BRIGHT/DIM/OFF'), category = {_('Systems')}},

    {down = Keys.ExtLightTaxi, value_down = 1, name = _('Taxi Light: ON'), category = {_('Systems')}},
    {down = Keys.ExtLightTaxi, value_down = 0, name = _('Taxi Light: OFF'), category = {_('Systems')}},
    {down = Keys.ExtLightTaxiToggle, name = _('Taxi Light: ON/OFF'), category = {_('Systems')}},

    {down = Keys.ExtLightAnticollision, value_down = 1, name = _('Anti-collision Lights: ON'), category = {_('Systems')}},
    {down = Keys.ExtLightAnticollision, value_down = 0, name = _('Anti-collision Lights: OFF'), category = {_('Systems')}},
    {down = Keys.ExtLightAnticollisionToggle, name = _('Anti-collision Lights: ON/OFF'), category = {_('Systems')}},

    {down = Keys.ExtLightNav, value_down = 1, name = _('Navigation Lights: BRIGHT'), category = {_('Systems')}},
    {down = Keys.ExtLightNav, value_down = -1, name = _('Navigation Lights: DIM'), category = {_('Systems')}},
    {down = Keys.ExtLightNav, value_down = 0, name = _('Navigation Lights: OFF'), category = {_('Systems')}},
    {down = Keys.ExtLightNavCycle, name = _('Navigation Lights: BRIGHT/DIM/OFF'), category = {_('Systems')}},

    {down = Keys.ExtLightTail, value_down = 1, name = _('Tail Light: BRIGHT'), category = {_('Systems')}},
    {down = Keys.ExtLightTail, value_down = -1, name = _('Tail Light: DIM'), category = {_('Systems')}},
    {down = Keys.ExtLightTail, value_down = 0, name = _('Tail Light: OFF'), category = {_('Systems')}},
    {down = Keys.ExtLightTailCycle, name = _('Tail Light: BRIGHT/DIM/OFF'), category = {_('Systems')}},

    {down = Keys.ExtLightFuselage, value_down = 1, name = _('Fuselage Lights: BRIGHT'), category = {_('Systems')}},
    {down = Keys.ExtLightFuselage, value_down = -1, name = _('Fuselage Lights: DIM'), category = {_('Systems')}},
    {down = Keys.ExtLightFuselage, value_down = 0, name = _('Fuselage Lights: OFF'), category = {_('Systems')}},
    {down = Keys.ExtLightFuselageCycle, name = _('Fuselage Lights: BRIGHT/DIM/OFF'), category = {_('Systems')}},

    {down = Keys.ExtLightFlashSteady, value_down = 1, name = _('Exterior Lights: FLASH'), category = {_('Systems')}},
    {down = Keys.ExtLightFlashSteady, value_down = 0, name = _('Exterior Lights: STEADY'), category = {_('Systems')}},
    {down = Keys.ExtLightFlashSteadyToggle, name = _('Exterior Lights: FLASH/STEADY'), category = {_('Systems')}},
	
		---------------------------------------------
    -- Carrier Catapult -------------------------
    ---------------------------------------------
	  {combos = {{key = '1', reformers = {'LAlt'}}},  down = Keys.catapult_ready, value_down = 1.0, value_up = 0.0, name = _('Catapult Ready'), category = _('Catapult')},
	  {combos = {{key = '2', reformers = {'LAlt'}}},  down = Keys.catapult_shoot, value_down = 1.0, value_up = 0.0, name = _('Catapult Shoot'), category = _('Catapult')},
	  {combos = {{key = '3', reformers = {'LAlt'}}},  down = Keys.catapult_abort, value_down = 1.0, value_up = 0.0, name = _('Catapult Abort'), category = _('Catapult')},
  
    -- Weapon/CMDS Adjustment
    {combos = {{key = '2', reformers = {'RShift','RAlt'}}},		down = Keys.ChangeCBU2AQuantity,		value_down = 1,	name = _('Change CBU-2/A Release Quantity - 1/2/3'),		category = _('Ground Adjustment')},
    {combos = {{key = '3', reformers = {'RShift','RAlt'}}},		down = Keys.ChangeCBU2BAQuantity,		value_down = 1,	name = _('Change CBU-2B/A Release Quantity - 1/2/3/4/6/SALVO'),		category = _('Ground Adjustment')},
    {combos = {{key = '4', reformers = {'RShift','RAlt'}}},		down = Keys.ChangeCmsBursts,		value_down = 1,	name = _('Change Countermeasures Bursts'),		category = _('Ground Adjustment')},
    {combos = {{key = '5', reformers = {'RShift','RAlt'}}},		down = Keys.ChangeCmsBurstInterval,		value_down = 1,	name = _('Change Countermeasures Burst Interval'),		category = _('Ground Adjustment')},
    {combos = {{key = '6', reformers = {'RShift','RAlt'}}},		down = Keys.ChangeCmsSalvos,		value_down = 1,	name = _('Change Countermeasures Salvos'),		category = _('Ground Adjustment')},
    {combos = {{key = '7', reformers = {'RShift','RAlt'}}},		down = Keys.ChangeSalvoInterval,		value_down = 1,	name = _('Change Countermeasures Salvo Interval'),		category = _('Ground Adjustment')},
	
    --NightVision
    {combos = {{key = 'H', reformers = {'RShift'}}}        , down = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggle - Toggle'), category = _('Sensors')},
    {combos = {{key = 'H', reformers = {'RShift','RCtrl'}}}, down = iCommandPlane_Helmet_Brightess_Up  , name = _('Goggle Gain - Inc'), category = _('Sensors')},
    {combos = {{key = 'H', reformers = {'RShift','RAlt'}}} , down = iCommandPlane_Helmet_Brightess_Down, name = _('Goggle Gain - Dec'), category = _('Sensors')},
  
    -- PID tuning
    {down = Keys.Tune1, value_down = 0.1, name = _('Tune1: +0.1'), category = _('Debug')},
    {down = Keys.Tune1, value_down = -0.1, name = _('Tune1: -0.1'), category = _('Debug')},
    {down = Keys.Tune2, value_down = 0.1, name = _('Tune2: +0.1'), category = _('Debug')},
    {down = Keys.Tune2, value_down = -0.1, name = _('Tune2: -0.1'), category = _('Debug')},
    {down = Keys.Tune3, value_down = 0.1, name = _('Tune3: +0.1'), category = _('Debug')},
    {down = Keys.Tune3, value_down = -0.1, name = _('Tune3: -0.1'), category = _('Debug')},

    -- FC3 Commands [Implemented] (TODO: What should be implmented here?)
    {combos = {{key = 'W', reformers = {'LCtrl'}}}, down = Keys.JettisonFC3,up = Keys.JettisonWeaponsUp, name = _('Weapons Jettison: FC3-style'), category = {_('Systems')}},

    -- FC3 Commands [Not Implemented]
    -- {combos = {{key = 'L', reformers = {'RShift'}}}, down = iCommandPowerOnOff, name = _('Electric Power Switch'), category = {_('Systems')}},
    -- {combos = {{key = 'L'}}, down = iCommandPlaneCockpitIllumination, name = _('Illumination Cockpit'), category = {_('Systems')}},
    -- {combos = {{key = 'L', reformers = {'RCtrl'}}}, down = Keys.PlaneLightsOnOff, name = _('Navigation Lights Bright/Dim/Off'), category = {_('Systems')}},
    -- {combos = {{key = 'L', reformers = {'RAlt'}}}, down = Keys.PlaneHeadlightOnOff, name = _('Taxi Light On/Off'), category = {_('Systems')}},
    -- {combos = {{key = 'N', reformers = {'RShift'}}}, down = iCommandPlaneResetMasterWarning, name = _('Audible Warning Reset'), category = {_('Systems')}},
    -- {combos = {{key = 'C', reformers = {'RShift'}}}, down = iCommandFlightClockReset, name = _('Flight Clock Start/Stop/Reset'), category = {_('Systems')}},
    -- {down = iCommandClockElapsedTimeReset, name = _('Elapsed Time Clock Start/Stop/Reset'), category = {_('Systems')}},
    -- {combos = {{key = 'Q', reformers = {'LShift'}}}, down = iCommandPlaneDropSnar, name = _('Countermeasures Continuously Dispense'), category = _('Countermeasures')},
    -- {combos = {{key = 'Delete'}}, down = iCommandPlaneDropFlareOnce, name = _('Countermeasures Flares Dispense'), category = _('Countermeasures')},
    -- {combos = {{key = 'Insert'}}, down = iCommandPlaneDropChaffOnce, name = _('Countermeasures Chaff Dispense'), category = _('Countermeasures')},
    -- {combos = {{key = 'A'}}, down = iCommandPlaneAutopilot, name = _('Autopilot'), category = _('Autopilot')},
    -- {combos = {{key = 'J'}}, down = iCommandPlaneAUTOnOff, name = _('Autothrust'), category = _('Autopilot')},
    -- {combos = {{key = 'H'}}, down = iCommandPlaneSAUHBarometric, name = _('Autopilot - Barometric Altitude Hold \'H\''), category = _('Autopilot')},
    -- {combos = {{key = '1', reformers = {'LAlt'}}}, down = iCommandPlaneStabTangBank, name = _('Autopilot - Attitude Hold'), category = _('Autopilot')},
    -- {combos = {{key = '2', reformers = {'LAlt'}}}, down = iCommandPlaneStabHbarBank, name = _('Autopilot - Altitude And Roll Hold'), category = _('Autopilot')},
    -- {combos = {{key = '3', reformers = {'LAlt'}}}, down = iCommandPlaneStabHorizon,	name = _('Autopilot - Transition To Level Flight Control'), category = _('Autopilot')},
    -- {combos = {{key = '4', reformers = {'LAlt'}}}, down = iCommandPlaneStabHbar, name = _('Autopilot - Barometric Altitude Hold'), category = _('Autopilot')},
    -- {combos = {{key = '5', reformers = {'LAlt'}}}, down = iCommandPlaneStabHrad, name = _('Autopilot - Radar Altitude Hold'), category = _('Autopilot')},
    -- {combos = {{key = '6', reformers = {'LAlt'}}}, down = iCommandPlaneRouteAutopilot, name = _('Autopilot - \'Route following\''), category = _('Autopilot')},
    -- {combos = {{key = '7', reformers = {'LAlt'}}}, down = iCommandPlaneStabCancel, name = _('Autopilot Disengage'), category = _('Autopilot')},
})
return res