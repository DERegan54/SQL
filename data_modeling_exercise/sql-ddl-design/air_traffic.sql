

-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic


CREATE TABLE cities
(
  id SERIAL PRIMARY KEY,
  name TEXT,
  country TEXT
);

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  from_city_id INTEGER REFERENCES cities,
  to_city_id INTEGER REFERENCES cities
);


CREATE TABLE flights
(
  id SERIAL PRIMARY KEY,
  airline TEXT,
  ticket_id INTEGER REFERENCES tickets
);


CREATE TABLE passengers
(
  id SERIAL PRIMARY KEY, 
  first_name TEXT NOT NULL, 
  last_name TEXT NOT NULL, 
  flight_id INTEGER REFERENCES flights
);


INSERT INTO tickets
  (seat, departure, arrival, from_city_id, to_city_id)
VALUES
  ('33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', 'Washington DC','Seattle'),
  ('8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', 'Tokyo', 'London'),
  ('12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', 'Los Angeles', 'Las Vegas'),
  ('20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00', 'Seattle', 'Mexico City'),
  ('23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', 'Paris', 'Casablanca'),
  ('18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', 'Dubai', 'Beijing'),
  ('9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', 'New York', 'Charlotte' ),
  ('1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', 'Cedar Rapids',  'Chicago' ),
  ('32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', 'Charlotte',  'New Orleans'),
  ('10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', 'Sao Paolo', 'Santiago');