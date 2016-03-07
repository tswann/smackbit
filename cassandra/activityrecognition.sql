
/* device_id, activity: Partition key
*  timestamp: Clustering column
*  activity: training label
*/
CREATE TABLE activityrecognition (
  device_id text,
  activity text,
  timestamp bigint,
  x double, y double, z double,
  PRIMARY KEY ((device_id, activity), timestamp)
  WITH CLUSTERING ORDER BY (timestamp, DESC);
);
