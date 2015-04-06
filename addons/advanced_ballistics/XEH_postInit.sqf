#include "script_component.hpp"

#include "initKeybinds.sqf"

GVAR(bulletDatabase) = [];
GVAR(bulletDatabaseStartTime) = [];
GVAR(bulletDatabaseSpeed) = [];
GVAR(bulletDatabaseFrames) = [];
GVAR(bulletDatabaseLastFrame) = [];
GVAR(bulletDatabaseHDeflect) = [];
GVAR(bulletDatabaseSpinDrift) = [];
GVAR(bulletDatabaseOccupiedIndices) = [];
GVAR(bulletDatabaseFreeIndices) = [];

GVAR(WindInfo) = false;
GVAR(WindInfoStart) = time;

GVAR(Protractor) = false;
GVAR(ProtractorStart) = time;

// TODO: Remove this hack once the weather engine is up and running
if (isNil QUOTE(EGVAR(weather,currentTemperature))) then { EGVAR(weather,currentTemperature) = 24; };
if (isNil QUOTE(EGVAR(weather,currentHumidity))) then { EGVAR(weather,currentHumidity) = 50; };

GVAR(SimulationPrecision) = 1;

GVAR(INIT_MESSAGE_ENABLED) = true;

GVAR(WindEnabled) = true;
GVAR(SpinDriftEnabled) = true;
GVAR(CoriolisEnabled) = true;
GVAR(EoetvoesEnabled) = true;
GVAR(AdvancedAirDragEnabled) = true;
GVAR(TransonicRegionEnabled) = true;
GVAR(AmmoTemperatureEnabled) = true;
GVAR(BulletTraceEnabled) = true;
GVAR(AtmosphericDensitySimulationEnabled) = true;
GVAR(BarrelLengthInfluenceEnabled) = true;
GVAR(VehicleGunnerEnabled) = true;
GVAR(ExtensionsEnabled) = false;

[] call FUNC(initializeTerrainExtension);
