
/* device_id, date: Partition key
*  timestamp: Clustering column
*/
CREATE TABLE accelerometer (
  device_id text,
  date text,
  timestamp bigint,
  x double, y double, z double,
  PRIMARY KEY ((device_id, date), timestamp)
  WITH CLUSTERING ORDER BY (timestamp, DESC);
);
