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
    round character varying(15) NOT NULL,
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
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
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (146, 2018, 'Final', 315, 316, 4, 2);
INSERT INTO public.games VALUES (147, 2018, 'Third Place', 317, 318, 2, 0);
INSERT INTO public.games VALUES (148, 2018, 'Semi-Final', 316, 318, 2, 1);
INSERT INTO public.games VALUES (149, 2018, 'Semi-Final', 315, 317, 1, 0);
INSERT INTO public.games VALUES (150, 2018, 'Quarter-Final', 316, 319, 3, 2);
INSERT INTO public.games VALUES (151, 2018, 'Quarter-Final', 318, 320, 2, 0);
INSERT INTO public.games VALUES (152, 2018, 'Quarter-Final', 317, 321, 2, 1);
INSERT INTO public.games VALUES (153, 2018, 'Quarter-Final', 315, 322, 2, 0);
INSERT INTO public.games VALUES (154, 2018, 'Eighth-Final', 318, 323, 2, 1);
INSERT INTO public.games VALUES (155, 2018, 'Eighth-Final', 320, 324, 1, 0);
INSERT INTO public.games VALUES (156, 2018, 'Eighth-Final', 317, 325, 3, 2);
INSERT INTO public.games VALUES (157, 2018, 'Eighth-Final', 321, 326, 2, 0);
INSERT INTO public.games VALUES (158, 2018, 'Eighth-Final', 316, 327, 2, 1);
INSERT INTO public.games VALUES (159, 2018, 'Eighth-Final', 319, 328, 2, 1);
INSERT INTO public.games VALUES (160, 2018, 'Eighth-Final', 322, 329, 2, 1);
INSERT INTO public.games VALUES (161, 2018, 'Eighth-Final', 315, 330, 4, 3);
INSERT INTO public.games VALUES (162, 2014, 'Final', 331, 330, 1, 0);
INSERT INTO public.games VALUES (163, 2014, 'Third Place', 332, 321, 3, 0);
INSERT INTO public.games VALUES (164, 2014, 'Semi-Final', 330, 332, 1, 0);
INSERT INTO public.games VALUES (165, 2014, 'Semi-Final', 331, 321, 7, 1);
INSERT INTO public.games VALUES (166, 2014, 'Quarter-Final', 332, 333, 1, 0);
INSERT INTO public.games VALUES (167, 2014, 'Quarter-Final', 330, 317, 1, 0);
INSERT INTO public.games VALUES (168, 2014, 'Quarter-Final', 321, 323, 2, 1);
INSERT INTO public.games VALUES (169, 2014, 'Quarter-Final', 331, 315, 1, 0);
INSERT INTO public.games VALUES (170, 2014, 'Eighth-Final', 321, 334, 2, 1);
INSERT INTO public.games VALUES (171, 2014, 'Eighth-Final', 323, 322, 2, 0);
INSERT INTO public.games VALUES (172, 2014, 'Eighth-Final', 315, 335, 2, 0);
INSERT INTO public.games VALUES (173, 2014, 'Eighth-Final', 331, 336, 2, 1);
INSERT INTO public.games VALUES (174, 2014, 'Eighth-Final', 332, 326, 2, 1);
INSERT INTO public.games VALUES (175, 2014, 'Eighth-Final', 333, 337, 2, 1);
INSERT INTO public.games VALUES (176, 2014, 'Eighth-Final', 330, 324, 1, 0);
INSERT INTO public.games VALUES (177, 2014, 'Eighth-Final', 317, 338, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (315, 'France');
INSERT INTO public.teams VALUES (316, 'Croatia');
INSERT INTO public.teams VALUES (317, 'Belgium');
INSERT INTO public.teams VALUES (318, 'England');
INSERT INTO public.teams VALUES (319, 'Russia');
INSERT INTO public.teams VALUES (320, 'Sweden');
INSERT INTO public.teams VALUES (321, 'Brazil');
INSERT INTO public.teams VALUES (322, 'Uruguay');
INSERT INTO public.teams VALUES (323, 'Colombia');
INSERT INTO public.teams VALUES (324, 'Switzerland');
INSERT INTO public.teams VALUES (325, 'Japan');
INSERT INTO public.teams VALUES (326, 'Mexico');
INSERT INTO public.teams VALUES (327, 'Denmark');
INSERT INTO public.teams VALUES (328, 'Spain');
INSERT INTO public.teams VALUES (329, 'Portugal');
INSERT INTO public.teams VALUES (330, 'Argentina');
INSERT INTO public.teams VALUES (331, 'Germany');
INSERT INTO public.teams VALUES (332, 'Netherlands');
INSERT INTO public.teams VALUES (333, 'Costa Rica');
INSERT INTO public.teams VALUES (334, 'Chile');
INSERT INTO public.teams VALUES (335, 'Nigeria');
INSERT INTO public.teams VALUES (336, 'Algeria');
INSERT INTO public.teams VALUES (337, 'Greece');
INSERT INTO public.teams VALUES (338, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 177, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 79, true);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 79, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 338, true);


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
-- Name: games fkey_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

