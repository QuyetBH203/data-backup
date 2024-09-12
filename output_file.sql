--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19 (Debian 12.19-1.pgdg120+1)
-- Dumped by pg_dump version 12.19 (Debian 12.19-1.pgdg120+1)

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
-- Name: adonis_schema; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.adonis_schema (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    batch integer NOT NULL,
    migration_time timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.adonis_schema OWNER TO blockchain;

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: blockchain
--

CREATE SEQUENCE public.adonis_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adonis_schema_id_seq OWNER TO blockchain;

--
-- Name: adonis_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blockchain
--

ALTER SEQUENCE public.adonis_schema_id_seq OWNED BY public.adonis_schema.id;


--
-- Name: adonis_schema_versions; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.adonis_schema_versions (
    version integer NOT NULL
);


ALTER TABLE public.adonis_schema_versions OWNER TO blockchain;

--
-- Name: block_numbers; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.block_numbers (
    id integer NOT NULL,
    block_number integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.block_numbers OWNER TO blockchain;

--
-- Name: block_numbers_id_seq; Type: SEQUENCE; Schema: public; Owner: blockchain
--

CREATE SEQUENCE public.block_numbers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.block_numbers_id_seq OWNER TO blockchain;

--
-- Name: block_numbers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blockchain
--

ALTER SEQUENCE public.block_numbers_id_seq OWNED BY public.block_numbers.id;


--
-- Name: latest_blocks; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.latest_blocks (
    id integer NOT NULL,
    erc20 integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.latest_blocks OWNER TO blockchain;

--
-- Name: latest_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: blockchain
--

CREATE SEQUENCE public.latest_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.latest_blocks_id_seq OWNER TO blockchain;

--
-- Name: latest_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blockchain
--

ALTER SEQUENCE public.latest_blocks_id_seq OWNED BY public.latest_blocks.id;


--
-- Name: number_erc20; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.number_erc20 (
    id integer NOT NULL,
    block_number_erc20 integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.number_erc20 OWNER TO blockchain;

--
-- Name: number_erc20_id_seq; Type: SEQUENCE; Schema: public; Owner: blockchain
--

CREATE SEQUENCE public.number_erc20_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_erc20_id_seq OWNER TO blockchain;

--
-- Name: number_erc20_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blockchain
--

ALTER SEQUENCE public.number_erc20_id_seq OWNED BY public.number_erc20.id;


--
-- Name: transactions; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.transactions (
    id integer NOT NULL,
    transaction_hash character varying(255) NOT NULL,
    method character varying(255) NOT NULL,
    block integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    "from" character varying(255) NOT NULL,
    "to" character varying(255) NOT NULL,
    token_transfer character varying(255) NOT NULL,
    gas_used bigint NOT NULL,
    gas_price bigint NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.transactions OWNER TO blockchain;

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: blockchain
--

CREATE SEQUENCE public.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transactions_id_seq OWNER TO blockchain;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blockchain
--

ALTER SEQUENCE public.transactions_id_seq OWNED BY public.transactions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: blockchain
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nonce integer DEFAULT 62884 NOT NULL,
    public_address character varying(255) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.users OWNER TO blockchain;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: blockchain
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO blockchain;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: blockchain
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: adonis_schema id; Type: DEFAULT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.adonis_schema ALTER COLUMN id SET DEFAULT nextval('public.adonis_schema_id_seq'::regclass);


--
-- Name: block_numbers id; Type: DEFAULT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.block_numbers ALTER COLUMN id SET DEFAULT nextval('public.block_numbers_id_seq'::regclass);


--
-- Name: latest_blocks id; Type: DEFAULT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.latest_blocks ALTER COLUMN id SET DEFAULT nextval('public.latest_blocks_id_seq'::regclass);


--
-- Name: number_erc20 id; Type: DEFAULT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.number_erc20 ALTER COLUMN id SET DEFAULT nextval('public.number_erc20_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.transactions ALTER COLUMN id SET DEFAULT nextval('public.transactions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: adonis_schema; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.adonis_schema (id, name, batch, migration_time) FROM stdin;
19	database/migrations/1719477736267_create_users_table	1	2024-09-11 03:42:53.385875+00
20	database/migrations/1725857971879_create_transactions_table	1	2024-09-11 03:42:53.40184+00
21	database/migrations/1725923771336_create_block_numbers_table	1	2024-09-11 03:42:53.411575+00
25	database/migrations/1726115832364_create_block_number_erc_20_s_table	2	2024-09-12 06:43:59.206146+00
27	database/migrations/1726123984659_create_latest_blocks_table	3	2024-09-12 06:54:50.856551+00
\.


--
-- Data for Name: adonis_schema_versions; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.adonis_schema_versions (version) FROM stdin;
2
\.


--
-- Data for Name: block_numbers; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.block_numbers (id, block_number, created_at, updated_at) FROM stdin;
33	43798207	\N	\N
34	43801291	2024-09-12 07:01:31.232+00	2024-09-12 07:01:31.233+00
35	43801418	2024-09-12 07:08:00.799+00	2024-09-12 07:08:00.799+00
36	43801454	2024-09-12 07:10:00.596+00	2024-09-12 07:10:00.596+00
37	43801767	2024-09-12 07:26:31.104+00	2024-09-12 07:26:31.104+00
38	43801859	2024-09-12 07:30:01.438+00	2024-09-12 07:30:01.438+00
\.


--
-- Data for Name: latest_blocks; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.latest_blocks (id, erc20, created_at, updated_at) FROM stdin;
1	43798202	\N	\N
\.


--
-- Data for Name: number_erc20; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.number_erc20 (id, block_number_erc20, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: transactions; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.transactions (id, transaction_hash, method, block, "timestamp", "from", "to", token_transfer, gas_used, gas_price, created_at, updated_at) FROM stdin;
31	0x8d20dbaf9619476b2326b7211569f057cc097d3c6f2c55dc74a3bb1c15b1cd9c	Deposited	43801291	2024-09-12 07:01:30+00	0x0c5cf1011cc58c8d122a6d7645f024220dc2d340	0x27a75e3b55f4a828cd9a4e42ecc42daa217a43bd	50000000000000000000	220941	3000000000	2024-09-12 07:01:32.361+00	2024-09-12 07:01:32.361+00
32	0x6b98e687dcad89edb14c20e12c39c82c8039b8ca8fc94e911346666c3b7b7a9e	Deposited	43801418	2024-09-12 07:07:53+00	0x0c5cf1011cc58c8d122a6d7645f024220dc2d340	0x27a75e3b55f4a828cd9a4e42ecc42daa217a43bd	1000000000000000000000	150184	3000000000	2024-09-12 07:08:02.032+00	2024-09-12 07:08:02.032+00
33	0x0aee41c259590493dbe6d4168440b6cdb64c8d91e594f622821f4f320b8f9112	Deposited	43801454	2024-09-12 07:09:41+00	0x0c5cf1011cc58c8d122a6d7645f024220dc2d340	0x27a75e3b55f4a828cd9a4e42ecc42daa217a43bd	200000000000000000000	133084	3000000000	2024-09-12 07:10:01.642+00	2024-09-12 07:10:01.642+00
34	0xafb4e908d34914bb34de5b4d9ba6b248da645a8063df01402077ded3b2c66e5d	Deposited	43801767	2024-09-12 07:25:20+00	0x0c5cf1011cc58c8d122a6d7645f024220dc2d340	0x27a75e3b55f4a828cd9a4e42ecc42daa217a43bd	1000000000000000000000	133084	3000000000	2024-09-12 07:26:31.847+00	2024-09-12 07:26:31.847+00
35	0x180dd83db7e438aa5f4ff65af4267d05bc24182ece454b004728bfe307eff839	NFTMinted	43801859	2024-09-12 07:29:56+00	0x0c5cf1011cc58c8d122a6d7645f024220dc2d340	0x27a75e3b55f4a828cd9a4e42ecc42daa217a43bd	1	281043	3000000000	2024-09-12 07:30:02.618+00	2024-09-12 07:30:02.618+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: blockchain
--

COPY public.users (id, nonce, public_address, created_at, updated_at) FROM stdin;
6	533076	0x70997970c51812dc3a010c7d01b50e0d17dc79c8	2024-09-12 02:54:03.565+00	2024-09-12 02:54:05.296+00
5	179971	0x976ea74026e726554db657fa54763abd0c3a0aa9	2024-09-11 07:44:28.116+00	2024-09-11 07:44:29.845+00
3	841518	0x1cbd3b2770909d4e10f157cabc84c7264073c9ec	2024-09-11 03:50:26.587+00	2024-09-12 03:59:37.275+00
4	198148	0x4598fe4f7c07e3767b588e3167701b928fb76d63	2024-09-11 05:20:37.046+00	2024-09-12 07:04:24.22+00
1	865045	0x0c5cf1011cc58c8d122a6d7645f024220dc2d340	2024-09-11 03:43:42.557+00	2024-09-12 07:05:50.106+00
2	74402	0x9965507d1a55bcc2695c58ba16fb37d819b0a4dc	2024-09-11 03:50:16.357+00	2024-09-11 17:10:38.838+00
\.


--
-- Name: adonis_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blockchain
--

SELECT pg_catalog.setval('public.adonis_schema_id_seq', 27, true);


--
-- Name: block_numbers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blockchain
--

SELECT pg_catalog.setval('public.block_numbers_id_seq', 38, true);


--
-- Name: latest_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blockchain
--

SELECT pg_catalog.setval('public.latest_blocks_id_seq', 1, true);


--
-- Name: number_erc20_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blockchain
--

SELECT pg_catalog.setval('public.number_erc20_id_seq', 1, false);


--
-- Name: transactions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blockchain
--

SELECT pg_catalog.setval('public.transactions_id_seq', 35, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: blockchain
--

SELECT pg_catalog.setval('public.users_id_seq', 6, true);


--
-- Name: adonis_schema adonis_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.adonis_schema
    ADD CONSTRAINT adonis_schema_pkey PRIMARY KEY (id);


--
-- Name: adonis_schema_versions adonis_schema_versions_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.adonis_schema_versions
    ADD CONSTRAINT adonis_schema_versions_pkey PRIMARY KEY (version);


--
-- Name: block_numbers block_numbers_block_number_unique; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.block_numbers
    ADD CONSTRAINT block_numbers_block_number_unique UNIQUE (block_number);


--
-- Name: block_numbers block_numbers_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.block_numbers
    ADD CONSTRAINT block_numbers_pkey PRIMARY KEY (id);


--
-- Name: latest_blocks latest_blocks_erc20_unique; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.latest_blocks
    ADD CONSTRAINT latest_blocks_erc20_unique UNIQUE (erc20);


--
-- Name: latest_blocks latest_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.latest_blocks
    ADD CONSTRAINT latest_blocks_pkey PRIMARY KEY (id);


--
-- Name: number_erc20 number_erc20_block_number_erc20_unique; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.number_erc20
    ADD CONSTRAINT number_erc20_block_number_erc20_unique UNIQUE (block_number_erc20);


--
-- Name: number_erc20 number_erc20_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.number_erc20
    ADD CONSTRAINT number_erc20_pkey PRIMARY KEY (id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_public_address_unique; Type: CONSTRAINT; Schema: public; Owner: blockchain
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_public_address_unique UNIQUE (public_address);


--
-- PostgreSQL database dump complete
--

