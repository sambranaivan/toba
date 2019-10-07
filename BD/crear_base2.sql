--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

-- Started on 2019-03-08 00:48:56 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--DROP DATABASE exainfoacad;
--
-- TOC entry 2991 (class 1262 OID 21310)
-- Name: exainfoacad; Type: DATABASE; Schema: -; Owner: exainfoacad
--

--CREATE DATABASE exainfoacad WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_AR.UTF-8' LC_CTYPE = 'es_AR.UTF-8';


ALTER DATABASE exainfoacad OWNER TO exainfoacad;

\connect exainfoacad

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13078)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

--COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 33215)
-- Name: gta_ac_departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gta_ac_departamento (
    id integer NOT NULL,
    area_conocimiento_id integer,
    departamento_id integer
);


--ALTER TABLE public.gta_ac_departamento OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 33213)
-- Name: gta_ac_departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gta_ac_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.gta_ac_departamento_id_seq OWNER TO postgres;

--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 200
-- Name: gta_ac_departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gta_ac_departamento_id_seq OWNED BY public.gta_ac_departamento.id;


--
-- TOC entry 203 (class 1259 OID 33249)
-- Name: gta_ac_depto_materia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gta_ac_depto_materia (
    id integer NOT NULL,
    ac_departamento_id integer,
    materia character varying(5)
);


--ALTER TABLE public.gta_ac_depto_materia OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 33247)
-- Name: gta_ac_materias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gta_ac_materias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.gta_ac_materias_id_seq OWNER TO postgres;

--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 202
-- Name: gta_ac_materias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gta_ac_materias_id_seq OWNED BY public.gta_ac_depto_materia.id;


--
-- TOC entry 199 (class 1259 OID 33207)
-- Name: gta_area_conocimiento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gta_area_conocimiento (
    id integer NOT NULL,
    nombre character varying(100),
    coordinador_docente_id integer
);


--ALTER TABLE public.gta_area_conocimiento OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 33205)
-- Name: gta_area_conocimiento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gta_area_conocimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.gta_area_conocimiento_id_seq OWNER TO postgres;

--
-- TOC entry 2996 (class 0 OID 0)
-- Dependencies: 198
-- Name: gta_area_conocimiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gta_area_conocimiento_id_seq OWNED BY public.gta_area_conocimiento.id;


--
-- TOC entry 197 (class 1259 OID 33199)
-- Name: gta_departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gta_departamento (
    id integer NOT NULL,
    nombre character varying(100),
    director_docente_id integer,
    vice_director_docente_id integer,
    e_mail character varying(50)
);


--ALTER TABLE public.gta_departamento OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 33197)
-- Name: gta_departamentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gta_departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--ALTER TABLE public.gta_departamentos_id_seq OWNER TO postgres;

--
-- TOC entry 2997 (class 0 OID 0)
-- Dependencies: 196
-- Name: gta_departamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gta_departamentos_id_seq OWNED BY public.gta_departamento.id;


--
-- TOC entry 2844 (class 2604 OID 33218)
-- Name: gta_ac_departamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_departamento ALTER COLUMN id SET DEFAULT nextval('public.gta_ac_departamento_id_seq'::regclass);


--
-- TOC entry 2845 (class 2604 OID 33252)
-- Name: gta_ac_depto_materia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_depto_materia ALTER COLUMN id SET DEFAULT nextval('public.gta_ac_materias_id_seq'::regclass);


--
-- TOC entry 2843 (class 2604 OID 33210)
-- Name: gta_area_conocimiento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_area_conocimiento ALTER COLUMN id SET DEFAULT nextval('public.gta_area_conocimiento_id_seq'::regclass);


--
-- TOC entry 2842 (class 2604 OID 33202)
-- Name: gta_departamento id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_departamento ALTER COLUMN id SET DEFAULT nextval('public.gta_departamentos_id_seq'::regclass);


--
-- TOC entry 2983 (class 0 OID 33215)
-- Dependencies: 201
-- Data for Name: gta_ac_departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2985 (class 0 OID 33249)
-- Dependencies: 203
-- Data for Name: gta_ac_depto_materia; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2981 (class 0 OID 33207)
-- Dependencies: 199
-- Data for Name: gta_area_conocimiento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2979 (class 0 OID 33199)
-- Dependencies: 197
-- Data for Name: gta_departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2998 (class 0 OID 0)
-- Dependencies: 200
-- Name: gta_ac_departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gta_ac_departamento_id_seq', 1, false);


--
-- TOC entry 2999 (class 0 OID 0)
-- Dependencies: 202
-- Name: gta_ac_materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gta_ac_materias_id_seq', 1, false);


--
-- TOC entry 3000 (class 0 OID 0)
-- Dependencies: 198
-- Name: gta_area_conocimiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gta_area_conocimiento_id_seq', 1, false);


--
-- TOC entry 3001 (class 0 OID 0)
-- Dependencies: 196
-- Name: gta_departamentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gta_departamentos_id_seq', 1, false);


--
-- TOC entry 2851 (class 2606 OID 33220)
-- Name: gta_ac_departamento pk_ac_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_departamento
    ADD CONSTRAINT pk_ac_departamento PRIMARY KEY (id);


--
-- TOC entry 2853 (class 2606 OID 33254)
-- Name: gta_ac_depto_materia pk_ac_departamento_materia; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_depto_materia
    ADD CONSTRAINT pk_ac_departamento_materia PRIMARY KEY (id);


--
-- TOC entry 2849 (class 2606 OID 33212)
-- Name: gta_area_conocimiento pk_area_conocimiento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_area_conocimiento
    ADD CONSTRAINT pk_area_conocimiento PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 33204)
-- Name: gta_departamento pk_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id);


--
-- TOC entry 2855 (class 2606 OID 33226)
-- Name: gta_ac_departamento fk_ac_conocimiento_departamento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_departamento
    ADD CONSTRAINT fk_ac_conocimiento_departamento FOREIGN KEY (departamento_id) REFERENCES public.gta_departamento(id);


--
-- TOC entry 2854 (class 2606 OID 33221)
-- Name: gta_ac_departamento fk_ac_departamento_ac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_departamento
    ADD CONSTRAINT fk_ac_departamento_ac FOREIGN KEY (area_conocimiento_id) REFERENCES public.gta_area_conocimiento(id);


--
-- TOC entry 2856 (class 2606 OID 33255)
-- Name: gta_ac_depto_materia fk_ac_depto_materia_ac_depto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gta_ac_depto_materia
    ADD CONSTRAINT fk_ac_depto_materia_ac_depto FOREIGN KEY (ac_departamento_id) REFERENCES public.gta_ac_departamento(id);


-- Completed on 2019-03-08 00:48:57 -03

--
-- PostgreSQL database dump complete
--

