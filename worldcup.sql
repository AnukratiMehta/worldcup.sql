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
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (815, 2018, 'Final', 438, 439, 4, 2);
INSERT INTO public.games VALUES (816, 2018, 'Third Place', 440, 441, 2, 0);
INSERT INTO public.games VALUES (817, 2018, 'Semi-Final', 439, 441, 2, 1);
INSERT INTO public.games VALUES (818, 2018, 'Semi-Final', 438, 440, 1, 0);
INSERT INTO public.games VALUES (819, 2018, 'Quarter-Final', 439, 442, 3, 2);
INSERT INTO public.games VALUES (820, 2018, 'Quarter-Final', 441, 443, 2, 0);
INSERT INTO public.games VALUES (821, 2018, 'Quarter-Final', 440, 444, 2, 1);
INSERT INTO public.games VALUES (822, 2018, 'Quarter-Final', 438, 445, 2, 0);
INSERT INTO public.games VALUES (823, 2018, 'Eighth-Final', 441, 446, 2, 1);
INSERT INTO public.games VALUES (824, 2018, 'Eighth-Final', 443, 447, 1, 0);
INSERT INTO public.games VALUES (825, 2018, 'Eighth-Final', 440, 448, 3, 2);
INSERT INTO public.games VALUES (826, 2018, 'Eighth-Final', 444, 449, 2, 0);
INSERT INTO public.games VALUES (827, 2018, 'Eighth-Final', 439, 450, 2, 1);
INSERT INTO public.games VALUES (828, 2018, 'Eighth-Final', 442, 451, 2, 1);
INSERT INTO public.games VALUES (829, 2018, 'Eighth-Final', 445, 452, 2, 1);
INSERT INTO public.games VALUES (830, 2018, 'Eighth-Final', 438, 453, 4, 3);
INSERT INTO public.games VALUES (831, 2014, 'Final', 454, 453, 1, 0);
INSERT INTO public.games VALUES (832, 2014, 'Third Place', 455, 444, 3, 0);
INSERT INTO public.games VALUES (833, 2014, 'Semi-Final', 453, 455, 1, 0);
INSERT INTO public.games VALUES (834, 2014, 'Semi-Final', 454, 444, 7, 1);
INSERT INTO public.games VALUES (835, 2014, 'Quarter-Final', 455, 456, 1, 0);
INSERT INTO public.games VALUES (836, 2014, 'Quarter-Final', 453, 440, 1, 0);
INSERT INTO public.games VALUES (837, 2014, 'Quarter-Final', 444, 446, 2, 1);
INSERT INTO public.games VALUES (838, 2014, 'Quarter-Final', 454, 438, 1, 0);
INSERT INTO public.games VALUES (839, 2014, 'Eighth-Final', 444, 457, 2, 1);
INSERT INTO public.games VALUES (840, 2014, 'Eighth-Final', 446, 445, 2, 0);
INSERT INTO public.games VALUES (841, 2014, 'Eighth-Final', 438, 458, 2, 0);
INSERT INTO public.games VALUES (842, 2014, 'Eighth-Final', 454, 459, 2, 1);
INSERT INTO public.games VALUES (843, 2014, 'Eighth-Final', 455, 449, 2, 1);
INSERT INTO public.games VALUES (844, 2014, 'Eighth-Final', 456, 460, 2, 1);
INSERT INTO public.games VALUES (845, 2014, 'Eighth-Final', 453, 447, 1, 0);
INSERT INTO public.games VALUES (846, 2014, 'Eighth-Final', 440, 461, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (438, 'France');
INSERT INTO public.teams VALUES (439, 'Croatia');
INSERT INTO public.teams VALUES (440, 'Belgium');
INSERT INTO public.teams VALUES (441, 'England');
INSERT INTO public.teams VALUES (442, 'Russia');
INSERT INTO public.teams VALUES (443, 'Sweden');
INSERT INTO public.teams VALUES (444, 'Brazil');
INSERT INTO public.teams VALUES (445, 'Uruguay');
INSERT INTO public.teams VALUES (446, 'Colombia');
INSERT INTO public.teams VALUES (447, 'Switzerland');
INSERT INTO public.teams VALUES (448, 'Japan');
INSERT INTO public.teams VALUES (449, 'Mexico');
INSERT INTO public.teams VALUES (450, 'Denmark');
INSERT INTO public.teams VALUES (451, 'Spain');
INSERT INTO public.teams VALUES (452, 'Portugal');
INSERT INTO public.teams VALUES (453, 'Argentina');
INSERT INTO public.teams VALUES (454, 'Germany');
INSERT INTO public.teams VALUES (455, 'Netherlands');
INSERT INTO public.teams VALUES (456, 'Costa Rica');
INSERT INTO public.teams VALUES (457, 'Chile');
INSERT INTO public.teams VALUES (458, 'Nigeria');
INSERT INTO public.teams VALUES (459, 'Algeria');
INSERT INTO public.teams VALUES (460, 'Greece');
INSERT INTO public.teams VALUES (461, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 846, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 461, true);


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

