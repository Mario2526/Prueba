--
-- PostgreSQL database dump
--

\restrict IHPjfZVzmZhUol1mso8EZr6gyyz1fBMehhuosloXBxPmVQZXZRqBPz0aTsR8o3r

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

-- Started on 2026-03-16 10:05:33

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 223 (class 1259 OID 18127)
-- Name: allergens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.allergens (
    id integer NOT NULL,
    name character varying(40),
    description text
);


ALTER TABLE public.allergens OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18126)
-- Name: Allergens_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Allergens_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Allergens_id_seq" OWNER TO postgres;

--
-- TOC entry 5001 (class 0 OID 0)
-- Dependencies: 222
-- Name: Allergens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Allergens_id_seq" OWNED BY public.allergens.id;


--
-- TOC entry 219 (class 1259 OID 18110)
-- Name: batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batches (
    id integer NOT NULL,
    product_id integer NOT NULL,
    date date,
    total_units integer,
    consumed_units integer
);


ALTER TABLE public.batches OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 18108)
-- Name: Batches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Batches_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Batches_id_seq" OWNER TO postgres;

--
-- TOC entry 5002 (class 0 OID 0)
-- Dependencies: 217
-- Name: Batches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Batches_id_seq" OWNED BY public.batches.id;


--
-- TOC entry 218 (class 1259 OID 18109)
-- Name: Batches_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Batches_product_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Batches_product_id_seq" OWNER TO postgres;

--
-- TOC entry 5003 (class 0 OID 0)
-- Dependencies: 218
-- Name: Batches_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Batches_product_id_seq" OWNED BY public.batches.product_id;


--
-- TOC entry 227 (class 1259 OID 18143)
-- Name: cleaning_reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cleaning_reports (
    id integer NOT NULL,
    complete_date date,
    description text,
    "id_Users" integer
);


ALTER TABLE public.cleaning_reports OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 18142)
-- Name: Cleaning_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cleaning_reports_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Cleaning_reports_id_seq" OWNER TO postgres;

--
-- TOC entry 5004 (class 0 OID 0)
-- Dependencies: 226
-- Name: Cleaning_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cleaning_reports_id_seq" OWNED BY public.cleaning_reports.id;


--
-- TOC entry 229 (class 1259 OID 18152)
-- Name: cleaning_tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cleaning_tasks (
    id integer NOT NULL,
    name character varying(20),
    day integer
);


ALTER TABLE public.cleaning_tasks OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 18151)
-- Name: Cleaning_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Cleaning_tasks_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Cleaning_tasks_id_seq" OWNER TO postgres;

--
-- TOC entry 5005 (class 0 OID 0)
-- Dependencies: 228
-- Name: Cleaning_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Cleaning_tasks_id_seq" OWNED BY public.cleaning_tasks.id;


--
-- TOC entry 233 (class 1259 OID 18168)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    customer_name text,
    customer_phone character varying(15),
    customer_email character varying(50),
    adress text,
    price double precision,
    payment_type character varying(20),
    status character varying(10),
    delivery_date date
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 18167)
-- Name: Orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Orders_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Orders_id_seq" OWNER TO postgres;

--
-- TOC entry 5006 (class 0 OID 0)
-- Dependencies: 232
-- Name: Orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Orders_id_seq" OWNED BY public.orders.id;


--
-- TOC entry 231 (class 1259 OID 18159)
-- Name: product_request; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_request (
    id integer NOT NULL,
    description text,
    status character varying(10),
    "id_Users" integer
);


ALTER TABLE public.product_request OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 18158)
-- Name: Product_request_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Product_request_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Product_request_id_seq" OWNER TO postgres;

--
-- TOC entry 5007 (class 0 OID 0)
-- Dependencies: 230
-- Name: Product_request_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Product_request_id_seq" OWNED BY public.product_request.id;


--
-- TOC entry 221 (class 1259 OID 18118)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id integer NOT NULL,
    name character varying(20),
    description text,
    type boolean,
    price double precision,
    "id_Batches" integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 18117)
-- Name: Products_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Products_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Products_id_seq" OWNER TO postgres;

--
-- TOC entry 5008 (class 0 OID 0)
-- Dependencies: 220
-- Name: Products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Products_id_seq" OWNED BY public.products.id;


--
-- TOC entry 225 (class 1259 OID 18136)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    pin character varying(20),
    rol character varying(10),
    name character varying(40)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18135)
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Users_id_seq" OWNER TO postgres;

--
-- TOC entry 5009 (class 0 OID 0)
-- Dependencies: 224
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public.users.id;


--
-- TOC entry 235 (class 1259 OID 18177)
-- Name: wheel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.wheel (
    id integer NOT NULL,
    name character varying(40),
    probability double precision
);


ALTER TABLE public.wheel OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 18176)
-- Name: Wheel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Wheel_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Wheel_id_seq" OWNER TO postgres;

--
-- TOC entry 5010 (class 0 OID 0)
-- Dependencies: 234
-- Name: Wheel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Wheel_id_seq" OWNED BY public.wheel.id;


--
-- TOC entry 236 (class 1259 OID 18183)
-- Name: products_allergens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products_allergens (
    "id_Products" integer NOT NULL,
    "id_Allergens" integer NOT NULL
);


ALTER TABLE public.products_allergens OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 18198)
-- Name: reports_tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reports_tasks (
    "id_Cleaning_reports" integer NOT NULL,
    "id_Cleaning_tasks" integer NOT NULL
);


ALTER TABLE public.reports_tasks OWNER TO postgres;

--
-- TOC entry 4794 (class 2604 OID 18228)
-- Name: allergens id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allergens ALTER COLUMN id SET DEFAULT nextval('public."Allergens_id_seq"'::regclass);


--
-- TOC entry 4791 (class 2604 OID 18229)
-- Name: batches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches ALTER COLUMN id SET DEFAULT nextval('public."Batches_id_seq"'::regclass);


--
-- TOC entry 4792 (class 2604 OID 18230)
-- Name: batches product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches ALTER COLUMN product_id SET DEFAULT nextval('public."Batches_product_id_seq"'::regclass);


--
-- TOC entry 4796 (class 2604 OID 18231)
-- Name: cleaning_reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cleaning_reports ALTER COLUMN id SET DEFAULT nextval('public."Cleaning_reports_id_seq"'::regclass);


--
-- TOC entry 4797 (class 2604 OID 18232)
-- Name: cleaning_tasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cleaning_tasks ALTER COLUMN id SET DEFAULT nextval('public."Cleaning_tasks_id_seq"'::regclass);


--
-- TOC entry 4799 (class 2604 OID 18233)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public."Orders_id_seq"'::regclass);


--
-- TOC entry 4798 (class 2604 OID 18234)
-- Name: product_request id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_request ALTER COLUMN id SET DEFAULT nextval('public."Product_request_id_seq"'::regclass);


--
-- TOC entry 4793 (class 2604 OID 18235)
-- Name: products id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public."Products_id_seq"'::regclass);


--
-- TOC entry 4795 (class 2604 OID 18236)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- TOC entry 4800 (class 2604 OID 18237)
-- Name: wheel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wheel ALTER COLUMN id SET DEFAULT nextval('public."Wheel_id_seq"'::regclass);


--
-- TOC entry 4981 (class 0 OID 18127)
-- Dependencies: 223
-- Data for Name: allergens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.allergens (id, name, description) FROM stdin;
\.


--
-- TOC entry 4977 (class 0 OID 18110)
-- Dependencies: 219
-- Data for Name: batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batches (id, product_id, date, total_units, consumed_units) FROM stdin;
\.


--
-- TOC entry 4985 (class 0 OID 18143)
-- Dependencies: 227
-- Data for Name: cleaning_reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cleaning_reports (id, complete_date, description, "id_Users") FROM stdin;
\.


--
-- TOC entry 4987 (class 0 OID 18152)
-- Dependencies: 229
-- Data for Name: cleaning_tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cleaning_tasks (id, name, day) FROM stdin;
\.


--
-- TOC entry 4991 (class 0 OID 18168)
-- Dependencies: 233
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, customer_name, customer_phone, customer_email, adress, price, payment_type, status, delivery_date) FROM stdin;
\.


--
-- TOC entry 4989 (class 0 OID 18159)
-- Dependencies: 231
-- Data for Name: product_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_request (id, description, status, "id_Users") FROM stdin;
\.


--
-- TOC entry 4979 (class 0 OID 18118)
-- Dependencies: 221
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id, name, description, type, price, "id_Batches") FROM stdin;
\.


--
-- TOC entry 4994 (class 0 OID 18183)
-- Dependencies: 236
-- Data for Name: products_allergens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products_allergens ("id_Products", "id_Allergens") FROM stdin;
\.


--
-- TOC entry 4995 (class 0 OID 18198)
-- Dependencies: 237
-- Data for Name: reports_tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reports_tasks ("id_Cleaning_reports", "id_Cleaning_tasks") FROM stdin;
\.


--
-- TOC entry 4983 (class 0 OID 18136)
-- Dependencies: 225
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, pin, rol, name) FROM stdin;
\.


--
-- TOC entry 4993 (class 0 OID 18177)
-- Dependencies: 235
-- Data for Name: wheel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.wheel (id, name, probability) FROM stdin;
\.


--
-- TOC entry 5011 (class 0 OID 0)
-- Dependencies: 222
-- Name: Allergens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Allergens_id_seq"', 1, false);


--
-- TOC entry 5012 (class 0 OID 0)
-- Dependencies: 217
-- Name: Batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Batches_id_seq"', 1, false);


--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 218
-- Name: Batches_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Batches_product_id_seq"', 1, false);


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 226
-- Name: Cleaning_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cleaning_reports_id_seq"', 1, false);


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 228
-- Name: Cleaning_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Cleaning_tasks_id_seq"', 1, false);


--
-- TOC entry 5016 (class 0 OID 0)
-- Dependencies: 232
-- Name: Orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Orders_id_seq"', 1, false);


--
-- TOC entry 5017 (class 0 OID 0)
-- Dependencies: 230
-- Name: Product_request_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Product_request_id_seq"', 1, false);


--
-- TOC entry 5018 (class 0 OID 0)
-- Dependencies: 220
-- Name: Products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Products_id_seq"', 1, false);


--
-- TOC entry 5019 (class 0 OID 0)
-- Dependencies: 224
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);


--
-- TOC entry 5020 (class 0 OID 0)
-- Dependencies: 234
-- Name: Wheel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Wheel_id_seq"', 1, false);


--
-- TOC entry 4806 (class 2606 OID 18134)
-- Name: allergens Allergens_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.allergens
    ADD CONSTRAINT "Allergens_pk" PRIMARY KEY (id);


--
-- TOC entry 4802 (class 2606 OID 18116)
-- Name: batches Batches_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT "Batches_pk" PRIMARY KEY (id);


--
-- TOC entry 4810 (class 2606 OID 18150)
-- Name: cleaning_reports Cleaning_reports_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cleaning_reports
    ADD CONSTRAINT "Cleaning_reports_pk" PRIMARY KEY (id);


--
-- TOC entry 4812 (class 2606 OID 18157)
-- Name: cleaning_tasks Cleaning_tasks_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cleaning_tasks
    ADD CONSTRAINT "Cleaning_tasks_pk" PRIMARY KEY (id);


--
-- TOC entry 4816 (class 2606 OID 18175)
-- Name: orders Orders_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "Orders_pk" PRIMARY KEY (id);


--
-- TOC entry 4814 (class 2606 OID 18166)
-- Name: product_request Product_request_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_request
    ADD CONSTRAINT "Product_request_pk" PRIMARY KEY (id);


--
-- TOC entry 4804 (class 2606 OID 18125)
-- Name: products Products_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Products_pk" PRIMARY KEY (id);


--
-- TOC entry 4808 (class 2606 OID 18141)
-- Name: users Users_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_pk" PRIMARY KEY (id);


--
-- TOC entry 4818 (class 2606 OID 18182)
-- Name: wheel Wheel_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.wheel
    ADD CONSTRAINT "Wheel_pk" PRIMARY KEY (id);


--
-- TOC entry 4822 (class 2606 OID 18202)
-- Name: reports_tasks many_Cleaning_reports_has_many_Cleaning_tasks_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports_tasks
    ADD CONSTRAINT "many_Cleaning_reports_has_many_Cleaning_tasks_pk" PRIMARY KEY ("id_Cleaning_reports", "id_Cleaning_tasks");


--
-- TOC entry 4820 (class 2606 OID 18187)
-- Name: products_allergens many_Products_has_many_Allergens_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_allergens
    ADD CONSTRAINT "many_Products_has_many_Allergens_pk" PRIMARY KEY ("id_Products", "id_Allergens");


--
-- TOC entry 4826 (class 2606 OID 18193)
-- Name: products_allergens Allergens_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_allergens
    ADD CONSTRAINT "Allergens_fk" FOREIGN KEY ("id_Allergens") REFERENCES public.allergens(id) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4823 (class 2606 OID 18223)
-- Name: products Batches_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT "Batches_fk" FOREIGN KEY ("id_Batches") REFERENCES public.batches(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4828 (class 2606 OID 18203)
-- Name: reports_tasks Cleaning_reports_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports_tasks
    ADD CONSTRAINT "Cleaning_reports_fk" FOREIGN KEY ("id_Cleaning_reports") REFERENCES public.cleaning_reports(id) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4829 (class 2606 OID 18208)
-- Name: reports_tasks Cleaning_tasks_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports_tasks
    ADD CONSTRAINT "Cleaning_tasks_fk" FOREIGN KEY ("id_Cleaning_tasks") REFERENCES public.cleaning_tasks(id) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4827 (class 2606 OID 18188)
-- Name: products_allergens Products_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products_allergens
    ADD CONSTRAINT "Products_fk" FOREIGN KEY ("id_Products") REFERENCES public.products(id) MATCH FULL ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- TOC entry 4825 (class 2606 OID 18213)
-- Name: product_request Users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_request
    ADD CONSTRAINT "Users_fk" FOREIGN KEY ("id_Users") REFERENCES public.users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 4824 (class 2606 OID 18218)
-- Name: cleaning_reports Users_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cleaning_reports
    ADD CONSTRAINT "Users_fk" FOREIGN KEY ("id_Users") REFERENCES public.users(id) MATCH FULL ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2026-03-16 10:05:34

--
-- PostgreSQL database dump complete
--

\unrestrict IHPjfZVzmZhUol1mso8EZr6gyyz1fBMehhuosloXBxPmVQZXZRqBPz0aTsR8o3r

