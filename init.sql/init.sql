CREATE DATABASE greenlight;
CREATE USER greenlight WITH PASSWORD 'greenlight';
CREATE EXTENSION IF NOT EXISTS citext;
ALTER DATABASE greenlight OWNER TO greenlight;
