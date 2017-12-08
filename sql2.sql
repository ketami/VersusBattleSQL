--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-12-08 06:31:25

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2166 (class 0 OID 24912)
-- Dependencies: 190
-- Data for Name: AlternativeNames; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "AlternativeNames" VALUES ('Hip Hop of Alone Old Woman', 'Sever');
INSERT INTO "AlternativeNames" VALUES ('Leha Cuprum', 'Andrey Yarokobi');
INSERT INTO "AlternativeNames" VALUES ('MC Moonstar', 'Zinoviy Gustava');
INSERT INTO "AlternativeNames" VALUES ('Buker D Fred', 'Booker');
INSERT INTO "AlternativeNames" VALUES ('Sin', 'SINside');
INSERT INTO "AlternativeNames" VALUES ('Buker D Fred', 'Antihype');


--
-- TOC entry 2163 (class 0 OID 24883)
-- Dependencies: 187
-- Data for Name: Battle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Battle" VALUES (1, 'Mytee Dee', 'Alphavite', 2, 0, 4, 1, '2014-05-28');
INSERT INTO "Battle" VALUES (2, 'Redo', 'Hip Hop of Alone Old Woman', 2, 3, 3, 3, '2014-05-28');
INSERT INTO "Battle" VALUES (3, 'Redo', 'Emio Official', 1, 3, 1, 1, '2014-07-05');
INSERT INTO "Battle" VALUES (4, 'Lodoss', 'Redo', 1, 2, 2, 1, '2014-11-06');
INSERT INTO "Battle" VALUES (5, 'Ernesto Shut Up', 'Alphavite', 1, 1, 1, 9, '2014-12-31');
INSERT INTO "Battle" VALUES (6, 'Ernesto Shut Up', 'Mytee Dee', 2, 2, 2, 1, '2015-02-11');
INSERT INTO "Battle" VALUES (7, 'Mytee Dee', 'Emio Official', 3, 0, 0, 8, '2015-04-23');
INSERT INTO "Battle" VALUES (8, 'Alphavite', 'Redo', 1, 5, 4, 6, '2015-04-30');
INSERT INTO "Battle" VALUES (9, 'Ernesto Shut Up', 'Lodoss', 1, 4, 1, 9, '2015-05-06');
INSERT INTO "Battle" VALUES (10, 'Ernesto Shut Up', 'Alphavite', 2, 1, 3, 7, '2015-05-17');
INSERT INTO "Battle" VALUES (11, 'Leha Cuprum', 'Buker D Fred', 2, 5, 4, 2, '2015-11-19');
INSERT INTO "Battle" VALUES (12, 'MC Moonstar', 'Narek', 3, 1, 2, 2, '2015-11-25');
INSERT INTO "Battle" VALUES (13, 'Rickey F', 'Sin', 1, 5, 2, 2, '2015-12-02');
INSERT INTO "Battle" VALUES (14, 'Hip Hop of Alone Old Woman', 'Mlechniy', 3, 4, 4, 2, '2015-12-09');
INSERT INTO "Battle" VALUES (15, 'MC Moonstar', 'Mlechniy', 2, 1, 4, 2, '2015-12-16');
INSERT INTO "Battle" VALUES (16, 'Buker D Fred', 'Sin', 1, 5, 2, 7, '2015-12-24');
INSERT INTO "Battle" VALUES (17, 'Narek', 'Hip Hop of Alone Old Woman', 1, 4, 4, 8, '2015-12-28');
INSERT INTO "Battle" VALUES (18, 'Rickey F', 'Leha Cuprum', 1, 3, 1, 6, '2016-01-13');
INSERT INTO "Battle" VALUES (19, 'Leha Cuprum', 'Sin', 1, 5, 0, 5, '2016-01-27');
INSERT INTO "Battle" VALUES (20, 'Narek', 'Mlechniy', 2, 5, 5, 4, '2016-02-03');
INSERT INTO "Battle" VALUES (21, 'Rickey F', 'Buker D Fred', 1, 3, 3, 5, '2016-02-10');
INSERT INTO "Battle" VALUES (22, 'MC Moonstar', 'Hip Hop of Alone Old Woman', 2, 0, 2, 2, '2016-02-17');
INSERT INTO "Battle" VALUES (23, 'Hip Hop of Alone Old Woman', 'Rickey F', 1, 3, 5, 4, '2016-03-13');
INSERT INTO "Battle" VALUES (24, 'Buker D Fred', 'Mlechniy', 1, 4, 2, 3, '2016-03-13');
INSERT INTO "Battle" VALUES (25, 'Hip Hop of Alone Old Woman', 'Buker D Fred', 1, 5, 5, 2, '2016-05-26');


--
-- TOC entry 2164 (class 0 OID 24895)
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
INSERT INTO "Cities" VALUES ('Rickey F', 'Alma-Ati');
INSERT INTO "Cities" VALUES ('Buker D Fred', 'SPb');
INSERT INTO "Cities" VALUES ('Hip Hop of Alone Old Woman', 'Moscow');
INSERT INTO "Cities" VALUES ('Leha Cuprum', 'Bishkek');
INSERT INTO "Cities" VALUES ('Emio Official', 'Moscow');


--
-- TOC entry 2161 (class 0 OID 24873)
-- Dependencies: 185
-- Data for Name: Participants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Participants" VALUES ('Ernesto Shut Up', 'Dmitry', 'Romaschenko', '1989-04-24');
INSERT INTO "Participants" VALUES ('Alphavite', 'Nikita', 'Kurskeev', '1994-04-26');
INSERT INTO "Participants" VALUES ('Mytee Dee', 'Dmitry', 'Muteev', '1984-08-13');
INSERT INTO "Participants" VALUES ('Lodoss', 'Nikolay', 'Dukmas', '1990-09-14');
INSERT INTO "Participants" VALUES ('Redo', 'Nikita', 'Redov', '1993-06-17');
INSERT INTO "Participants" VALUES ('Emio Official', 'Emio', 'Official', '1981-08-05');
INSERT INTO "Participants" VALUES ('Rickey F', 'Gena', 'Farafonov', '1994-05-23');
INSERT INTO "Participants" VALUES ('Hip Hop of Alone Old Woman', 'Konstantin', 'Lopatin', '1994-01-04');
INSERT INTO "Participants" VALUES ('Leha Cuprum', 'Andrey', 'Kuzmin', '1989-09-11');
INSERT INTO "Participants" VALUES ('MC Moonstar', 'Maxim', 'Zaharov', '1988-12-18');
INSERT INTO "Participants" VALUES ('Sin', 'Daniil', 'Korobov', '1996-02-19');
INSERT INTO "Participants" VALUES ('Mlechniy', 'Ivan', 'Brednev', '1994-05-23');
INSERT INTO "Participants" VALUES ('Buker D Fred', 'Fedor', 'Ignatyev', '1992-11-20');
INSERT INTO "Participants" VALUES ('Narek', 'Narik', 'Petrosyan', '1991-07-01');


--
-- TOC entry 2165 (class 0 OID 24903)
-- Dependencies: 189
-- Data for Name: Season; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "Season" VALUES (1, '1703', 'Sasha', 4, 1000);
INSERT INTO "Season" VALUES (2, '1703', 'Kingsta', 4, 1400);
INSERT INTO "Season" VALUES (3, 'Alpha', 'Kingsta', 3, 1200);
INSERT INTO "Season" VALUES (4, '1703', 'Sasha', 2, 1800);
INSERT INTO "Season" VALUES (5, 'Griboyedov', 'Kingsta', 3, 1700);
INSERT INTO "Season" VALUES (6, 'Griboyedov', 'Sasha', 5, 2500);
INSERT INTO "Season" VALUES (7, 'Alpha', '4EuHu', 6, 2300);
INSERT INTO "Season" VALUES (8, 'Griboyedov', '4EuHu', 6, 2000);
INSERT INTO "Season" VALUES (9, 'Alpha', 'Sasha', 8, 3000);


--
-- TOC entry 2173 (class 0 OID 0)
-- Dependencies: 186
-- Name: serial; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('serial', 9, true);


-- Completed on 2017-12-08 06:31:27

--
-- PostgreSQL database dump complete
--

