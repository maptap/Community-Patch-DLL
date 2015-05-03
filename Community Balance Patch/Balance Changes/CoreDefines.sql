-- Unit and Building Maintenance Modifiers	
	
	UPDATE Defines
	SET Value = '8'
	WHERE Name = 'UNIT_MAINTENANCE_GAME_MULTIPLIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '7'
	WHERE Name = 'UNIT_MAINTENANCE_GAME_EXPONENT_DIVISOR' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Deal Durations
	UPDATE GameSpeeds
	SET DealDuration = '100'
	WHERE Type = 'GAMESPEED_MARATHON';

	UPDATE GameSpeeds
	SET DealDuration = '70'
	WHERE Type = 'GAMESPEED_EPIC';

	UPDATE GameSpeeds
	SET DealDuration = '50'
	WHERE Type = 'GAMESPEED_STANDARD';

	UPDATE GameSpeeds
	SET DealDuration = '30'
	WHERE Type = 'GAMESPEED_QUICK';

-- City Growth Defines

	-- 15
	UPDATE Defines
	SET Value = '15'
	WHERE Name = 'BASE_CITY_GROWTH_THRESHOLD' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- 1.5
	UPDATE Defines
	SET Value = '1.6'
	WHERE Name = 'CITY_GROWTH_EXPONENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- 8
	UPDATE Defines
	SET Value = '9'
	WHERE Name = 'CITY_GROWTH_MULTIPLIER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- More cost for first and second Great Prophets - push founding/enhancing dates back slightly
	UPDATE Defines
	SET Value = '300'
	WHERE Name = 'RELIGION_MIN_FAITH_FIRST_PROPHET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '200'
	WHERE Name = 'RELIGION_FAITH_DELTA_NEXT_PROPHET' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Great People more expensive - delta will increase faster as well.

	UPDATE Defines
	SET Value = '1500'
	WHERE Name = 'RELIGION_MIN_FAITH_FIRST_GREAT_PERSON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '1000'
	WHERE Name = 'RELIGION_FAITH_DELTA_NEXT_GREAT_PERSON' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	-- Unit upgrades more expensive based on era and production needed
	UPDATE Defines
	SET Value = '2'
	WHERE Name = 'UNIT_UPGRADE_COST_PER_PRODUCTION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '0.1'
	WHERE Name = 'UNIT_UPGRADE_COST_MULTIPLIER_PER_ERA' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Barbarian Experience Cap raised to 45
	UPDATE Defines
	SET Value = '45'
	WHERE Name = 'BARBARIAN_MAX_XP_VALUE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- GP Upgrade Deltas
	UPDATE Defines
	SET Value = '125'
	WHERE Name = 'GREAT_PERSON_THRESHOLD_BASE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '150'
	WHERE Name = 'GREAT_PERSON_THRESHOLD_INCREASE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Defines
	SET Value = '-25'
	WHERE Name = 'GWAM_THRESHOLD_DECREASE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	-- Espionage Rates Increased
	UPDATE Defines
	SET Value =  '250'
	WHERE Name = 'ESPIONAGE_GATHERING_INTEL_COST_PERCENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
	
	UPDATE Defines
	SET Value = '33'
	WHERE Name = 'ESPIONAGE_GATHERING_INTEL_RATE_BY_SPY_RANK_PERCENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Reduction of Pop from conquest reduced to 20% (was 50%)
	UPDATE Defines
	SET Value = '80'
	WHERE Name = 'CITY_CAPTURE_POPULATION_PERCENT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_MILITARY_TWEAKS' AND Value= 1 );
