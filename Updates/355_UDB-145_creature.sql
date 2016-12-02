-- Duplicates removed
DELETE FROM creature WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_addon WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_movement WHERE id IN (55922,55950,55946,55987,55990,55989);
DELETE FROM game_event_creature WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM game_event_creature_data WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_battleground WHERE guid IN (55922,55950,55946,55987,55990,55989);
DELETE FROM creature_linking WHERE guid IN (55922,55950,55946,55987,55990,55989) 
OR master_guid IN (55922,55950,55946,55987,55990,55989);

-- Rotlimb Cannibal 
UPDATE creature SET position_x = 9141.685547, position_y = -6992.420410, position_z = 9.112395, orientation = 1.428094, Spawndist = 0, MovementType = 0 WHERE guid = 56082;
UPDATE creature SET position_x = 9144.500000, position_y = -6992.453125, position_z = 9.266702, orientation = 1.510327, Spawndist = 0, MovementType = 0 WHERE guid = 56067;
UPDATE creature SET position_x = 9144.772461, position_y = -6994.754395, position_z = 9.276006, orientation = 1.380970, Spawndist = 0, MovementType = 0 WHERE guid = 56068;
DELETE FROM creature WHERE guid = 56065; -- UDB free guid used
INSERT INTO creature (guid, id, map, spawnMask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES 
(56065,15655,530,1,0,0,9142.6,-6995.12,9.19671,1.44931,300,0,0,137,0,0,2);
DELETE FROM creature_movement WHERE id = 56065;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56065,1,9142.6,-6995.12,9.19671,2000,1565501,1.44931,0,0),(56065,2,9146.93,-6970.46,8.74395,0,0,0.971624,0,0),(56065,3,9172.51,-6942.44,5.77679,0,0,0.521591,0,0),
(56065,4,9194.01,-6936.1,4.68107,0,0,6.26206,0,0),(56065,5,9230.88,-6955.76,4.60276,0,0,5.99896,0,0),(56065,6,9267.96,-6961.74,4.58334,0,0,6.25421,0,0),
(56065,7,9314.47,-6961.16,9.85552,0,0,6.27384,0,0),(56065,8,9371.66,-6966.16,17.9735,10000,0,6.18352,0,0);
-- Links
DELETE FROM creature_linking WHERE guid IN (56067,56068,56082);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56067, 56065, 128+512),
(56068, 56065, 128+512),
(56082, 56065, 128+512);
DELETE FROM dbscripts_on_creature_movement WHERE id = 1565501; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1565501,1,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON');
DELETE FROM dbscripts_on_creature_death WHERE id = 15655; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(15655,10,18,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'desp');

-- Eversong Tender
UPDATE creature SET position_x = 9174.863281, position_y = -6789.921875, position_z = 33.791882, Spawndist = 10, MovementType = 1 WHERE guid = 55480;

-- Springpaw Stalker
UPDATE creature SET position_x = 9077.146484, position_y = -6728.952637, position_z = 20.230244, Spawndist = 15, MovementType = 1 WHERE guid = 55984;
UPDATE creature SET position_x = 9080.941406, position_y = -7554.627441, position_z = 102.713112, Spawndist = 15, MovementType = 1 WHERE guid = 55821;
UPDATE creature SET position_x = 9093.875000, position_y = -7520.442383, position_z = 88.082741, Spawndist = 15, MovementType = 1 WHERE guid = 55942;
UPDATE creature SET position_x = 9150.410156, position_y = -7609.599121, position_z = 102.518661, Spawndist = 15, MovementType = 1 WHERE guid = 55945;

-- Elder Springpaw
UPDATE creature SET position_x = 9033.854492, position_y = -7681.673340, position_z = 140.387833, Spawndist = 15, MovementType = 1 WHERE guid = 55998;
UPDATE creature SET position_x = 9076.555664, position_y = -7710.252930, position_z = 135.212921, Spawndist = 15, MovementType = 1 WHERE guid = 55988;
UPDATE creature SET position_x = 9112.898438, position_y = -7817.004883, position_z = 123.236694, Spawndist = 15, MovementType = 1 WHERE guid = 55994;
UPDATE creature SET position_x = 9155.250000, position_y = -7748.492676, position_z = 133.449890, Spawndist = 10, MovementType = 1 WHERE guid = 55997;
-- Silvermoon Guardian
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid = 56878;
DELETE FROM creature_movement WHERE id = 56878;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(56878,1,9075.53,-7453.2,83.147,2000,1622101,5.81037,0,0),(56878,2,9083.64,-7459.33,82.3095,0,0,5.4139,0,0),(56878,3,9094.12,-7474.37,79.7339,0,0,5.44139,0,0),
(56878,4,9106.17,-7481.73,78.0308,0,0,5.84979,0,0),(56878,5,9120.14,-7485.99,76.3903,0,0,6.10504,0,0),(56878,6,9135.87,-7486.14,74.1661,0,0,0.0692527,0,0),
(56878,7,9143.43,-7483.38,72.1307,0,0,0.824806,0,0),(56878,8,9148.94,-7476.1,69.3798,0,0,1.08163,0,0),(56878,9,9155.35,-7463.24,65.605,0,0,1.08399,0,0),
(56878,10,9163.17,-7454.76,62.2949,0,0,0.785536,0,0),(56878,11,9172.74,-7450.63,58.3818,0,0,0.2711,0,0),(56878,12,9190.92,-7452.68,51.184,0,0,0.0158453,0,0),
(56878,13,9223.02,-7448.49,41.154,0,0,0.235757,0,0),(56878,14,9232.13,-7444.44,38.7136,0,0,0.728171,0,0),(56878,15,9243.84,-7430.97,35.5011,0,0,0.619,0,0),
(56878,16,9254.21,-7429.35,35.4306,0,0,6.15684,0,0),(56878,17,9261.15,-7434.88,35.8412,0,0,5.22694,0,0),(56878,18,9265.25,-7445.57,35.8999,0,0,5.01488,0,0),
(56878,19,9265.07,-7456.89,35.8899,0,0,4.52401,0,0),(56878,20,9260.84,-7472.31,35.5593,0,0,4.57899,0,0),(56878,21,9261.41,-7484.52,35.5209,5000,0,4.92848,0,0),
(56878,22,9257.34,-7478.7,35.5761,0,0,1.69106,0,0),(56878,23,9257.72,-7465.82,35.7736,0,0,1.23632,0,0),(56878,24,9261.38,-7452.16,35.8671,0,0,1.42558,0,0),
(56878,25,9260.48,-7441.99,35.5515,0,0,2.02562,0,0),(56878,26,9253.36,-7434.07,35.4012,0,0,2.62451,0,0),(56878,27,9247.75,-7430.09,35.1504,0,0,2.10693,0,0),
(56878,28,9244.72,-7412.54,33.4977,0,0,1.58386,0,0),(56878,29,9246.67,-7386.82,30.9486,0,0,1.38358,0,0),(56878,30,9254.43,-7362.81,26.6823,0,0,1.2265,0,0),
(56878,31,9267.23,-7344.13,22.6337,0,0,0.928048,0,0),(56878,32,9276.66,-7328.1,19.9771,0,0,1.06157,0,0),(56878,33,9290.48,-7299.74,17.2787,0,0,1.07727,0,0),
(56878,34,9310.89,-7280.94,14.2154,10000,0,0.66494,0,0),(56878,35,9306.56,-7289.38,14.8871,0,0,4.14111,0,0),(56878,36,9293.53,-7302.88,17.3098,0,0,4.17096,0,0),
(56878,37,9280.06,-7331.36,20.0312,0,0,4.30447,0,0),(56878,38,9269.79,-7347.76,22.9399,0,0,4.10813,0,0),(56878,39,9253.347656,-7367.320801,27.553810,0,0,4.398997,0,0),
(56878,40,9251.79,-7383.54,30.2129,0,0,4.51732,0,0),(56878,41,9248.95,-7398.95,31.988,0,0,4.64298,0,0),(56878,42,9248.79,-7424.52,34.7828,0,0,5.08359,0,0),
(56878,43,9251.29,-7427.93,35.0913,0,0,5.70876,0,0),(56878,44,9259.97,-7433.06,35.8896,0,0,5.43231,0,0),(56878,45,9265.39,-7445.18,35.9194,0,0,4.98385,0,0),
(56878,46,9265.19,-7457.56,35.9254,0,0,4.38145,0,0),(56878,47,9260.78,-7472.93,35.5561,0,0,4.73802,0,0),(56878,48,9261.41,-7484.79,35.5186,5000,0,4.96343,0,0),
(56878,49,9257.31,-7478.36,35.5674,0,0,1.63098,0,0),(56878,50,9257.89,-7464.84,35.8457,0,0,1.33253,0,0),(56878,51,9261.67,-7451.45,35.8064,0,0,1.49903,0,0),
(56878,52,9260.27,-7440.94,35.5334,0,0,2.09476,0,0),(56878,53,9252.77,-7433.64,35.3787,0,0,3.18961,0,0),(56878,54,9246.07,-7435.69,35.6636,0,0,3.65613,0,0),
(56878,55,9234.09,-7448.49,38.8601,0,0,3.77159,0,0),(56878,56,9223.23,-7453.13,41.5279,0,0,3.28778,0,0),(56878,57,9191.76,-7456.54,51.4601,0,0,3.13149,0,0),
(56878,58,9173.12,-7455.29,58.8282,0,0,3.25323,0,0),(56878,59,9164.16,-7458.59,62.5594,0,0,3.89333,0,0),(56878,60,9156.07,-7468.57,66.4942,0,0,4.17214,0,0),
(56878,61,9148.42,-7485.63,71.7225,0,0,4.36456,0,0),(56878,62,9143.4,-7489.75,73.4711,0,0,3.44957,0,0),(56878,63,9126.99,-7490.92,75.4171,0,0,2.99718,0,0),
(56878,64,9107.01,-7486.36,77.9078,0,0,2.69795,0,0),(56878,65,9095.5,-7480.4,79.1877,0,0,2.43798,0,0),(56878,66,9086.31,-7470.12,80.753,0,0,2.10104,0,0),
(56878,67,9079.17,-7460.49,82.553,0,0,2.48589,0,0),(56878,68,9071.38,-7455.15,83.1419,0,0,2.68224,0,0),(56878,69,9064.04,-7453.33,83.1557,0,0,3.20846,0,0),
(56878,70,9047.58,-7456.7,83.3916,10000,1622102,3.35768,0,0),(56878,71,9056.46,-7449.9,83.4217,0,0,0.510614,0,0),(56878,72,9066.85,-7449.36,83.2982,0,0,6.07124,0,0),
(56878,73,9075.27,-7452.77,83.1491,0,0,5.71781,0,0);
-- Link
DELETE FROM creature_linking WHERE guid = 56877;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(56877, 56878, 1+128+512);


