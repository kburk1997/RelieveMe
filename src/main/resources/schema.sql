DROP TABLE IF EXISTS buildings;
CREATE TABLE buildings
(
    name character varying(256) NOT NULL,
    region character varying(256) NOT NULL,
    abbreviation character varying(256),
    PRIMARY KEY (name)
)
WITH (
    OIDS = FALSE
);