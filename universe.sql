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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30),
    col_int1 integer NOT NULL,
    col_int2 integer NOT NULL,
    col_numeric numeric,
    col_text text,
    col_boolean1 boolean,
    col_boolean2 boolean
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    col_int1 integer NOT NULL,
    col_int2 integer NOT NULL,
    col_numeric numeric,
    col_text text,
    col_boolean1 boolean,
    col_boolean2 boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(30),
    col_int1 integer NOT NULL,
    col_int2 integer NOT NULL,
    col_numeric numeric,
    col_text text,
    col_boolean1 boolean,
    col_boolean2 boolean
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
    star_id integer,
    name character varying(30),
    col_int1 integer NOT NULL,
    col_int2 integer NOT NULL,
    col_numeric numeric,
    col_text text,
    col_boolean1 boolean,
    col_boolean2 boolean
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
    galaxy_id integer,
    name character varying(30),
    col_int1 integer NOT NULL,
    col_int2 integer NOT NULL,
    col_numeric numeric,
    col_text text,
    col_boolean1 boolean,
    col_boolean2 boolean
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'ab', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (2, 'b', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (3, 'c', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (4, 'd', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (5, 'e', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (6, 'f', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (7, 'g', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (8, 'h', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (9, 'j', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (10, 'l', 1, 2, 123, 'ASD', true, false);
INSERT INTO public.extra VALUES (11, 'k', 1, 2, 123, 'ASD', true, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromena', 1, 2, 123, 'first', true, false);
INSERT INTO public.galaxy VALUES (2, 'andromeno', 1, 2, 123, 'second', true, false);
INSERT INTO public.galaxy VALUES (3, 'andromene', 1, 2, 123, 'third', true, false);
INSERT INTO public.galaxy VALUES (4, 'andromen', 1, 2, 123, 'forth', true, false);
INSERT INTO public.galaxy VALUES (5, 'androme', 1, 2, 123, 'fifth', true, false);
INSERT INTO public.galaxy VALUES (6, 'androm', 1, 2, 123, 'sixth', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'a', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (2, 1, 'aa', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (3, 1, 'ab', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (4, 1, 'ac', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (5, 1, 'ad', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (6, 1, 'ae', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (7, 1, 'af', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (8, 1, 'ag', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (9, 1, 'ah', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (10, 1, 'ai', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (11, 1, 'aj', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (12, 1, 'ak', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (13, 1, 'al', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (14, 1, 'am', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (15, 1, 'an', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (16, 1, 'ao', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (17, 1, 'ap', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (18, 1, 'aq', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (19, 1, 'ar', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (20, 1, 'as', 1, 2, 123, 'A', true, false);
INSERT INTO public.moon VALUES (21, 1, 'ax', 1, 2, 123, 'A', true, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'a', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (2, 1, 'b', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (3, 2, 'aa', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (4, 2, 'bb', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (5, 2, 'cc', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (6, 2, 'dd', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (7, 2, 'ee', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (8, 2, 'ff', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (9, 2, 'ii', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (10, 2, 'jj', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (11, 2, 'kk', 1, 2, 123, 'first', true, false);
INSERT INTO public.planet VALUES (12, 2, 'll', 1, 2, 123, 'first', true, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'a', 1, 2, 123, 'first', true, false);
INSERT INTO public.star VALUES (2, 1, 'b', 1, 2, 123, 'second', true, false);
INSERT INTO public.star VALUES (3, 1, 'c', 1, 2, 123, 'third', true, false);
INSERT INTO public.star VALUES (4, 1, 'd', 1, 2, 123, 'forth', true, false);
INSERT INTO public.star VALUES (5, 1, 'e', 1, 2, 123, 'fifth', true, false);
INSERT INTO public.star VALUES (6, 1, 'f', 1, 2, 123, 'sixth', true, false);


--
-- Name: extra_extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_extra_id_seq', 11, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: extra extra_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_name_key UNIQUE (name);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
