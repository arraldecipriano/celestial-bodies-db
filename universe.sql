
--
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    abbreviation character varying(100),
    brightest_star character varying(255),
    constellation_type character varying(255),
    meaning text
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    size integer,
    has_spiral boolean,
    has_ring boolean
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
    planet_id integer,
    distance_from_earth integer,
    orbital_period integer,
    has_atmosphere boolean
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
    star_id integer,
    mass numeric,
    radius integer,
    is_habitable boolean,
    has_rings boolean
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
    galaxy_id integer,
    spectral_class character varying(255),
    luminosity numeric,
    is_binary boolean,
    temperature integer
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 1, 'Ori', 'Betelgeuse', 'Eponymous', NULL);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 1, 'UMa', 'Alioth', 'Asterism', NULL);
INSERT INTO public.constellation VALUES (3, 'Crux', 2, 'Cru', 'Acrux', 'Constellation', NULL);
INSERT INTO public.constellation VALUES (4, 'Cassiopeia', 1, 'Cass', 'Schedar', 'Mythological', NULL);
INSERT INTO public.constellation VALUES (5, 'Leo', 1, 'Leo', 'Regulus', 'Zodiac', NULL);
INSERT INTO public.constellation VALUES (6, 'Pegasus', 1, 'Peg', 'Enif', 'Mythological', NULL);
INSERT INTO public.constellation VALUES (7, 'Sagittarius', 2, 'Sgr', 'Kaus Asutralis', 'Zodiac', NULL);
INSERT INTO public.constellation VALUES (8, 'Cygnus', 1, 'Cyg', 'Deneb', 'Constellation', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The galaxy that contains our solar system', 100000, true, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy to the Milky Way', 150000, true, true);
INSERT INTO public.galaxy VALUES (3, 'Whirpool', 'Spiral galaxy notable for its prominent dust lanes', 50000, true, false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'A small galaxy, companion to Andromeda', 25000, false, false);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'A face-on spiral galaxyin the Ursa Major constellation', 30000, true, true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye', 'A galaxy named for the dark dust band across its center', 40000, true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 384400, 27, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 9377, 0, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 23460, 1, false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 4, 1070400, 7, false);
INSERT INTO public.moon VALUES (5, 'Titan', 5, 1221870, 16, true);
INSERT INTO public.moon VALUES (6, 'Triton', 6, 354759, 5, true);
INSERT INTO public.moon VALUES (7, 'Charon', 9, 19571, 6, false);
INSERT INTO public.moon VALUES (8, 'Europa', 11, 671100, 4, true);
INSERT INTO public.moon VALUES (9, 'Callisto', 11, 1882700, 17, false);
INSERT INTO public.moon VALUES (10, 'Phobetor', 11, 3774, 0, false);
INSERT INTO public.moon VALUES (11, 'Sinope', 11, 23980000, 758, false);
INSERT INTO public.moon VALUES (12, 'Metis', 12, 127960, 0, false);
INSERT INTO public.moon VALUES (13, 'Adrastea', 12, 128930, 0, false);
INSERT INTO public.moon VALUES (14, 'Amalthea', 12, 181366, 1, false);
INSERT INTO public.moon VALUES (15, 'Thebe', 12, 221900, 1, false);
INSERT INTO public.moon VALUES (16, 'Io', 12, 421700, 2, true);
INSERT INTO public.moon VALUES (17, 'Leda', 12, 11134000, 239, false);
INSERT INTO public.moon VALUES (18, 'Phoebe', 7, 12952000, 551, false);
INSERT INTO public.moon VALUES (19, 'Hyperion', 7, 14811000, 21, false);
INSERT INTO public.moon VALUES (20, 'Iapetus', 7, 35608000, 79, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 5.97, 6371, true, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 0.64171, 3389, false, false);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 4.867, 6051, false, false);
INSERT INTO public.planet VALUES (4, 'Jupiter', 2, 1898, 69911, false, true);
INSERT INTO public.planet VALUES (5, 'Saturn', 2, 568, 58232, false, true);
INSERT INTO public.planet VALUES (6, 'Neptune', 3, 102, 24622, false, false);
INSERT INTO public.planet VALUES (7, 'Mercury', 4, 0.330, 2439, false, false);
INSERT INTO public.planet VALUES (8, 'Uranus', 4, 86.8, 25362, false, true);
INSERT INTO public.planet VALUES (9, 'Pluto', 5, 0.0146, 1188, false, false);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 6, 5.0, 7294, true, false);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 6, 1.14, 139147, false, false);
INSERT INTO public.planet VALUES (12, 'WASP-121b', 6, 1.18, 12410, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type', 1.0, false, 5778);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'A-type', 25.4, false, 9940);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 'G-type', 1.1, true, 5790);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 'M-type', 100000, false, 3500);
INSERT INTO public.star VALUES (5, 'Vega', 1, 'A-type', 40.1, false, 9602);
INSERT INTO public.star VALUES (6, 'Polaris', 1, 'F-type', 6.0, false, 5896);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 8, true);


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
-- Name: constellation constellation_meaning_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_meaning_key UNIQUE (meaning);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


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
-- Name: constellation constellation_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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