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
    name character varying(20) NOT NULL,
    size_light_years integer,
    age_billion_years numeric,
    do_i_know boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    is_moon boolean,
    has_water boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    num_moons integer,
    description text,
    hold_life boolean,
    has_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: stalites; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.stalites (
    stalites_id integer NOT NULL,
    name character varying(20) NOT NULL,
    close_to_earth boolean,
    age numeric,
    alive boolean
);


ALTER TABLE public.stalites OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    galaxy_id integer,
    do_i_know boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 52850, 13.61, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 10.01, NULL);
INSERT INTO public.galaxy VALUES (3, 'Antennae', 12, 5, NULL);
INSERT INTO public.galaxy VALUES (4, 'Backward', 10, 4, NULL);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 9, 6, NULL);
INSERT INTO public.galaxy VALUES (6, 'Butterfly', 15, 9, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Amalthea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Adrastea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Himalia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Aitene', 5, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Arche', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Autonoe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Carme', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'carpo', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Aoede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Dia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Eirene', 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Elara', 5, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Ersa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Euporie', 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Helike', 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Iocaste', 5, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Luna', NULL, true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'My Home', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 0, 'Hot', false, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Red', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Brown', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 9, 'Big', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Staurn', 200, 'Rings', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 2, 'Not really that', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Pluto', 0, 'Not a planet', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 1, 'I forgot', false, true, 1);
INSERT INTO public.planet VALUES (10, 'PA-99-N2', 9, 'Maybe life', true, true, 2);
INSERT INTO public.planet VALUES (11, 'Messier', 1, 'No idea', false, false, 2);
INSERT INTO public.planet VALUES (12, 'Epsilon', 2, 'jaja', false, false, 2);


--
-- Data for Name: stalites; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.stalites VALUES (1, 'uno', false, 5, true);
INSERT INTO public.stalites VALUES (2, 'dos', true, 7, true);
INSERT INTO public.stalites VALUES (3, 'tres', false, 7, false);
INSERT INTO public.stalites VALUES (4, 'cuatro', true, 60, true);
INSERT INTO public.stalites VALUES (5, 'cinco', true, 88, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4.603, 1, NULL);
INSERT INTO public.star VALUES (2, 'Alpheratz', 60, 2, NULL);
INSERT INTO public.star VALUES (3, 'Cancer', 8.2, 1, NULL);
INSERT INTO public.star VALUES (4, 'Leo', 30, 4, NULL);
INSERT INTO public.star VALUES (5, 'Canis Major', 5, 6, NULL);
INSERT INTO public.star VALUES (6, 'Virgo', 2.3, 2, NULL);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: stalites stalites_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stalites
    ADD CONSTRAINT stalites_name_key UNIQUE (name);


--
-- Name: stalites stalites_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.stalites
    ADD CONSTRAINT stalites_pkey PRIMARY KEY (stalites_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

