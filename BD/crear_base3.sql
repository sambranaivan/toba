--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

-- Started on 2019-03-11 19:41:04 -03

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
-- TOC entry 3004 (class 1262 OID 33361)
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
-- TOC entry 3006 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 33362)
-- Name: gta_ac_departamento; Type: TABLE; Schema: public; Owner: exainfoacad
--

CREATE TABLE public.gta_ac_departamento (
    id integer NOT NULL,
    area_conocimiento_id integer,
    departamento_id integer
);


ALTER TABLE public.gta_ac_departamento OWNER TO exainfoacad;

--
-- TOC entry 197 (class 1259 OID 33365)
-- Name: gta_ac_departamento_id_seq; Type: SEQUENCE; Schema: public; Owner: exainfoacad
--

CREATE SEQUENCE public.gta_ac_departamento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gta_ac_departamento_id_seq OWNER TO exainfoacad;

--
-- TOC entry 3007 (class 0 OID 0)
-- Dependencies: 197
-- Name: gta_ac_departamento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: exainfoacad
--

ALTER SEQUENCE public.gta_ac_departamento_id_seq OWNED BY public.gta_ac_departamento.id;


--
-- TOC entry 198 (class 1259 OID 33367)
-- Name: gta_ac_depto_materia; Type: TABLE; Schema: public; Owner: exainfoacad
--

CREATE TABLE public.gta_ac_depto_materia (
    id integer NOT NULL,
    ac_departamento_id integer,
    materia character varying(5)
);


ALTER TABLE public.gta_ac_depto_materia OWNER TO exainfoacad;

--
-- TOC entry 199 (class 1259 OID 33370)
-- Name: gta_ac_materias_id_seq; Type: SEQUENCE; Schema: public; Owner: exainfoacad
--

CREATE SEQUENCE public.gta_ac_materias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gta_ac_materias_id_seq OWNER TO exainfoacad;

--
-- TOC entry 3008 (class 0 OID 0)
-- Dependencies: 199
-- Name: gta_ac_materias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: exainfoacad
--

ALTER SEQUENCE public.gta_ac_materias_id_seq OWNED BY public.gta_ac_depto_materia.id;


--
-- TOC entry 200 (class 1259 OID 33372)
-- Name: gta_area_conocimiento; Type: TABLE; Schema: public; Owner: exainfoacad
--

CREATE TABLE public.gta_area_conocimiento (
    id integer NOT NULL,
    nombre character varying(100),
    coordinador_docente_id integer
);


ALTER TABLE public.gta_area_conocimiento OWNER TO exainfoacad;

--
-- TOC entry 201 (class 1259 OID 33375)
-- Name: gta_area_conocimiento_id_seq; Type: SEQUENCE; Schema: public; Owner: exainfoacad
--

CREATE SEQUENCE public.gta_area_conocimiento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gta_area_conocimiento_id_seq OWNER TO exainfoacad;

--
-- TOC entry 3009 (class 0 OID 0)
-- Dependencies: 201
-- Name: gta_area_conocimiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: exainfoacad
--

ALTER SEQUENCE public.gta_area_conocimiento_id_seq OWNED BY public.gta_area_conocimiento.id;


--
-- TOC entry 202 (class 1259 OID 33377)
-- Name: gta_departamento; Type: TABLE; Schema: public; Owner: exainfoacad
--

CREATE TABLE public.gta_departamento (
    id integer NOT NULL,
    nombre character varying(100),
    director_docente_id integer,
    vice_director_docente_id integer,
    e_mail character varying(50)
);


ALTER TABLE public.gta_departamento OWNER TO exainfoacad;

--
-- TOC entry 203 (class 1259 OID 33380)
-- Name: gta_departamentos_id_seq; Type: SEQUENCE; Schema: public; Owner: exainfoacad
--

CREATE SEQUENCE public.gta_departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gta_departamentos_id_seq OWNER TO exainfoacad;

--
-- TOC entry 3010 (class 0 OID 0)
-- Dependencies: 203
-- Name: gta_departamentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: exainfoacad
--

ALTER SEQUENCE public.gta_departamentos_id_seq OWNED BY public.gta_departamento.id;


--
-- TOC entry 205 (class 1259 OID 33417)
-- Name: gta_info_tecnica; Type: TABLE; Schema: public; Owner: exainfoacad
--

	CREATE TABLE public.gta_info_tecnica (
		id integer NOT NULL,
		departamento_id integer,
		area_de_conocimiento_id integer,
		carrera_id character varying(5),
		plan_id character varying(5),
		materia_id character varying(5),
		fecha_desde date,
		fecha_hasta date,
		fecha_de_convocatoria date,
		nro_expediente character varying(15),
		nro_resolucion character varying(10),
		fecha_vencimiento date,
		contra_cuatrimestre boolean,
		legajo character varying(15) NOT NULL
	);


	ALTER TABLE public.gta_info_tecnica OWNER TO exainfoacad;

--
-- TOC entry 204 (class 1259 OID 33415)
-- Name: gta_info_tecnica_id_seq; Type: SEQUENCE; Schema: public; Owner: exainfoacad
--

CREATE SEQUENCE public.gta_info_tecnica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gta_info_tecnica_id_seq OWNER TO exainfoacad;

--
-- TOC entry 3011 (class 0 OID 0)
-- Dependencies: 204
-- Name: gta_info_tecnica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: exainfoacad
--

ALTER SEQUENCE public.gta_info_tecnica_id_seq OWNED BY public.gta_info_tecnica.id;


--
-- TOC entry 2848 (class 2604 OID 33382)
-- Name: gta_ac_departamento id; Type: DEFAULT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_departamento ALTER COLUMN id SET DEFAULT nextval('public.gta_ac_departamento_id_seq'::regclass);


--
-- TOC entry 2849 (class 2604 OID 33383)
-- Name: gta_ac_depto_materia id; Type: DEFAULT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_depto_materia ALTER COLUMN id SET DEFAULT nextval('public.gta_ac_materias_id_seq'::regclass);


--
-- TOC entry 2850 (class 2604 OID 33384)
-- Name: gta_area_conocimiento id; Type: DEFAULT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_area_conocimiento ALTER COLUMN id SET DEFAULT nextval('public.gta_area_conocimiento_id_seq'::regclass);


--
-- TOC entry 2851 (class 2604 OID 33385)
-- Name: gta_departamento id; Type: DEFAULT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_departamento ALTER COLUMN id SET DEFAULT nextval('public.gta_departamentos_id_seq'::regclass);


--
-- TOC entry 2852 (class 2604 OID 33420)
-- Name: gta_info_tecnica id; Type: DEFAULT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_info_tecnica ALTER COLUMN id SET DEFAULT nextval('public.gta_info_tecnica_id_seq'::regclass);


--
-- TOC entry 2989 (class 0 OID 33362)
-- Dependencies: 196
-- Data for Name: gta_ac_departamento; Type: TABLE DATA; Schema: public; Owner: exainfoacad
--

INSERT INTO public.gta_ac_departamento VALUES (1, 2, 1);


--
-- TOC entry 2991 (class 0 OID 33367)
-- Dependencies: 198
-- Data for Name: gta_ac_depto_materia; Type: TABLE DATA; Schema: public; Owner: exainfoacad
--



--
-- TOC entry 2993 (class 0 OID 33372)
-- Dependencies: 200
-- Data for Name: gta_area_conocimiento; Type: TABLE DATA; Schema: public; Owner: exainfoacad
--

INSERT INTO public.gta_area_conocimiento VALUES (2, 'area 3', 2541);


--
-- TOC entry 2995 (class 0 OID 33377)
-- Dependencies: 202
-- Data for Name: gta_departamento; Type: TABLE DATA; Schema: public; Owner: exainfoacad
--

INSERT INTO public.gta_departamento VALUES (1, 'Dep 2', 534102, 98765595, 'a@a.com');


--
-- TOC entry 2998 (class 0 OID 33417)
-- Dependencies: 205
-- Data for Name: gta_info_tecnica; Type: TABLE DATA; Schema: public; Owner: exainfoacad
--

INSERT INTO public.gta_info_tecnica VALUES (6, 1, 2, '18', 'P1', '102', '2019-03-12', '2019-03-19', NULL, '01201899', '9897/18', '2020-03-15', true, '3514');


--
-- TOC entry 3012 (class 0 OID 0)
-- Dependencies: 197
-- Name: gta_ac_departamento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: exainfoacad
--

SELECT pg_catalog.setval('public.gta_ac_departamento_id_seq', 1, true);


--
-- TOC entry 3013 (class 0 OID 0)
-- Dependencies: 199
-- Name: gta_ac_materias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: exainfoacad
--

SELECT pg_catalog.setval('public.gta_ac_materias_id_seq', 1, false);


--
-- TOC entry 3014 (class 0 OID 0)
-- Dependencies: 201
-- Name: gta_area_conocimiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: exainfoacad
--

SELECT pg_catalog.setval('public.gta_area_conocimiento_id_seq', 2, true);


--
-- TOC entry 3015 (class 0 OID 0)
-- Dependencies: 203
-- Name: gta_departamentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: exainfoacad
--

SELECT pg_catalog.setval('public.gta_departamentos_id_seq', 1, true);


--
-- TOC entry 3016 (class 0 OID 0)
-- Dependencies: 204
-- Name: gta_info_tecnica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: exainfoacad
--

SELECT pg_catalog.setval('public.gta_info_tecnica_id_seq', 6, true);


--
-- TOC entry 2854 (class 2606 OID 33387)
-- Name: gta_ac_departamento pk_ac_departamento; Type: CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_departamento
    ADD CONSTRAINT pk_ac_departamento PRIMARY KEY (id);


--
-- TOC entry 2856 (class 2606 OID 33389)
-- Name: gta_ac_depto_materia pk_ac_departamento_materia; Type: CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_depto_materia
    ADD CONSTRAINT pk_ac_departamento_materia PRIMARY KEY (id);


--
-- TOC entry 2858 (class 2606 OID 33391)
-- Name: gta_area_conocimiento pk_area_conocimiento; Type: CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_area_conocimiento
    ADD CONSTRAINT pk_area_conocimiento PRIMARY KEY (id);


--
-- TOC entry 2860 (class 2606 OID 33393)
-- Name: gta_departamento pk_departamento; Type: CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (id);


--
-- TOC entry 2862 (class 2606 OID 33422)
-- Name: gta_info_tecnica pk_info_tecnica; Type: CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_info_tecnica
    ADD CONSTRAINT pk_info_tecnica PRIMARY KEY (id);


--
-- TOC entry 2863 (class 2606 OID 33394)
-- Name: gta_ac_departamento fk_ac_conocimiento_departamento; Type: FK CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_departamento
    ADD CONSTRAINT fk_ac_conocimiento_departamento FOREIGN KEY (departamento_id) REFERENCES public.gta_departamento(id);


--
-- TOC entry 2864 (class 2606 OID 33399)
-- Name: gta_ac_departamento fk_ac_departamento_ac; Type: FK CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_departamento
    ADD CONSTRAINT fk_ac_departamento_ac FOREIGN KEY (area_conocimiento_id) REFERENCES public.gta_area_conocimiento(id);


--
-- TOC entry 2865 (class 2606 OID 33404)
-- Name: gta_ac_depto_materia fk_ac_depto_materia_ac_depto; Type: FK CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_ac_depto_materia
    ADD CONSTRAINT fk_ac_depto_materia_ac_depto FOREIGN KEY (ac_departamento_id) REFERENCES public.gta_ac_departamento(id);


--
-- TOC entry 2867 (class 2606 OID 33428)
-- Name: gta_info_tecnica fk_info_tecnica_ac; Type: FK CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_info_tecnica
    ADD CONSTRAINT fk_info_tecnica_ac FOREIGN KEY (area_de_conocimiento_id) REFERENCES public.gta_area_conocimiento(id);


--
-- TOC entry 2866 (class 2606 OID 33423)
-- Name: gta_info_tecnica fk_info_tecnica_departamento; Type: FK CONSTRAINT; Schema: public; Owner: exainfoacad
--

ALTER TABLE ONLY public.gta_info_tecnica
    ADD CONSTRAINT fk_info_tecnica_departamento FOREIGN KEY (departamento_id) REFERENCES public.gta_departamento(id);


-- Completed on 2019-03-11 19:41:05 -03

--
-- PostgreSQL database dump complete
--

