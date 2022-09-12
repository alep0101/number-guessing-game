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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    tries integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 15, 66);
INSERT INTO public.games VALUES (2, 15, 863);
INSERT INTO public.games VALUES (3, 16, 884);
INSERT INTO public.games VALUES (4, 16, 511);
INSERT INTO public.games VALUES (5, 15, 179);
INSERT INTO public.games VALUES (6, 15, 615);
INSERT INTO public.games VALUES (7, 15, 275);
INSERT INTO public.games VALUES (8, 17, 10);
INSERT INTO public.games VALUES (9, 18, 90);
INSERT INTO public.games VALUES (10, 18, 212);
INSERT INTO public.games VALUES (11, 19, 82);
INSERT INTO public.games VALUES (12, 19, 684);
INSERT INTO public.games VALUES (13, 18, 220);
INSERT INTO public.games VALUES (14, 18, 590);
INSERT INTO public.games VALUES (15, 18, 519);
INSERT INTO public.games VALUES (16, 20, 589);
INSERT INTO public.games VALUES (17, 20, 221);
INSERT INTO public.games VALUES (18, 21, 454);
INSERT INTO public.games VALUES (19, 21, 726);
INSERT INTO public.games VALUES (20, 20, 267);
INSERT INTO public.games VALUES (21, 20, 414);
INSERT INTO public.games VALUES (22, 20, 371);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1662939635871');
INSERT INTO public.users VALUES (2, 'user_1662939635870');
INSERT INTO public.users VALUES (3, 'user_1662939824765');
INSERT INTO public.users VALUES (4, 'user_1662939824764');
INSERT INTO public.users VALUES (5, 'user_1662940101529');
INSERT INTO public.users VALUES (6, 'user_1662940101528');
INSERT INTO public.users VALUES (7, 'user_1662940111767');
INSERT INTO public.users VALUES (8, 'user_1662940111766');
INSERT INTO public.users VALUES (9, 'user_1662940805139');
INSERT INTO public.users VALUES (10, 'user_1662940805138');
INSERT INTO public.users VALUES (11, 'user_1662941208995');
INSERT INTO public.users VALUES (12, 'user_1662941208994');
INSERT INTO public.users VALUES (13, 'user_1662941279691');
INSERT INTO public.users VALUES (14, 'user_1662941279690');
INSERT INTO public.users VALUES (15, 'user_1662941550830');
INSERT INTO public.users VALUES (16, 'user_1662941550829');
INSERT INTO public.users VALUES (17, 'Me');
INSERT INTO public.users VALUES (18, 'user_1662941765382');
INSERT INTO public.users VALUES (19, 'user_1662941765381');
INSERT INTO public.users VALUES (20, 'user_1662942518306');
INSERT INTO public.users VALUES (21, 'user_1662942518305');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 22, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

