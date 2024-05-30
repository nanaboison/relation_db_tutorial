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
-- Name: atmosphere; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.atmosphere (
    atmosphere_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_breathable boolean,
    atmosphere_level integer,
    planet_id integer
);


ALTER TABLE public.atmosphere OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.atmosphere_atmosphere_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.atmosphere_atmosphere_id_seq OWNER TO freecodecamp;

--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.atmosphere_atmosphere_id_seq OWNED BY public.atmosphere.atmosphere_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_types character varying(30),
    description text,
    age_in_millions_of_years numeric(4,1),
    is_spherical boolean
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
    name character varying(60) NOT NULL,
    distance_from_earth_km integer,
    description text,
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
    name character varying(60) NOT NULL,
    planet_type character varying(60),
    has_life boolean,
    population_in_millions integer,
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
    name character varying(60) NOT NULL,
    distance_from_earth_km integer,
    description text,
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
-- Name: atmosphere atmosphere_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere ALTER COLUMN atmosphere_id SET DEFAULT nextval('public.atmosphere_atmosphere_id_seq'::regclass);


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
-- Data for Name: atmosphere; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.atmosphere VALUES (1, 'oxygen', true, 3, 3);
INSERT INTO public.atmosphere VALUES (2, 'pure breeze', true, 2, 4);
INSERT INTO public.atmosphere VALUES (3, 'Ammonia', false, 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'elliptical', 'These systems exhibit certain characteristic properties', 120.1, false);
INSERT INTO public.galaxy VALUES (2, 'Milky', 'Spiral', 'Spirals are characterized by circular symmetry, a bright nucleus surrounded by a thin outer disk, and a superimposed spiral structure.', 100.0, true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'whirl', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Magellanic Cloud', 'S0', 'These systems exhibit some of the properties of both the ellipticals and the spirals and seem to be a bridge between these two more common galaxy types.', 200.0, false);
INSERT INTO public.galaxy VALUES (5, 'Nebulae', 'SA', 'These normal spirals have narrow, tightly wound arms', 90.0, true);
INSERT INTO public.galaxy VALUES (6, 'sombero', 'SB', 'Hubble and Sandage noted further deviations from the standard shape established for Sb galaxies', 100.0, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Beaver', 2000, 'Beaver moon', 2);
INSERT INTO public.moon VALUES (2, 'Flower', 1000, 'Flower moon', 3);
INSERT INTO public.moon VALUES (3, 'Strawberry', 1000, 'Straw moon', 3);
INSERT INTO public.moon VALUES (4, 'Worm', 300, 'Worm moon', 1);
INSERT INTO public.moon VALUES (5, 'cold', 2000, 'Cold moon', 5);
INSERT INTO public.moon VALUES (6, 'Buck', 100, 'Buck moon', 2);
INSERT INTO public.moon VALUES (7, 'Apollo', 5000, 'Apollo moon', 5);
INSERT INTO public.moon VALUES (8, 'Harvet', 6000, 'Harvet moon', 1);
INSERT INTO public.moon VALUES (9, 'Pink', 300, 'Pink Moon', 2);
INSERT INTO public.moon VALUES (10, 'Sturgeon', 200, 'Stur moon', 1);
INSERT INTO public.moon VALUES (11, 'Wolf', 4000, 'Wolfie moon', 4);
INSERT INTO public.moon VALUES (12, 'Hunter', 200, 'Hunt October', 2);
INSERT INTO public.moon VALUES (13, 'Castillo', 1000, 'Cast moon', 3);
INSERT INTO public.moon VALUES (14, 'Titan', 300, 'Titan moon', 5);
INSERT INTO public.moon VALUES (15, 'Helene', 300, 'Helene moon', 6);
INSERT INTO public.moon VALUES (16, 'Elara', 100, 'Elar moon', 4);
INSERT INTO public.moon VALUES (17, 'Janus', 300, 'Janus moon', 4);
INSERT INTO public.moon VALUES (18, 'Aadhira', 1000, NULL, 2);
INSERT INTO public.moon VALUES (19, 'Blue', 120, 'blue moon', 5);
INSERT INTO public.moon VALUES (20, 'Luna', 400, 'Luna moon', 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Big', true, 2000, 2);
INSERT INTO public.planet VALUES (2, 'Mars', 'War', true, 200, 3);
INSERT INTO public.planet VALUES (3, 'Venus', 'lady', true, 300, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Maximus', false, 0, 4);
INSERT INTO public.planet VALUES (5, 'Pluto', 'Hades', true, 500, 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Thor', true, 4, 5);
INSERT INTO public.planet VALUES (7, 'Copolt', 'Big', true, 2000, 2);
INSERT INTO public.planet VALUES (8, 'Kepler', 'War', true, 200, 3);
INSERT INTO public.planet VALUES (9, 'Giles', 'lady', true, 300, 2);
INSERT INTO public.planet VALUES (10, 'Uranus', 'Titan', false, 0, 4);
INSERT INTO public.planet VALUES (11, 'Mercury', 'Fast', true, 500, 5);
INSERT INTO public.planet VALUES (12, 'Neptune', 'Percy', true, 4, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Achernar', 2000, 'combination of Greek lette', 2);
INSERT INTO public.star VALUES (2, 'Aldebaran', 1000, NULL, 3);
INSERT INTO public.star VALUES (3, 'Alpha Capricorni', 1200, 'the mark on the neckof a camel', 4);
INSERT INTO public.star VALUES (4, 'Alkaid', 500, 'transliterated into Arabic, then into Latin, back into Greek and finally back to Arabic.', 5);
INSERT INTO public.star VALUES (5, 'Antares', 5000, 'guardian of the bear', 6);
INSERT INTO public.star VALUES (6, 'Atlas', NULL, NULL, 1);


--
-- Name: atmosphere_atmosphere_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.atmosphere_atmosphere_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: atmosphere atmosphere_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_name_key UNIQUE (name);


--
-- Name: atmosphere atmosphere_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.atmosphere
    ADD CONSTRAINT atmosphere_pkey PRIMARY KEY (atmosphere_id);


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
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

