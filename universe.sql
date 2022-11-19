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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    satu integer,
    dua integer,
    tiga numeric,
    empat text,
    lima boolean NOT NULL,
    enam boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: mars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mars (
    mars_id integer NOT NULL,
    name character varying(20),
    satu integer,
    dua integer,
    tiga numeric,
    empat text,
    lima boolean NOT NULL,
    enam boolean NOT NULL
);


ALTER TABLE public.mars OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mars_mars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mars_mars_id_seq OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mars_mars_id_seq OWNED BY public.mars.mars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    satu integer,
    dua integer,
    tiga numeric,
    empat text,
    lima boolean NOT NULL,
    enam boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    satu integer,
    dua integer,
    tiga numeric,
    empat text,
    lima boolean NOT NULL,
    enam boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    satu integer,
    dua integer,
    tiga numeric,
    empat text,
    lima boolean NOT NULL,
    enam boolean NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: mars mars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars ALTER COLUMN mars_id SET DEFAULT nextval('public.mars_mars_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'galaxy2', 2, 2, 2, 'galaxy2', true, true);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 3, 3, 3, 'galaxy3', true, true);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 4, 4, 4, 'galaxy4', true, true);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 5, 5, 5, 'galaxy5', true, true);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 6, 6, 6, 'galaxy6', true, true);
INSERT INTO public.galaxy VALUES (1, 'galaxy1', 1, 1, 1, 'galaxy1', true, true);


--
-- Data for Name: mars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mars VALUES (1, 'mars1', 1, 1, 1, 'mars1', false, true);
INSERT INTO public.mars VALUES (2, 'mars2', 2, 2, 2, 'mars2', false, true);
INSERT INTO public.mars VALUES (3, 'mars3', 3, 3, 3, 'mars3', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'moon3', 3, 3, 3, 'moon3', true, false, 1);
INSERT INTO public.moon VALUES (4, 'moon4', 4, 4, 4, 'moon4', true, false, 1);
INSERT INTO public.moon VALUES (5, 'moon5', 5, 5, 5, 'moon5', true, false, 1);
INSERT INTO public.moon VALUES (6, 'moon6', 6, 6, 6, 'moon6', true, false, 2);
INSERT INTO public.moon VALUES (7, 'moon7', 7, 7, 7, 'moon7', true, false, 2);
INSERT INTO public.moon VALUES (8, 'moon8', 8, 8, 8, 'moon8', true, false, 2);
INSERT INTO public.moon VALUES (9, 'moon9', 9, 9, 9, 'moon9', true, false, 2);
INSERT INTO public.moon VALUES (10, 'moon10', 10, 10, 10, 'moon10', true, false, 2);
INSERT INTO public.moon VALUES (11, 'moon11', 11, 11, 11, 'moon11', true, false, 3);
INSERT INTO public.moon VALUES (12, 'moon12', 12, 12, 12, 'moon12', true, false, 3);
INSERT INTO public.moon VALUES (13, 'moon13', 13, 13, 13, 'moon13', true, false, 3);
INSERT INTO public.moon VALUES (14, 'moon14', 14, 14, 14, 'moon14', true, false, 3);
INSERT INTO public.moon VALUES (15, 'moon15', 15, 15, 15, 'moon15', true, false, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 16, 16, 16, 'moon16', true, false, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 17, 17, 17, 'moon17', true, false, 4);
INSERT INTO public.moon VALUES (18, 'moon18', 18, 18, 18, 'moon18', true, false, 4);
INSERT INTO public.moon VALUES (19, 'moon19', 19, 19, 19, 'moon19', true, false, 4);
INSERT INTO public.moon VALUES (20, 'moon20', 20, 20, 20, 'moon20', true, false, 4);
INSERT INTO public.moon VALUES (1, 'moon1', 1, 1, 1, 'moon1', true, false, 1);
INSERT INTO public.moon VALUES (2, 'moon1', 2, 2, 2, 'moon2', true, false, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, 1, 1, 'planet1', false, false, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 2, 2, 2, 'planet2', false, false, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 3, 3, 3, 'planet3', false, false, 2);
INSERT INTO public.planet VALUES (4, 'planet4', 4, 4, 4, 'planet4', false, false, 2);
INSERT INTO public.planet VALUES (5, 'planet5', 5, 5, 5, 'planet5', false, false, 3);
INSERT INTO public.planet VALUES (6, 'planet6', 6, 6, 6, 'planet6', false, false, 3);
INSERT INTO public.planet VALUES (7, 'planet7', 7, 7, 7, 'planet7', false, false, 4);
INSERT INTO public.planet VALUES (8, 'planet8', 8, 8, 8, 'planet8', false, false, 4);
INSERT INTO public.planet VALUES (9, 'planet9', 9, 9, 9, 'planet9', false, false, 5);
INSERT INTO public.planet VALUES (10, 'planet10', 10, 10, 10, 'planet10', false, false, 5);
INSERT INTO public.planet VALUES (11, 'planet11', 11, 11, 11, 'planet11', false, false, 6);
INSERT INTO public.planet VALUES (12, 'planet12', 12, 12, 12, 'planet12', false, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 1, 1, 'star1', true, true, 1);
INSERT INTO public.star VALUES (2, 'star2', 2, 2, 2, 'star2', true, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 3, 3, 3, 'star3', true, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 4, 4, 4, 'star4', true, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 5, 5, 5, 'star5', true, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 6, 6, 6, 'star6', true, true, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: mars_mars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mars_mars_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_dua_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_dua_key UNIQUE (dua);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: mars mars_dua_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_dua_key UNIQUE (dua);


--
-- Name: mars mars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_pkey PRIMARY KEY (mars_id);


--
-- Name: moon moon_dua_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_dua_key UNIQUE (dua);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_dua_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_dua_key UNIQUE (dua);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_dua_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_dua_key UNIQUE (dua);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

