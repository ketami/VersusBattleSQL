--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-11-03 19:54:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2194 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 186 (class 1259 OID 18888)
-- Name: serial; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE serial
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE serial OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 187 (class 1259 OID 18890)
-- Name: Battle; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Battle" (
    "NumberOfBattle" integer DEFAULT nextval('serial'::regclass) NOT NULL,
    "Part1" text NOT NULL,
    "Part2" text NOT NULL,
    "Winner" integer NOT NULL,
    "SupportLevel1" integer NOT NULL CHECK (("SupportLevel1" > 0) AND ("SupportLevel1" < 6)),
    "SupportLevel2" integer NOT NULL CHECK (("SupportLevel2" > 0) AND ("SupportLevel2" < 6)),
    CONSTRAINT "Battle_NumberOfBattle_check" CHECK (("NumberOfBattle" > 0)),
    CONSTRAINT "Battle_Winner_check" CHECK (("Winner" > 0) AND ("Winner" < 4))
);


ALTER TABLE "Battle" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 18918)
-- Name: BattleDate; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "BattleDate" (
    "Date" date NOT NULL,
    "NumberOfBattle" integer DEFAULT nextval('serial'::regclass) NOT NULL,
    CONSTRAINT "BattleDate_NumberOfBattle_check" CHECK (("NumberOfBattle" > 0))
);


ALTER TABLE "BattleDate" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 18925)
-- Name: BattlesSeason; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "BattlesSeason" (
    "SeasonNumber" integer NOT NULL,
    "NumberOfBattle" integer DEFAULT nextval('serial'::regclass) NOT NULL,
    CONSTRAINT "BattlesSeason_NumberOfBattle_check" CHECK (("NumberOfBattle" > 0))
);


ALTER TABLE "BattlesSeason" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 18901)
-- Name: Cities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Cities" (
    "Partname" text NOT NULL,
    "City" text NOT NULL
);


ALTER TABLE "Cities" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 18909)
-- Name: Connection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Connection" (
    "Partname" text NOT NULL,
    "NumberOfBattle" integer NOT NULL,
    CONSTRAINT "Connection_NumberOfBattle_check" CHECK (("NumberOfBattle" > 0))
);


ALTER TABLE "Connection" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 18878)
-- Name: Participants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Participants" (
    "Partname" text NOT NULL,
    "Name" text NOT NULL,
    "Surname" text NOT NULL,
    "Birthday" date NOT NULL,
    "A.k.a." text
);


ALTER TABLE "Participants" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 18932)
-- Name: Season; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Season" (
    "SeasonNumber" integer DEFAULT nextval('serial'::regclass) NOT NULL,
    "Place" text NOT NULL,
    "MC" text NOT NULL,
    "CamQ" integer,
    "Value" money NOT NULL,
    CONSTRAINT "Season_SeasonNumber_check" CHECK (("SeasonNumber" > 0))
);


ALTER TABLE "Season" OWNER TO postgres;

--
-- TOC entry 2183 (class 0 OID 18890)
-- Dependencies: 187
-- Data for Name: Battle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Battle" VALUES (1, 'Mytee Dee', 'Alphavite', 2, 0, 4);
INSERT INTO "Battle" VALUES (2, 'Redo', 'Hip Hop of Alone Old Woman', 2, 3, 3);
INSERT INTO "Battle" VALUES (3, 'Redo', 'Emio Official', 1, 3, 1);
INSERT INTO "Battle" VALUES (4, 'Lodoss', 'Redo', 1, 2, 2);
INSERT INTO "Battle" VALUES (5, 'Ernesto Shut Up', 'Alphavite', 1, 1, 1);
INSERT INTO "Battle" VALUES (6, 'Ernesto Shut Up', 'Mytee Dee', 2, 2, 2);
INSERT INTO "Battle" VALUES (7, 'Mytee Dee', 'Emio Official', 3, 0, 0);
INSERT INTO "Battle" VALUES (8, 'Alphavite', 'Redo', 1, 5, 4);
INSERT INTO "Battle" VALUES (9, 'Ernesto Shut Up', 'Lodoss', 1, 4, 1);
INSERT INTO "Battle" VALUES (10, 'Ernesto Shut Up', 'Alphavite', 2, 1, 3);
INSERT INTO "Battle" VALUES (11, 'Leha Cuprum', 'Buker D Fred', 2, 5, 4);
INSERT INTO "Battle" VALUES (12, 'MC Moonstar', 'Narek', 3, 1, 2);
INSERT INTO "Battle" VALUES (13, 'Rickey F', 'Sin', 1, 5, 2);
INSERT INTO "Battle" VALUES (14, 'Hip Hop of Alone Old Woman', 'Mlechniy', 3, 4, 4);
INSERT INTO "Battle" VALUES (15, 'MC Moonstar', 'Mlechniy', 2, 1, 4);
INSERT INTO "Battle" VALUES (16, 'Buker D Fred', 'Sin', 1, 5, 2);
INSERT INTO "Battle" VALUES (17, 'Narek', 'Hip Hop of Alone Old Woman', 1, 4, 4);
INSERT INTO "Battle" VALUES (18, 'Rickey F', 'Leha Cuprum', 1, 3, 1);
INSERT INTO "Battle" VALUES (19, 'Leha Cuprum', 'Sin', 1, 5, 0);
INSERT INTO "Battle" VALUES (20, 'Narek', 'Mlechniy', 2, 5, 5);
INSERT INTO "Battle" VALUES (21, 'Rickey F', 'Buker D Fred', 1, 3, 3);
INSERT INTO "Battle" VALUES (22, 'MC Moonstar', 'Hip Hop of Alone Old Woman', 2, 0, 2);
INSERT INTO "Battle" VALUES (23, 'Hip Hop of Alone Old Woman', 'Rickey F', 1, 3, 5);
INSERT INTO "Battle" VALUES (24, 'Buker D Fred', 'Mlechniy', 1, 4, 2);
INSERT INTO "Battle" VALUES (25, 'Hip Hop of Alone Old Woman', 'Buker D Fred', 1, 5, 5);


--
-- TOC entry 2186 (class 0 OID 18918)
-- Dependencies: 190
-- Data for Name: BattleDate; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "BattleDate" VALUES ('2014-05-28', 1);
INSERT INTO "BattleDate" VALUES ('2014-05-28', 2);
INSERT INTO "BattleDate" VALUES ('2014-07-05', 3);
INSERT INTO "BattleDate" VALUES ('2014-11-06', 4);
INSERT INTO "BattleDate" VALUES ('2014-12-31', 5);
INSERT INTO "BattleDate" VALUES ('2015-02-11', 6);
INSERT INTO "BattleDate" VALUES ('2015-04-23', 7);
INSERT INTO "BattleDate" VALUES ('2015-04-30', 8);
INSERT INTO "BattleDate" VALUES ('2015-05-06', 9);
INSERT INTO "BattleDate" VALUES ('2015-05-17', 10);
INSERT INTO "BattleDate" VALUES ('2015-11-19', 11);
INSERT INTO "BattleDate" VALUES ('2015-11-25', 12);
INSERT INTO "BattleDate" VALUES ('2015-12-02', 13);
INSERT INTO "BattleDate" VALUES ('2015-12-09', 14);
INSERT INTO "BattleDate" VALUES ('2015-12-16', 15);
INSERT INTO "BattleDate" VALUES ('2015-12-24', 16);
INSERT INTO "BattleDate" VALUES ('2015-12-28', 17);
INSERT INTO "BattleDate" VALUES ('2016-01-13', 18);
INSERT INTO "BattleDate" VALUES ('2016-01-27', 19);
INSERT INTO "BattleDate" VALUES ('2016-02-03', 20);
INSERT INTO "BattleDate" VALUES ('2016-02-10', 21);
INSERT INTO "BattleDate" VALUES ('2016-02-17', 22);
INSERT INTO "BattleDate" VALUES ('2016-03-13', 23);
INSERT INTO "BattleDate" VALUES ('2016-03-13', 24);
INSERT INTO "BattleDate" VALUES ('2016-05-26', 25);


--
-- TOC entry 2187 (class 0 OID 18925)
-- Dependencies: 191
-- Data for Name: BattlesSeason; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "BattlesSeason" VALUES (1, 1);
INSERT INTO "BattlesSeason" VALUES (3, 2);
INSERT INTO "BattlesSeason" VALUES (1, 3);
INSERT INTO "BattlesSeason" VALUES (1, 4);
INSERT INTO "BattlesSeason" VALUES (9, 5);
INSERT INTO "BattlesSeason" VALUES (1, 6);
INSERT INTO "BattlesSeason" VALUES (8, 7);
INSERT INTO "BattlesSeason" VALUES (6, 8);
INSERT INTO "BattlesSeason" VALUES (9, 9);
INSERT INTO "BattlesSeason" VALUES (7, 10);
INSERT INTO "BattlesSeason" VALUES (2, 11);
INSERT INTO "BattlesSeason" VALUES (2, 12);
INSERT INTO "BattlesSeason" VALUES (2, 13);
INSERT INTO "BattlesSeason" VALUES (2, 14);
INSERT INTO "BattlesSeason" VALUES (2, 15);
INSERT INTO "BattlesSeason" VALUES (7, 16);
INSERT INTO "BattlesSeason" VALUES (8, 17);
INSERT INTO "BattlesSeason" VALUES (6, 18);
INSERT INTO "BattlesSeason" VALUES (5, 19);
INSERT INTO "BattlesSeason" VALUES (4, 20);
INSERT INTO "BattlesSeason" VALUES (5, 21);
INSERT INTO "BattlesSeason" VALUES (2, 22);
INSERT INTO "BattlesSeason" VALUES (4, 23);
INSERT INTO "BattlesSeason" VALUES (3, 24);
INSERT INTO "BattlesSeason" VALUES (2, 25);


--
-- TOC entry 2184 (class 0 OID 18901)
-- Dependencies: 188
-- Data for Name: Cities; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Cities" VALUES ('Ernesto Shut Up', 'Voronezh');
INSERT INTO "Cities" VALUES ('Alphavite', 'Alma-Ati');
INSERT INTO "Cities" VALUES ('Mytee Dee', 'Moscow');
INSERT INTO "Cities" VALUES ('Lodoss', 'Murmansk');
INSERT INTO "Cities" VALUES ('Redo', 'Moscow');
INSERT INTO "Cities" VALUES ('Emio Official', 'Minsk');
INSERT INTO "Cities" VALUES ('Rickey F', 'Moscow');
INSERT INTO "Cities" VALUES ('Hip Hop of Alone Old Woman', 'Volgograd');
INSERT INTO "Cities" VALUES ('Leha Cuprum', 'Moscow');
INSERT INTO "Cities" VALUES ('MC Moonstar', 'Murmansk');
INSERT INTO "Cities" VALUES ('Sin', 'Moscow');
INSERT INTO "Cities" VALUES ('Mlechniy', 'Moscow');
INSERT INTO "Cities" VALUES ('Buker D Fred', 'Saint-Petersburg');
INSERT INTO "Cities" VALUES ('Narek', 'Moscow');


--
-- TOC entry 2185 (class 0 OID 18909)
-- Dependencies: 189
-- Data for Name: Connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Connection" VALUES ('Ernesto Shut Up', 5);
INSERT INTO "Connection" VALUES ('Ernesto Shut Up', 6);
INSERT INTO "Connection" VALUES ('Ernesto Shut Up', 9);
INSERT INTO "Connection" VALUES ('Ernesto Shut Up', 10);
INSERT INTO "Connection" VALUES ('Alphavite', 1);
INSERT INTO "Connection" VALUES ('Alphavite', 5);
INSERT INTO "Connection" VALUES ('Alphavite', 8);
INSERT INTO "Connection" VALUES ('Alphavite', 10);
INSERT INTO "Connection" VALUES ('Mytee Dee', 1);
INSERT INTO "Connection" VALUES ('Mytee Dee', 6);
INSERT INTO "Connection" VALUES ('Mytee Dee', 7);
INSERT INTO "Connection" VALUES ('Lodoss', 4);
INSERT INTO "Connection" VALUES ('Lodoss', 9);
INSERT INTO "Connection" VALUES ('Redo', 2);
INSERT INTO "Connection" VALUES ('Redo', 3);
INSERT INTO "Connection" VALUES ('Redo', 4);
INSERT INTO "Connection" VALUES ('Redo', 8);
INSERT INTO "Connection" VALUES ('Emio Official', 3);
INSERT INTO "Connection" VALUES ('Emio Official', 7);
INSERT INTO "Connection" VALUES ('Hip Hop of Alone Old Woman', 2);
INSERT INTO "Connection" VALUES ('Rickey F', 13);
INSERT INTO "Connection" VALUES ('Rickey F', 18);
INSERT INTO "Connection" VALUES ('Rickey F', 21);
INSERT INTO "Connection" VALUES ('Rickey F', 23);
INSERT INTO "Connection" VALUES ('Hip Hop of Alone Old Woman', 14);
INSERT INTO "Connection" VALUES ('Hip Hop of Alone Old Woman', 17);
INSERT INTO "Connection" VALUES ('Hip Hop of Alone Old Woman', 22);
INSERT INTO "Connection" VALUES ('Hip Hop of Alone Old Woman', 23);
INSERT INTO "Connection" VALUES ('Hip Hop of Alone Old Woman', 25);
INSERT INTO "Connection" VALUES ('Leha Cuprum', 11);
INSERT INTO "Connection" VALUES ('Leha Cuprum', 18);
INSERT INTO "Connection" VALUES ('Leha Cuprum', 19);
INSERT INTO "Connection" VALUES ('MC Moonstar', 12);
INSERT INTO "Connection" VALUES ('MC Moonstar', 15);
INSERT INTO "Connection" VALUES ('MC Moonstar', 22);
INSERT INTO "Connection" VALUES ('Sin', 13);
INSERT INTO "Connection" VALUES ('Sin', 16);
INSERT INTO "Connection" VALUES ('Sin', 19);
INSERT INTO "Connection" VALUES ('Mlechniy', 14);
INSERT INTO "Connection" VALUES ('Mlechniy', 15);
INSERT INTO "Connection" VALUES ('Mlechniy', 20);
INSERT INTO "Connection" VALUES ('Mlechniy', 24);
INSERT INTO "Connection" VALUES ('Buker D Fred', 11);
INSERT INTO "Connection" VALUES ('Buker D Fred', 16);
INSERT INTO "Connection" VALUES ('Buker D Fred', 21);
INSERT INTO "Connection" VALUES ('Buker D Fred', 24);
INSERT INTO "Connection" VALUES ('Buker D Fred', 25);
INSERT INTO "Connection" VALUES ('Narek', 12);
INSERT INTO "Connection" VALUES ('Narek', 17);
INSERT INTO "Connection" VALUES ('Narek', 20);


--
-- TOC entry 2181 (class 0 OID 18878)
-- Dependencies: 185
-- Data for Name: Participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Participants" VALUES ('Ernesto Shut Up', 'Dmitry', 'Romaschenko', '1989-04-24', NULL);
INSERT INTO "Participants" VALUES ('Alphavite', 'Nikita', 'Kurskeev', '1994-04-26', NULL);
INSERT INTO "Participants" VALUES ('Mytee Dee', 'Dmitry', 'Muteev', '1984-08-13', NULL);
INSERT INTO "Participants" VALUES ('Lodoss', 'Nikolay', 'Dukmas', '1990-09-14', NULL);
INSERT INTO "Participants" VALUES ('Redo', 'Nikita', 'Redov', '1993-06-17', NULL);
INSERT INTO "Participants" VALUES ('Emio Official', 'Emio', 'Official', '1981-08-05', NULL);
INSERT INTO "Participants" VALUES ('Rickey F', 'Gena', 'Farafonov', '1994-05-23', NULL);
INSERT INTO "Participants" VALUES ('Hip Hop of Alone Old Woman', 'Konstantin', 'Lopatin', '1994-01-04', 'Sever');
INSERT INTO "Participants" VALUES ('Leha Cuprum', 'Andrey', 'Kuzmin', '1989-09-11', 'Andrey Yarokobi');
INSERT INTO "Participants" VALUES ('MC Moonstar', 'Maxim', 'Zaharov', '1988-12-18', 'Zinoviy Gustava');
INSERT INTO "Participants" VALUES ('Sin', 'Daniil', 'Korobov', '1996-02-19', 'SINside');
INSERT INTO "Participants" VALUES ('Mlechniy', 'Ivan', 'Brednev', '1994-05-23', NULL);
INSERT INTO "Participants" VALUES ('Buker D Fred', 'Fedor', 'Ignatyev', '1992-11-20', 'Booker');
INSERT INTO "Participants" VALUES ('Narek', 'Narik', 'Petrosyan', '1991-07-01', NULL);


--
-- TOC entry 2188 (class 0 OID 18932)
-- Dependencies: 192
-- Data for Name: Season; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Season" VALUES (1, '1703', 'Sasha', 4, '1 000,00р.');
INSERT INTO "Season" VALUES (2, '1703', 'Kingsta', 4, '1 400,00р.');
INSERT INTO "Season" VALUES (3, 'Alpha', 'Kingsta', 3, '1 200,00р.');
INSERT INTO "Season" VALUES (4, '1703', 'Sasha', 2, '1 800,00р.');
INSERT INTO "Season" VALUES (5, 'Griboyedov', 'Kingsta', 3, '1 700,00р.');
INSERT INTO "Season" VALUES (6, 'Griboyedov', 'Sasha', 5, '2 500,00р.');
INSERT INTO "Season" VALUES (7, 'Alpha', '4EuHu', 6, '2 300,00р.');
INSERT INTO "Season" VALUES (8, 'Griboyedov', '4EuHu', 6, '2 000,00р.');
INSERT INTO "Season" VALUES (9, 'Alpha', 'Sasha', 8, '3 000,00р.');


--
-- TOC entry 2195 (class 0 OID 0)
-- Dependencies: 186
-- Name: serial; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial', 9, true);


--
-- TOC entry 2041 (class 2606 OID 18887)
-- Name: Participants Participants_A.k.a._key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Participants"
    ADD CONSTRAINT "Participants_A.k.a._key" UNIQUE ("A.k.a.");


--
-- TOC entry 2045 (class 2606 OID 18900)
-- Name: Battle battle_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Battle"
    ADD CONSTRAINT battle_pk PRIMARY KEY ("NumberOfBattle");


--
-- TOC entry 2051 (class 2606 OID 18924)
-- Name: BattleDate battledate_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "BattleDate"
    ADD CONSTRAINT battledate_pk PRIMARY KEY ("NumberOfBattle");


--
-- TOC entry 2053 (class 2606 OID 18931)
-- Name: BattlesSeason battlesseason_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "BattlesSeason"
    ADD CONSTRAINT battlesseason_pk PRIMARY KEY ("NumberOfBattle");


--
-- TOC entry 2047 (class 2606 OID 18908)
-- Name: Cities cities_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Cities"
    ADD CONSTRAINT cities_pk PRIMARY KEY ("Partname");


--
-- TOC entry 2049 (class 2606 OID 18917)
-- Name: Connection connection_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Connection"
    ADD CONSTRAINT connection_pk PRIMARY KEY ("Partname", "NumberOfBattle");


--
-- TOC entry 2043 (class 2606 OID 18885)
-- Name: Participants participants_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Participants"
    ADD CONSTRAINT participants_pk PRIMARY KEY ("Partname");


--
-- TOC entry 2055 (class 2606 OID 18941)
-- Name: Season season_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Season"
    ADD CONSTRAINT season_pk PRIMARY KEY ("SeasonNumber");


--
-- TOC entry 2062 (class 2606 OID 18972)
-- Name: BattleDate BattleDate_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "BattleDate"
    ADD CONSTRAINT "BattleDate_fk0" FOREIGN KEY ("NumberOfBattle") REFERENCES "Battle"("NumberOfBattle");


--
-- TOC entry 2057 (class 2606 OID 18947)
-- Name: Battle Battle_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Battle"
    ADD CONSTRAINT "Battle_fk0" FOREIGN KEY ("NumberOfBattle") REFERENCES "BattlesSeason"("NumberOfBattle");


--
-- TOC entry 2058 (class 2606 OID 18952)
-- Name: Battle Battle_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Battle"
    ADD CONSTRAINT "Battle_fk1" FOREIGN KEY ("Part1") REFERENCES "Participants"("Partname");


--
-- TOC entry 2059 (class 2606 OID 18957)
-- Name: Battle Battle_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Battle"
    ADD CONSTRAINT "Battle_fk2" FOREIGN KEY ("Part2") REFERENCES "Participants"("Partname");


--
-- TOC entry 2063 (class 2606 OID 18977)
-- Name: BattlesSeason BattlesSeason_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "BattlesSeason"
    ADD CONSTRAINT "BattlesSeason_fk0" FOREIGN KEY ("SeasonNumber") REFERENCES "Season"("SeasonNumber");


--
-- TOC entry 2060 (class 2606 OID 18962)
-- Name: Connection Connection_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Connection"
    ADD CONSTRAINT "Connection_fk0" FOREIGN KEY ("Partname") REFERENCES "Participants"("Partname");


--
-- TOC entry 2061 (class 2606 OID 18967)
-- Name: Connection Connection_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Connection"
    ADD CONSTRAINT "Connection_fk1" FOREIGN KEY ("NumberOfBattle") REFERENCES "Battle"("NumberOfBattle");


--
-- TOC entry 2056 (class 2606 OID 18942)
-- Name: Participants Participants_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Participants"
    ADD CONSTRAINT "Participants_fk0" FOREIGN KEY ("Partname") REFERENCES "Cities"("Partname");


-- Completed on 2017-11-03 19:54:39

--
-- PostgreSQL database dump complete
--

