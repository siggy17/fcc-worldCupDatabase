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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (161, 2018, 'Final', 4, 2, 696, 697);
INSERT INTO public.games VALUES (162, 2018, 'Third Place', 2, 0, 698, 699);
INSERT INTO public.games VALUES (163, 2018, 'Semi-Final', 2, 1, 697, 699);
INSERT INTO public.games VALUES (164, 2018, 'Semi-Final', 1, 0, 696, 698);
INSERT INTO public.games VALUES (165, 2018, 'Quarter-Final', 3, 2, 697, 700);
INSERT INTO public.games VALUES (166, 2018, 'Quarter-Final', 2, 0, 699, 701);
INSERT INTO public.games VALUES (167, 2018, 'Quarter-Final', 2, 1, 698, 702);
INSERT INTO public.games VALUES (168, 2018, 'Quarter-Final', 2, 0, 696, 703);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 2, 1, 699, 704);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 1, 0, 701, 705);
INSERT INTO public.games VALUES (171, 2018, 'Eighth-Final', 3, 2, 698, 706);
INSERT INTO public.games VALUES (172, 2018, 'Eighth-Final', 2, 0, 702, 707);
INSERT INTO public.games VALUES (173, 2018, 'Eighth-Final', 2, 1, 697, 708);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 2, 1, 700, 709);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 2, 1, 703, 710);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 4, 3, 696, 711);
INSERT INTO public.games VALUES (177, 2014, 'Final', 1, 0, 712, 711);
INSERT INTO public.games VALUES (178, 2014, 'Third Place', 3, 0, 713, 702);
INSERT INTO public.games VALUES (179, 2014, 'Semi-Final', 1, 0, 711, 713);
INSERT INTO public.games VALUES (180, 2014, 'Semi-Final', 7, 1, 712, 702);
INSERT INTO public.games VALUES (181, 2014, 'Quarter-Final', 1, 0, 713, 714);
INSERT INTO public.games VALUES (182, 2014, 'Quarter-Final', 1, 0, 711, 698);
INSERT INTO public.games VALUES (183, 2014, 'Quarter-Final', 2, 1, 702, 704);
INSERT INTO public.games VALUES (184, 2014, 'Quarter-Final', 1, 0, 712, 696);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 2, 1, 702, 715);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 2, 0, 704, 703);
INSERT INTO public.games VALUES (187, 2014, 'Eighth-Final', 2, 0, 696, 716);
INSERT INTO public.games VALUES (188, 2014, 'Eighth-Final', 2, 1, 712, 717);
INSERT INTO public.games VALUES (189, 2014, 'Eighth-Final', 2, 1, 713, 707);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 2, 1, 714, 718);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 1, 0, 711, 705);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 2, 1, 698, 719);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (696, 'France');
INSERT INTO public.teams VALUES (697, 'Croatia');
INSERT INTO public.teams VALUES (698, 'Belgium');
INSERT INTO public.teams VALUES (699, 'England');
INSERT INTO public.teams VALUES (700, 'Russia');
INSERT INTO public.teams VALUES (701, 'Sweden');
INSERT INTO public.teams VALUES (702, 'Brazil');
INSERT INTO public.teams VALUES (703, 'Uruguay');
INSERT INTO public.teams VALUES (704, 'Colombia');
INSERT INTO public.teams VALUES (705, 'Switzerland');
INSERT INTO public.teams VALUES (706, 'Japan');
INSERT INTO public.teams VALUES (707, 'Mexico');
INSERT INTO public.teams VALUES (708, 'Denmark');
INSERT INTO public.teams VALUES (709, 'Spain');
INSERT INTO public.teams VALUES (710, 'Portugal');
INSERT INTO public.teams VALUES (711, 'Argentina');
INSERT INTO public.teams VALUES (712, 'Germany');
INSERT INTO public.teams VALUES (713, 'Netherlands');
INSERT INTO public.teams VALUES (714, 'Costa Rica');
INSERT INTO public.teams VALUES (715, 'Chile');
INSERT INTO public.teams VALUES (716, 'Nigeria');
INSERT INTO public.teams VALUES (717, 'Algeria');
INSERT INTO public.teams VALUES (718, 'Greece');
INSERT INTO public.teams VALUES (719, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 192, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 719, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

