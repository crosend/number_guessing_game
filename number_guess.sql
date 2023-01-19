--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guessing_game;
--
-- Name: number_guessing_game; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guessing_game WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guessing_game OWNER TO freecodecamp;

\connect number_guessing_game

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: guesses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.guesses (
    game_id integer,
    username character varying(22),
    guess integer
);


ALTER TABLE public.guesses OWNER TO freecodecamp;

--
-- Data for Name: guesses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.guesses VALUES (1, 'user_1674138760026', 310);
INSERT INTO public.guesses VALUES (2, 'user_1674138760026', 76);
INSERT INTO public.guesses VALUES (3, 'user_1674138760025', 615);
INSERT INTO public.guesses VALUES (4, 'user_1674138760025', 913);
INSERT INTO public.guesses VALUES (5, 'user_1674138760026', 862);
INSERT INTO public.guesses VALUES (6, 'user_1674138760026', 750);
INSERT INTO public.guesses VALUES (7, 'user_1674138760026', 835);
INSERT INTO public.guesses VALUES (8, 'user_1674140605323', 220);
INSERT INTO public.guesses VALUES (9, 'user_1674140605323', 400);
INSERT INTO public.guesses VALUES (10, 'user_1674140605322', 907);
INSERT INTO public.guesses VALUES (11, 'user_1674140605322', 852);
INSERT INTO public.guesses VALUES (12, 'user_1674140605323', 906);
INSERT INTO public.guesses VALUES (13, 'user_1674140605323', 641);
INSERT INTO public.guesses VALUES (14, 'user_1674140605323', 176);
INSERT INTO public.guesses VALUES (15, 'user_1674140659980', 366);
INSERT INTO public.guesses VALUES (16, 'user_1674140659980', 255);
INSERT INTO public.guesses VALUES (17, 'user_1674140659979', 529);
INSERT INTO public.guesses VALUES (18, 'user_1674140659979', 418);
INSERT INTO public.guesses VALUES (19, 'user_1674140659980', 971);
INSERT INTO public.guesses VALUES (20, 'user_1674140659980', 303);
INSERT INTO public.guesses VALUES (21, 'user_1674140659980', 933);
INSERT INTO public.guesses VALUES (22, 'user_1674140700929', 501);
INSERT INTO public.guesses VALUES (23, 'user_1674140700929', 240);
INSERT INTO public.guesses VALUES (24, 'user_1674140700928', 47);
INSERT INTO public.guesses VALUES (25, 'user_1674140700928', 235);
INSERT INTO public.guesses VALUES (26, 'user_1674140700929', 115);
INSERT INTO public.guesses VALUES (27, 'user_1674140700929', 178);
INSERT INTO public.guesses VALUES (28, 'user_1674140700929', 628);
INSERT INTO public.guesses VALUES (29, 'user_1674140724423', 626);
INSERT INTO public.guesses VALUES (30, 'user_1674140724423', 753);
INSERT INTO public.guesses VALUES (31, 'user_1674140724422', 357);
INSERT INTO public.guesses VALUES (32, 'user_1674140724422', 720);
INSERT INTO public.guesses VALUES (33, 'user_1674140724423', 159);
INSERT INTO public.guesses VALUES (34, 'user_1674140724423', 769);
INSERT INTO public.guesses VALUES (35, 'user_1674140724423', 354);
INSERT INTO public.guesses VALUES (36, 'user_1674140731130', 178);
INSERT INTO public.guesses VALUES (37, 'user_1674140731130', 241);
INSERT INTO public.guesses VALUES (38, 'user_1674140731129', 863);
INSERT INTO public.guesses VALUES (39, 'user_1674140731129', 518);
INSERT INTO public.guesses VALUES (40, 'user_1674140731130', 503);
INSERT INTO public.guesses VALUES (41, 'user_1674140731130', 517);
INSERT INTO public.guesses VALUES (42, 'user_1674140731130', 639);
INSERT INTO public.guesses VALUES (43, 'user_1674140787325', 894);
INSERT INTO public.guesses VALUES (44, 'user_1674140787325', 566);
INSERT INTO public.guesses VALUES (45, 'user_1674140787324', 304);
INSERT INTO public.guesses VALUES (46, 'user_1674140787324', 842);
INSERT INTO public.guesses VALUES (47, 'user_1674140787325', 407);
INSERT INTO public.guesses VALUES (48, 'user_1674140787325', 883);
INSERT INTO public.guesses VALUES (49, 'user_1674140787325', 523);
INSERT INTO public.guesses VALUES (50, 'user_1674140851100', 282);
INSERT INTO public.guesses VALUES (51, 'user_1674140851100', 460);
INSERT INTO public.guesses VALUES (52, 'user_1674140851099', 896);
INSERT INTO public.guesses VALUES (53, 'user_1674140851099', 37);
INSERT INTO public.guesses VALUES (54, 'user_1674140851100', 796);
INSERT INTO public.guesses VALUES (55, 'user_1674140851100', 260);
INSERT INTO public.guesses VALUES (56, 'user_1674140851100', 932);
INSERT INTO public.guesses VALUES (57, 'user_1674140855530', 575);
INSERT INTO public.guesses VALUES (58, 'user_1674140855530', 465);
INSERT INTO public.guesses VALUES (59, 'user_1674140855529', 901);
INSERT INTO public.guesses VALUES (60, 'user_1674140855529', 481);
INSERT INTO public.guesses VALUES (61, 'user_1674140855530', 143);
INSERT INTO public.guesses VALUES (62, 'user_1674140855530', 466);
INSERT INTO public.guesses VALUES (63, 'user_1674140855530', 508);
INSERT INTO public.guesses VALUES (64, 'user_1674140859049', 973);
INSERT INTO public.guesses VALUES (65, 'user_1674140859049', 790);
INSERT INTO public.guesses VALUES (66, 'user_1674140859048', 950);
INSERT INTO public.guesses VALUES (67, 'user_1674140859048', 651);
INSERT INTO public.guesses VALUES (68, 'user_1674140859049', 951);
INSERT INTO public.guesses VALUES (69, 'user_1674140859049', 884);
INSERT INTO public.guesses VALUES (70, 'user_1674140859049', 93);
INSERT INTO public.guesses VALUES (71, 'user_1674141456141', 58);
INSERT INTO public.guesses VALUES (72, 'user_1674141456141', 630);
INSERT INTO public.guesses VALUES (73, 'user_1674141456140', 432);
INSERT INTO public.guesses VALUES (74, 'user_1674141456140', 516);
INSERT INTO public.guesses VALUES (75, 'user_1674141456141', 841);
INSERT INTO public.guesses VALUES (76, 'user_1674141456141', 30);
INSERT INTO public.guesses VALUES (77, 'user_1674141456141', 49);


--
-- PostgreSQL database dump complete
--

