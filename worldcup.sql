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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
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
    name character varying(255)
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

INSERT INTO public.games VALUES (1, 1, 2, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (2, 3, 4, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 2, 4, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 1, 3, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 2, 7, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 4, 8, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 3, 9, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 1, 10, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 4, 11, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 8, 12, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 3, 13, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 9, 14, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 2, 15, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 7, 16, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 10, 17, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 1, 18, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 19, 18, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (18, 21, 9, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 18, 21, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 19, 9, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 21, 25, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 18, 3, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 9, 11, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 19, 1, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 9, 29, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 11, 10, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 1, 31, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 19, 32, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 21, 14, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 25, 34, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 18, 12, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 3, 36, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1, 'France');
INSERT INTO public.teams VALUES (2, 'Croatia');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'England');
INSERT INTO public.teams VALUES (7, 'Russia');
INSERT INTO public.teams VALUES (8, 'Sweden');
INSERT INTO public.teams VALUES (9, 'Brazil');
INSERT INTO public.teams VALUES (10, 'Uruguay');
INSERT INTO public.teams VALUES (11, 'Colombia');
INSERT INTO public.teams VALUES (12, 'Switzerland');
INSERT INTO public.teams VALUES (13, 'Japan');
INSERT INTO public.teams VALUES (14, 'Mexico');
INSERT INTO public.teams VALUES (15, 'Denmark');
INSERT INTO public.teams VALUES (16, 'Spain');
INSERT INTO public.teams VALUES (17, 'Portugal');
INSERT INTO public.teams VALUES (18, 'Argentina');
INSERT INTO public.teams VALUES (19, 'Germany');
INSERT INTO public.teams VALUES (21, 'Netherlands');
INSERT INTO public.teams VALUES (25, 'Costa Rica');
INSERT INTO public.teams VALUES (29, 'Chile');
INSERT INTO public.teams VALUES (31, 'Nigeria');
INSERT INTO public.teams VALUES (32, 'Algeria');
INSERT INTO public.teams VALUES (34, 'Greece');
INSERT INTO public.teams VALUES (36, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 100, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

