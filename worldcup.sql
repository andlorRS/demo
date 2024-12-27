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
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer,
    opponent_id integer
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
    name text NOT NULL
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

INSERT INTO public.games VALUES (78, 2018, 'Final', 4, 2, 159, 160);
INSERT INTO public.games VALUES (79, 2018, 'Third Place', 2, 0, 161, 162);
INSERT INTO public.games VALUES (80, 2018, 'Semi-Final', 2, 1, 160, 162);
INSERT INTO public.games VALUES (81, 2018, 'Semi-Final', 1, 0, 159, 161);
INSERT INTO public.games VALUES (82, 2018, 'Quarter-Final', 3, 2, 160, 163);
INSERT INTO public.games VALUES (83, 2018, 'Quarter-Final', 2, 0, 162, 164);
INSERT INTO public.games VALUES (84, 2018, 'Quarter-Final', 2, 1, 161, 165);
INSERT INTO public.games VALUES (85, 2018, 'Quarter-Final', 2, 0, 159, 166);
INSERT INTO public.games VALUES (86, 2018, 'Eighth-Final', 2, 1, 162, 167);
INSERT INTO public.games VALUES (87, 2018, 'Eighth-Final', 1, 0, 164, 168);
INSERT INTO public.games VALUES (88, 2018, 'Eighth-Final', 3, 2, 161, 169);
INSERT INTO public.games VALUES (89, 2018, 'Eighth-Final', 2, 0, 165, 170);
INSERT INTO public.games VALUES (90, 2018, 'Eighth-Final', 2, 1, 160, 171);
INSERT INTO public.games VALUES (91, 2018, 'Eighth-Final', 2, 1, 163, 172);
INSERT INTO public.games VALUES (92, 2018, 'Eighth-Final', 2, 1, 166, 173);
INSERT INTO public.games VALUES (93, 2018, 'Eighth-Final', 4, 3, 159, 174);
INSERT INTO public.games VALUES (94, 2014, 'Final', 1, 0, 175, 174);
INSERT INTO public.games VALUES (95, 2014, 'Third Place', 3, 0, 176, 165);
INSERT INTO public.games VALUES (96, 2014, 'Semi-Final', 1, 0, 174, 176);
INSERT INTO public.games VALUES (97, 2014, 'Semi-Final', 7, 1, 175, 165);
INSERT INTO public.games VALUES (98, 2014, 'Quarter-Final', 1, 0, 176, 177);
INSERT INTO public.games VALUES (99, 2014, 'Quarter-Final', 1, 0, 174, 161);
INSERT INTO public.games VALUES (100, 2014, 'Quarter-Final', 2, 1, 165, 167);
INSERT INTO public.games VALUES (101, 2014, 'Quarter-Final', 1, 0, 175, 159);
INSERT INTO public.games VALUES (102, 2014, 'Eighth-Final', 2, 1, 165, 178);
INSERT INTO public.games VALUES (103, 2014, 'Eighth-Final', 2, 0, 167, 166);
INSERT INTO public.games VALUES (104, 2014, 'Eighth-Final', 2, 0, 159, 179);
INSERT INTO public.games VALUES (105, 2014, 'Eighth-Final', 2, 1, 175, 180);
INSERT INTO public.games VALUES (106, 2014, 'Eighth-Final', 2, 1, 176, 170);
INSERT INTO public.games VALUES (107, 2014, 'Eighth-Final', 2, 1, 177, 181);
INSERT INTO public.games VALUES (108, 2014, 'Eighth-Final', 1, 0, 174, 168);
INSERT INTO public.games VALUES (109, 2014, 'Eighth-Final', 2, 1, 161, 182);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (159, 'France');
INSERT INTO public.teams VALUES (160, 'Croatia');
INSERT INTO public.teams VALUES (161, 'Belgium');
INSERT INTO public.teams VALUES (162, 'England');
INSERT INTO public.teams VALUES (163, 'Russia');
INSERT INTO public.teams VALUES (164, 'Sweden');
INSERT INTO public.teams VALUES (165, 'Brazil');
INSERT INTO public.teams VALUES (166, 'Uruguay');
INSERT INTO public.teams VALUES (167, 'Colombia');
INSERT INTO public.teams VALUES (168, 'Switzerland');
INSERT INTO public.teams VALUES (169, 'Japan');
INSERT INTO public.teams VALUES (170, 'Mexico');
INSERT INTO public.teams VALUES (171, 'Denmark');
INSERT INTO public.teams VALUES (172, 'Spain');
INSERT INTO public.teams VALUES (173, 'Portugal');
INSERT INTO public.teams VALUES (174, 'Argentina');
INSERT INTO public.teams VALUES (175, 'Germany');
INSERT INTO public.teams VALUES (176, 'Netherlands');
INSERT INTO public.teams VALUES (177, 'Costa Rica');
INSERT INTO public.teams VALUES (178, 'Chile');
INSERT INTO public.teams VALUES (179, 'Nigeria');
INSERT INTO public.teams VALUES (180, 'Algeria');
INSERT INTO public.teams VALUES (181, 'Greece');
INSERT INTO public.teams VALUES (182, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 109, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 182, true);


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

