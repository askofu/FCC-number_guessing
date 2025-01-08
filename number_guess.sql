--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1736317442150', 0, 0);
INSERT INTO public.users VALUES (3, 'user_1736317442149', 0, 0);
INSERT INTO public.users VALUES (8, 'Mr Cheng', 0, 0);
INSERT INTO public.users VALUES (9, 'BEN', 0, 0);
INSERT INTO public.users VALUES (11, 'user_1736318268611', 0, 0);
INSERT INTO public.users VALUES (12, 'user_1736318268610', 0, 0);
INSERT INTO public.users VALUES (28, 'user_1736319876984', 2, 54);
INSERT INTO public.users VALUES (85, 'user_1736323247757', 5, 151);
INSERT INTO public.users VALUES (27, 'user_1736319876985', 5, 52);
INSERT INTO public.users VALUES (14, 'user_1736318799627', 1, 746);
INSERT INTO public.users VALUES (44, 'user_1736320471602', 2, 361);
INSERT INTO public.users VALUES (13, 'user_1736318799628', 1, 870);
INSERT INTO public.users VALUES (76, 'user_1736322652447', 2, 406);
INSERT INTO public.users VALUES (16, 'user_1736318838488', 1, 686);
INSERT INTO public.users VALUES (30, 'user_1736319915353', 2, 220);
INSERT INTO public.users VALUES (43, 'user_1736320471603', 5, 322);
INSERT INTO public.users VALUES (15, 'user_1736318838489', 1, 996);
INSERT INTO public.users VALUES (29, 'user_1736319915354', 5, 50);
INSERT INTO public.users VALUES (18, 'user_1736318919977', 2, 358);
INSERT INTO public.users VALUES (62, 'user_1736321806279', 2, 357);
INSERT INTO public.users VALUES (17, 'user_1736318919978', 5, 71);
INSERT INTO public.users VALUES (32, 'user_1736319992193', 2, 276);
INSERT INTO public.users VALUES (20, 'user_1736319057557', 2, 400);
INSERT INTO public.users VALUES (46, 'user_1736320479190', 2, 206);
INSERT INTO public.users VALUES (31, 'user_1736319992194', 5, 90);
INSERT INTO public.users VALUES (19, 'user_1736319057558', 5, 26);
INSERT INTO public.users VALUES (61, 'user_1736321806280', 5, 293);
INSERT INTO public.users VALUES (22, 'user_1736319454968', 2, 486);
INSERT INTO public.users VALUES (45, 'user_1736320479191', 5, 301);
INSERT INTO public.users VALUES (21, 'user_1736319454969', 5, 168);
INSERT INTO public.users VALUES (34, 'user_1736320034192', 2, 27);
INSERT INTO public.users VALUES (75, 'user_1736322652448', 5, 272);
INSERT INTO public.users VALUES (24, 'user_1736319555734', 2, 207);
INSERT INTO public.users VALUES (33, 'user_1736320034193', 5, 29);
INSERT INTO public.users VALUES (23, 'user_1736319555735', 5, 113);
INSERT INTO public.users VALUES (26, 'user_1736319584988', 2, 85);
INSERT INTO public.users VALUES (48, 'user_1736320838324', 2, 382);
INSERT INTO public.users VALUES (36, 'user_1736320157833', 2, 150);
INSERT INTO public.users VALUES (25, 'user_1736319584989', 5, 217);
INSERT INTO public.users VALUES (64, 'user_1736321828216', 2, 83);
INSERT INTO public.users VALUES (35, 'user_1736320157834', 5, 204);
INSERT INTO public.users VALUES (47, 'user_1736320838325', 5, 50);
INSERT INTO public.users VALUES (38, 'user_1736320194963', 2, 396);
INSERT INTO public.users VALUES (37, 'user_1736320194964', 5, 81);
INSERT INTO public.users VALUES (63, 'user_1736321828217', 5, 219);
INSERT INTO public.users VALUES (50, 'user_1736320842911', 2, 242);
INSERT INTO public.users VALUES (40, 'user_1736320214268', 2, 573);
INSERT INTO public.users VALUES (49, 'user_1736320842912', 5, 163);
INSERT INTO public.users VALUES (39, 'user_1736320214269', 5, 6);
INSERT INTO public.users VALUES (78, 'user_1736322714993', 2, 901);
INSERT INTO public.users VALUES (88, 'user_1736323290615', 2, 441);
INSERT INTO public.users VALUES (42, 'user_1736320304604', 2, 275);
INSERT INTO public.users VALUES (66, 'user_1736322017498', 2, 132);
INSERT INTO public.users VALUES (41, 'user_1736320304605', 5, 293);
INSERT INTO public.users VALUES (52, 'user_1736320893664', 2, 624);
INSERT INTO public.users VALUES (102, 'user_1736323813957', 2, 298);
INSERT INTO public.users VALUES (77, 'user_1736322714994', 5, 50);
INSERT INTO public.users VALUES (51, 'user_1736320893665', 5, 255);
INSERT INTO public.users VALUES (65, 'user_1736322017499', 5, 132);
INSERT INTO public.users VALUES (54, 'user_1736321016490', 2, 710);
INSERT INTO public.users VALUES (96, 'user_1736323748522', 2, 322);
INSERT INTO public.users VALUES (53, 'user_1736321016491', 5, 205);
INSERT INTO public.users VALUES (87, 'user_1736323290616', 5, 212);
INSERT INTO public.users VALUES (68, 'user_1736322078878', 2, 94);
INSERT INTO public.users VALUES (56, 'user_1736321206780', 2, 938);
INSERT INTO public.users VALUES (67, 'user_1736322078879', 5, 214);
INSERT INTO public.users VALUES (55, 'user_1736321206781', 5, 479);
INSERT INTO public.users VALUES (80, 'user_1736322792656', 2, 66);
INSERT INTO public.users VALUES (105, 'user_1736323925633', 5, 375);
INSERT INTO public.users VALUES (58, 'user_1736321352532', 2, 317);
INSERT INTO public.users VALUES (57, 'user_1736321352533', 5, 53);
INSERT INTO public.users VALUES (70, 'user_1736322109045', 2, 584);
INSERT INTO public.users VALUES (79, 'user_1736322792657', 5, 17);
INSERT INTO public.users VALUES (60, 'user_1736321692952', 2, 121);
INSERT INTO public.users VALUES (69, 'user_1736322109046', 5, 127);
INSERT INTO public.users VALUES (59, 'user_1736321692953', 5, 118);
INSERT INTO public.users VALUES (95, 'user_1736323748523', 5, 65);
INSERT INTO public.users VALUES (72, 'user_1736322154826', 2, 754);
INSERT INTO public.users VALUES (90, 'user_1736323403126', 2, 247);
INSERT INTO public.users VALUES (82, 'user_1736323126872', 2, 237);
INSERT INTO public.users VALUES (71, 'user_1736322154827', 5, 160);
INSERT INTO public.users VALUES (101, 'user_1736323813958', 5, 74);
INSERT INTO public.users VALUES (81, 'user_1736323126873', 5, 316);
INSERT INTO public.users VALUES (74, 'user_1736322496844', 2, 77);
INSERT INTO public.users VALUES (89, 'user_1736323403127', 5, 425);
INSERT INTO public.users VALUES (73, 'user_1736322496845', 5, 236);
INSERT INTO public.users VALUES (84, 'user_1736323215152', 2, 19);
INSERT INTO public.users VALUES (83, 'user_1736323215153', 5, 201);
INSERT INTO public.users VALUES (92, 'user_1736323681759', 2, 202);
INSERT INTO public.users VALUES (98, 'user_1736323753599', 2, 857);
INSERT INTO public.users VALUES (109, 'user_1736324028316', 5, 169);
INSERT INTO public.users VALUES (86, 'user_1736323247756', 2, 337);
INSERT INTO public.users VALUES (91, 'user_1736323681760', 5, 155);
INSERT INTO public.users VALUES (97, 'user_1736323753600', 5, 82);
INSERT INTO public.users VALUES (94, 'user_1736323691484', 2, 160);
INSERT INTO public.users VALUES (104, 'user_1736323865516', 2, 212);
INSERT INTO public.users VALUES (93, 'user_1736323691485', 5, 410);
INSERT INTO public.users VALUES (100, 'user_1736323780624', 2, 319);
INSERT INTO public.users VALUES (108, 'user_1736323929516', 2, 71);
INSERT INTO public.users VALUES (103, 'user_1736323865517', 5, 64);
INSERT INTO public.users VALUES (99, 'user_1736323780625', 5, 332);
INSERT INTO public.users VALUES (119, 'user_1736324339261', 5, 488);
INSERT INTO public.users VALUES (107, 'user_1736323929517', 5, 409);
INSERT INTO public.users VALUES (106, 'user_1736323925632', 2, 437);
INSERT INTO public.users VALUES (114, 'user_1736324127484', 2, 125);
INSERT INTO public.users VALUES (116, 'user_1736324143036', 2, 579);
INSERT INTO public.users VALUES (112, 'user_1736324030988', 2, 634);
INSERT INTO public.users VALUES (110, 'user_1736324028315', 2, 267);
INSERT INTO public.users VALUES (113, 'user_1736324127485', 5, 215);
INSERT INTO public.users VALUES (111, 'user_1736324030989', 5, 18);
INSERT INTO public.users VALUES (115, 'user_1736324143037', 5, 139);
INSERT INTO public.users VALUES (118, 'user_1736324184313', 2, 6);
INSERT INTO public.users VALUES (117, 'user_1736324184314', 5, 80);
INSERT INTO public.users VALUES (120, 'user_1736324339260', 2, 152);
INSERT INTO public.users VALUES (121, 'user_1736324399012', 5, 117);
INSERT INTO public.users VALUES (122, 'user_1736324399011', 2, 570);
INSERT INTO public.users VALUES (123, 'user_1736324451681', 5, 152);
INSERT INTO public.users VALUES (124, 'user_1736324451680', 2, 502);
INSERT INTO public.users VALUES (10, 'Ben', 6, 0);
INSERT INTO public.users VALUES (125, 'user_1736324477811', 5, 86);
INSERT INTO public.users VALUES (126, 'user_1736324477810', 2, 381);
INSERT INTO public.users VALUES (127, 'user_1736324673337', 5, 2);
INSERT INTO public.users VALUES (128, 'user_1736324673336', 2, 346);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 128, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

