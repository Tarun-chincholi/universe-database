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
-- Name: constellations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellations (
    constellations_id integer NOT NULL,
    number_of_stars integer NOT NULL,
    visible_brightness integer,
    is_galaxy boolean,
    has_supernova boolean,
    description text NOT NULL,
    name character varying(255)
);


ALTER TABLE public.constellations OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellations_constellations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellations_constellations_id_seq OWNER TO freecodecamp;

--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellations_constellations_id_seq OWNED BY public.constellations.constellations_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_spherical_shaped boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL
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
    name character varying(255) NOT NULL,
    is_spherical_shaped boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL,
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
    name character varying(255) NOT NULL,
    is_spherical_shaped boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL,
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
    name character varying(255) NOT NULL,
    is_spherical_shaped boolean NOT NULL,
    has_life boolean NOT NULL,
    distance_from_earth numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL,
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
-- Name: constellations constellations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations ALTER COLUMN constellations_id SET DEFAULT nextval('public.constellations_constellations_id_seq'::regclass);


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
-- Data for Name: constellations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellations VALUES (1, 1000, 5, true, false, 'A large and bright galaxy in the night sky, located in the northern hemisphere.', 'Andromeda');
INSERT INTO public.constellations VALUES (2, 500, 7, false, true, 'A constellation with stars that have visible remnants of a supernova.', 'Orion');
INSERT INTO public.constellations VALUES (3, 300, 8, false, false, 'A faint constellation representing a bull in the zodiac.', 'Taurus');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 0, 13000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, true, 2537000, 10000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', true, false, 3000000, 12000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', false, false, 23000000, 13000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', true, false, 28000000, 14000);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', false, false, 53000000, 15000);
INSERT INTO public.galaxy VALUES (7, 'NGC 1300', true, false, 61000000, 12000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (39, 'Moon', true, false, 0, 4600, 1);
INSERT INTO public.moon VALUES (40, 'Phobos', true, false, 225000000, 4600, 2);
INSERT INTO public.moon VALUES (41, 'Deimos', true, false, 225000000, 4600, 2);
INSERT INTO public.moon VALUES (42, 'Titan', true, false, 1350000000, 4600, 5);
INSERT INTO public.moon VALUES (43, 'Io', true, false, 420000000, 4600, 5);
INSERT INTO public.moon VALUES (44, 'Europa', true, false, 650000000, 4600, 5);
INSERT INTO public.moon VALUES (45, 'Ganymede', true, false, 730000000, 4600, 5);
INSERT INTO public.moon VALUES (46, 'Callisto', true, false, 1200000000, 4600, 5);
INSERT INTO public.moon VALUES (47, 'Enceladus', true, false, 1300000000, 4600, 6);
INSERT INTO public.moon VALUES (48, 'Mimas', true, false, 1400000000, 4600, 6);
INSERT INTO public.moon VALUES (49, 'Triton', true, false, 2700000000, 4600, 7);
INSERT INTO public.moon VALUES (50, 'Miranda', true, false, 2700000000, 4600, 7);
INSERT INTO public.moon VALUES (51, 'Ariel', true, false, 2700000000, 4600, 7);
INSERT INTO public.moon VALUES (52, 'Umbriel', true, false, 2700000000, 4600, 7);
INSERT INTO public.moon VALUES (53, 'Titania', true, false, 2700000000, 4600, 7);
INSERT INTO public.moon VALUES (54, 'Oberon', true, false, 2700000000, 4600, 7);
INSERT INTO public.moon VALUES (55, 'Rhea', true, false, 1300000000, 4600, 6);
INSERT INTO public.moon VALUES (56, 'Iapetus', true, false, 1400000000, 4600, 6);
INSERT INTO public.moon VALUES (57, 'Tarun', true, false, 2700000000, 4500, 7);
INSERT INTO public.moon VALUES (58, 'xae2', true, false, 1350000000, 4600, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 0, 4600, 1);
INSERT INTO public.planet VALUES (2, 'Mars', true, false, 225000000, 4600, 1);
INSERT INTO public.planet VALUES (3, 'Venus', true, false, 41000000, 4600, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', true, false, 484000000, 4600, 1);
INSERT INTO public.planet VALUES (5, 'Saturn', true, false, 888000000, 4600, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', true, false, 1900000000, 4600, 1);
INSERT INTO public.planet VALUES (7, 'Neptune', true, false, 2700000000, 4600, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', true, false, 92000000, 4600, 1);
INSERT INTO public.planet VALUES (9, 'Titan', true, false, 1350000000, 4600, 5);
INSERT INTO public.planet VALUES (10, 'Io', true, false, 420000000, 4600, 5);
INSERT INTO public.planet VALUES (11, 'Europa', true, false, 650000000, 4600, 5);
INSERT INTO public.planet VALUES (12, 'Ganymede', true, false, 730000000, 4600, 5);
INSERT INTO public.planet VALUES (13, 'Callisto', true, false, 1200000000, 4600, 5);
INSERT INTO public.planet VALUES (14, 'Proxima b', true, true, 4.2, 600, 4);
INSERT INTO public.planet VALUES (15, 'Kepler-452b', true, true, 1400, 8000, 3);
INSERT INTO public.planet VALUES (16, 'TRAPPIST-1d', true, true, 39, 8000, 2);
INSERT INTO public.planet VALUES (17, 'LHS 1140 b', true, true, 40, 8000, 1);
INSERT INTO public.planet VALUES (18, 'HD 209458 b', true, false, 150, 6000, 3);
INSERT INTO public.planet VALUES (19, 'Kepler-22b', true, true, 600, 7000, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, true, 0, 4600, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', true, true, 4200, 6000, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', true, false, 642.5, 8000, 2);
INSERT INTO public.star VALUES (4, 'Sirius', true, true, 8.6, 200, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', true, false, 4.25, 4000, 1);
INSERT INTO public.star VALUES (6, 'Rigel', true, false, 860, 8000, 2);
INSERT INTO public.star VALUES (7, 'Alpha Centauri B', true, true, 4200, 6000, 1);


--
-- Name: constellations_constellations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellations_constellations_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 58, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: constellations constellations_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_name_key UNIQUE (name);


--
-- Name: constellations constellations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellations
    ADD CONSTRAINT constellations_pkey PRIMARY KEY (constellations_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

