--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9
-- Dumped by pg_dump version 16.9

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
-- Name: portfolio; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.portfolio (
    id integer NOT NULL,
    user_id integer,
    stock_id integer,
    quantity integer NOT NULL,
    purchase_price numeric(10,2),
    added_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT portfolio_quantity_check CHECK ((quantity > 0))
);


--
-- Name: portfolio_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.portfolio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portfolio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.portfolio_id_seq OWNED BY public.portfolio.id;


--
-- Name: stocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.stocks (
    id integer NOT NULL,
    stock_name character varying(100) NOT NULL,
    ticker_symbol character varying(10) NOT NULL,
    exchange character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: stocks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.stocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: stocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.stocks_id_seq OWNED BY public.stocks.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(50) NOT NULL,
    password_hash character varying(255) NOT NULL,
    email character varying(100),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: portfolio id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portfolio ALTER COLUMN id SET DEFAULT nextval('public.portfolio_id_seq'::regclass);


--
-- Name: stocks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks ALTER COLUMN id SET DEFAULT nextval('public.stocks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: portfolio; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.portfolio (id, user_id, stock_id, quantity, purchase_price, added_at) FROM stdin;
\.


--
-- Data for Name: stocks; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.stocks (id, stock_name, ticker_symbol, exchange, created_at) FROM stdin;
1	20 Microns Limited	20MICRONS	\N	2025-09-19 22:38:43.031454
2	21st Century Management Services Limited	21STCENMGM	\N	2025-09-19 22:38:43.031454
3	360 ONE WAM LIMITED	360ONE	\N	2025-09-19 22:38:43.031454
4	3i Infotech Limited	3IINFOLTD	\N	2025-09-19 22:38:43.031454
5	3M India Limited	3MINDIA	\N	2025-09-19 22:38:43.031454
6	3P Land Holdings Limited	3PLAND	\N	2025-09-19 22:38:43.031454
7	5Paisa Capital Limited	5PAISA	\N	2025-09-19 22:38:43.031454
8	63 moons technologies limited	63MOONS	\N	2025-09-19 22:38:43.031454
9	A2Z Infra Engineering Limited	A2ZINFRA	\N	2025-09-19 22:38:43.031454
10	AAA Technologies Limited	AAATECH	\N	2025-09-19 22:38:43.031454
11	Aadhar Housing Finance Limited	AADHARHFC	\N	2025-09-19 22:38:43.031454
12	Aakash Exploration Services Limited	AAKASH	\N	2025-09-19 22:38:43.031454
13	Aarey Drugs & Pharmaceuticals Limited	AAREYDRUGS	\N	2025-09-19 22:38:43.031454
14	Aaron Industries Limited	AARON	\N	2025-09-19 22:38:43.031454
15	Aartech Solonics Limited	AARTECH	\N	2025-09-19 22:38:43.031454
16	Aarti Drugs Limited	AARTIDRUGS	\N	2025-09-19 22:38:43.031454
17	Aarti Industries Limited	AARTIIND	\N	2025-09-19 22:38:43.031454
18	Aarti Pharmalabs Limited	AARTIPHARM	\N	2025-09-19 22:38:43.031454
19	Aarti Surfactants Limited	AARTISURF	\N	2025-09-19 22:38:43.031454
20	Aarvee Denims & Exports Limited	AARVEEDEN	\N	2025-09-19 22:38:43.031454
21	Aarvi Encon Limited	AARVI	\N	2025-09-19 22:38:43.031454
22	Aavas Financiers Limited	AAVAS	\N	2025-09-19 22:38:43.031454
23	Aban Offshore Limited	ABAN	\N	2025-09-19 22:38:43.031454
24	ABB India Limited	ABB	\N	2025-09-19 22:38:43.031454
25	Abbott India Limited	ABBOTINDIA	\N	2025-09-19 22:38:43.031454
26	Aditya Birla Capital Limited	ABCAPITAL	\N	2025-09-19 22:38:43.031454
27	Allied Blenders and Distillers Limited	ABDL	\N	2025-09-19 22:38:43.031454
28	Aditya Birla Fashion and Retail Limited	ABFRL	\N	2025-09-19 22:38:43.031454
29	A B Infrabuild Limited	ABINFRA	\N	2025-09-19 22:38:43.031454
30	Aditya Birla Lifestyle Brands Limited	ABLBL	\N	2025-09-19 22:38:43.031454
31	ABM International Limited	ABMINTLLTD	\N	2025-09-19 22:38:43.031454
32	Aditya Birla Real Estate Limited	ABREL	\N	2025-09-19 22:38:43.031454
33	Aditya Birla Sun Life AMC Limited	ABSLAMC	\N	2025-09-19 22:38:43.031454
34	ACC Limited	ACC	\N	2025-09-19 22:38:43.031454
35	Accelya Solutions India Limited	ACCELYA	\N	2025-09-19 22:38:43.031454
36	Accuracy Shipping Limited	ACCURACY	\N	2025-09-19 22:38:43.031454
37	Action Construction Equipment Limited	ACE	\N	2025-09-19 22:38:43.031454
38	Ace Integrated Solutions Limited	ACEINTEG	\N	2025-09-19 22:38:43.031454
39	Archean Chemical Industries Limited	ACI	\N	2025-09-19 22:38:43.031454
40	Andhra Cements Limited	ACL	\N	2025-09-19 22:38:43.031454
41	Allcargo Gati Limited	ACLGATI	\N	2025-09-19 22:38:43.031454
42	Acme Solar Holdings Limited	ACMESOLAR	\N	2025-09-19 22:38:43.031454
43	Acutaas Chemicals Limited	ACUTAAS	\N	2025-09-19 22:38:43.031454
44	Adani Energy Solutions Limited	ADANIENSOL	\N	2025-09-19 22:38:43.031454
45	Adani Enterprises Limited	ADANIENT	\N	2025-09-19 22:38:43.031454
46	Adani Green Energy Limited	ADANIGREEN	\N	2025-09-19 22:38:43.031454
47	Adani Ports and Special Economic Zone Limited	ADANIPORTS	\N	2025-09-19 22:38:43.031454
48	Adani Power Limited	ADANIPOWER	\N	2025-09-19 22:38:43.031454
49	ADF Foods Limited	ADFFOODS	\N	2025-09-19 22:38:43.031454
50	Archidply Decor Limited	ADL	\N	2025-09-19 22:38:43.031454
51	Ador Welding Limited	ADOR	\N	2025-09-19 22:38:43.031454
52	Adroit Infotech Limited	ADROITINFO	\N	2025-09-19 22:38:43.031454
53	Allied Digital Services Limited	ADSL	\N	2025-09-19 22:38:43.031454
54	Advani Hotels & Resorts (India) Limited	ADVANIHOTR	\N	2025-09-19 22:38:43.031454
55	Advanced Enzyme Technologies Limited	ADVENZYMES	\N	2025-09-19 22:38:43.031454
56	Aegis Logistics Limited	AEGISLOG	\N	2025-09-19 22:38:43.031454
57	Aegis Vopak Terminals Limited	AEGISVOPAK	\N	2025-09-19 22:38:43.031454
58	Aeroflex Enterprises Limited	AEROENTER	\N	2025-09-19 22:38:43.031454
59	Aeroflex Industries Limited	AEROFLEX	\N	2025-09-19 22:38:43.031454
60	Aeroflex Neu Limited	AERONEU	\N	2025-09-19 22:38:43.031454
61	Aether Industries Limited	AETHER	\N	2025-09-19 22:38:43.031454
62	Afcons Infrastructure Limited	AFCONS	\N	2025-09-19 22:38:43.031454
63	Affle 3i Limited	AFFLE	\N	2025-09-19 22:38:43.031454
64	Affordable Robotic & Automation Limited	AFFORDABLE	\N	2025-09-19 22:38:43.031454
65	Akme Fintrade (India) Limited	AFIL	\N	2025-09-19 22:38:43.031454
66	Abans Financial Services Limited	AFSL	\N	2025-09-19 22:38:43.031454
67	Agarwal Industrial Corporation Limited	AGARIND	\N	2025-09-19 22:38:43.031454
68	Dr. Agarwal's Health Care Limited	AGARWALEYE	\N	2025-09-19 22:38:43.031454
69	AGI Greenpac Limited	AGI	\N	2025-09-19 22:38:43.031454
70	Agi Infra Limited	AGIIL	\N	2025-09-19 22:38:43.031454
71	Agri-Tech (India) Limited	AGRITECH	\N	2025-09-19 22:38:43.031454
72	Agro Phos India Limited	AGROPHOS	\N	2025-09-19 22:38:43.031454
73	AGS Transact Technologies Limited	AGSTRA	\N	2025-09-19 22:38:43.031454
74	Anlon Healthcare Limited	AHCL	\N	2025-09-19 22:38:43.031454
75	Ahlada Engineers Limited	AHLADA	\N	2025-09-19 22:38:43.031454
76	Asian Hotels (East) Limited	AHLEAST	\N	2025-09-19 22:38:43.031454
77	Ahluwalia Contracts (India) Limited	AHLUCONT	\N	2025-09-19 22:38:43.031454
78	AIA Engineering Limited	AIAENG	\N	2025-09-19 22:38:43.031454
79	Authum Investment & Infrastructure Limited	AIIL	\N	2025-09-19 22:38:43.031454
80	Airan Limited	AIRAN	\N	2025-09-19 22:38:43.031454
81	Airo Lam limited	AIROLAM	\N	2025-09-19 22:38:43.031454
82	Ajanta Pharma Limited	AJANTPHARM	\N	2025-09-19 22:38:43.031454
83	Ajax Engineering Limited	AJAXENGG	\N	2025-09-19 22:38:43.031454
84	Ajmera Realty & Infra India Limited	AJMERA	\N	2025-09-19 22:38:43.031454
85	Ajooni Biotech Limited	AJOONI	\N	2025-09-19 22:38:43.031454
86	Akash Infra-Projects Limited	AKASH	\N	2025-09-19 22:38:43.031454
87	Akg Exim Limited	AKG	\N	2025-09-19 22:38:43.031454
88	AKI India Limited	AKI	\N	2025-09-19 22:38:43.031454
89	Akshar Spintex Limited	AKSHAR	\N	2025-09-19 22:38:43.031454
90	AksharChem India Limited	AKSHARCHEM	\N	2025-09-19 22:38:43.031454
91	Aksh Optifibre Limited	AKSHOPTFBR	\N	2025-09-19 22:38:43.031454
92	Akums Drugs and Pharmaceuticals Limited	AKUMS	\N	2025-09-19 22:38:43.031454
93	Akzo Nobel India Limited	AKZOINDIA	\N	2025-09-19 22:38:43.031454
94	Alankit Limited	ALANKIT	\N	2025-09-19 22:38:43.031454
95	Albert David Limited	ALBERTDAVD	\N	2025-09-19 22:38:43.031454
96	Alembic Limited	ALEMBICLTD	\N	2025-09-19 22:38:43.031454
97	Alicon Castalloy Limited	ALICON	\N	2025-09-19 22:38:43.031454
98	Alivus Life Sciences Limited	ALIVUS	\N	2025-09-19 22:38:43.031454
99	Alkali Metals Limited	ALKALI	\N	2025-09-19 22:38:43.031454
100	Alkem Laboratories Limited	ALKEM	\N	2025-09-19 22:38:43.031454
101	Alkyl Amines Chemicals Limited	ALKYLAMINE	\N	2025-09-19 22:38:43.031454
102	Allcargo Logistics Limited	ALLCARGO	\N	2025-09-19 22:38:43.031454
103	Alldigi Tech Limited	ALLDIGI	\N	2025-09-19 22:38:43.031454
104	All Time Plastics Limited	ALLTIME	\N	2025-09-19 22:38:43.031454
105	Almondz Global Securities Limited	ALMONDZ	\N	2025-09-19 22:38:43.031454
106	Alok Industries Limited	ALOKINDS	\N	2025-09-19 22:38:43.031454
107	Alpa Laboratories Limited	ALPA	\N	2025-09-19 22:38:43.031454
108	Alphageo (India) Limited	ALPHAGEO	\N	2025-09-19 22:38:43.031454
109	Alps Industries Limited	ALPSINDUS	\N	2025-09-19 22:38:43.031454
110	Amanta Healthcare Limited	AMANTA	\N	2025-09-19 22:38:43.031454
111	Amber Enterprises India Limited	AMBER	\N	2025-09-19 22:38:43.031454
112	Ambica Agarbathies & Aroma industries Limited	AMBICAAGAR	\N	2025-09-19 22:38:43.031454
113	Ambika Cotton Mills Limited	AMBIKCO	\N	2025-09-19 22:38:43.031454
114	Ambuja Cements Limited	AMBUJACEM	\N	2025-09-19 22:38:43.031454
115	AMD Industries Limited	AMDIND	\N	2025-09-19 22:38:43.031454
116	Amj Land Holdings Limited	AMJLAND	\N	2025-09-19 22:38:43.031454
117	Amines & Plasticizers Limited	AMNPLST	\N	2025-09-19 22:38:43.031454
118	Amrutanjan Health Care Limited	AMRUTANJAN	\N	2025-09-19 22:38:43.031454
119	Anand Rathi Wealth Limited	ANANDRATHI	\N	2025-09-19 22:38:43.031454
120	Anant Raj Limited	ANANTRAJ	\N	2025-09-19 22:38:43.031454
121	ANDHRA PAPER LIMITED	ANDHRAPAP	\N	2025-09-19 22:38:43.031454
122	The Andhra Sugars Limited	ANDHRSUGAR	\N	2025-09-19 22:38:43.031454
123	Angel One Limited	ANGELONE	\N	2025-09-19 22:38:43.031454
124	Anik Industries Limited	ANIKINDS	\N	2025-09-19 22:38:43.031454
125	Ankit Metal & Power Limited	ANKITMETAL	\N	2025-09-19 22:38:43.031454
126	Anmol India Limited	ANMOL	\N	2025-09-19 22:38:43.031454
127	Ansal Properties & Infrastructure Limited	ANSALAPI	\N	2025-09-19 22:38:43.031454
128	Antarctica Limited	ANTGRAPHIC	\N	2025-09-19 22:38:43.031454
129	Anthem Biosciences Limited	ANTHEM	\N	2025-09-19 22:38:43.031454
130	Anuh Pharma Limited	ANUHPHR	\N	2025-09-19 22:38:43.031454
131	The Anup Engineering Limited	ANUP	\N	2025-09-19 22:38:43.031454
132	Anupam Rasayan India Limited	ANURAS	\N	2025-09-19 22:38:43.031454
133	Apar Industries Limited	APARINDS	\N	2025-09-19 22:38:43.031454
134	Anjani Portland Cement Limited	APCL	\N	2025-09-19 22:38:43.031454
135	Apcotex Industries Limited	APCOTEXIND	\N	2025-09-19 22:38:43.031454
136	Apex Frozen Foods Limited	APEX	\N	2025-09-19 22:38:43.031454
137	APL Apollo Tubes Limited	APLAPOLLO	\N	2025-09-19 22:38:43.031454
138	Alembic Pharmaceuticals Limited	APLLTD	\N	2025-09-19 22:38:43.031454
139	Apollo Micro Systems Limited	APOLLO	\N	2025-09-19 22:38:43.031454
140	Apollo Hospitals Enterprise Limited	APOLLOHOSP	\N	2025-09-19 22:38:43.031454
141	Apollo Pipes Limited	APOLLOPIPE	\N	2025-09-19 22:38:43.031454
142	Apollo Tyres Limited	APOLLOTYRE	\N	2025-09-19 22:38:43.031454
143	Apollo Sindoori Hotels Limited	APOLSINHOT	\N	2025-09-19 22:38:43.031454
144	Aptech Limited	APTECHT	\N	2025-09-19 22:38:43.031454
145	Aptus Value Housing Finance India Limited	APTUS	\N	2025-09-19 22:38:43.031454
146	Archidply Industries Limited	ARCHIDPLY	\N	2025-09-19 22:38:43.031454
147	Archies Limited	ARCHIES	\N	2025-09-19 22:38:43.031454
148	Amara Raja Energy & Mobility Limited	ARE&M	\N	2025-09-19 22:38:43.031454
149	Rajdarshan Industries Limited	ARENTERP	\N	2025-09-19 22:38:43.031454
150	Arfin India Limited	ARFIN	\N	2025-09-19 22:38:43.031454
151	Aries Agro Limited	ARIES	\N	2025-09-19 22:38:43.031454
152	Arihant Capital Markets Limited	ARIHANTCAP	\N	2025-09-19 22:38:43.031454
153	Arihant Superstructures Limited	ARIHANTSUP	\N	2025-09-19 22:38:43.031454
154	Arisinfra Solutions Limited	ARISINFRA	\N	2025-09-19 22:38:43.031454
155	Arkade Developers Limited	ARKADE	\N	2025-09-19 22:38:43.031454
156	Arman Financial Services Limited	ARMANFIN	\N	2025-09-19 22:38:43.031454
157	Aro Granite Industries Limited	AROGRANITE	\N	2025-09-19 22:38:43.031454
158	Arrow Greentech Limited	ARROWGREEN	\N	2025-09-19 22:38:43.031454
159	Arshiya Limited	ARSHIYA	\N	2025-09-19 22:38:43.031454
160	Artemis Medicare Services Limited	ARTEMISMED	\N	2025-09-19 22:38:43.031454
161	Art Nirman Limited	ARTNIRMAN	\N	2025-09-19 22:38:43.031454
162	Arvee Laboratories (India) Limited	ARVEE	\N	2025-09-19 22:38:43.031454
163	Arvind Limited	ARVIND	\N	2025-09-19 22:38:43.031454
164	Arvind Fashions Limited	ARVINDFASN	\N	2025-09-19 22:38:43.031454
165	Arvind SmartSpaces Limited	ARVSMART	\N	2025-09-19 22:38:43.031454
166	Asahi India Glass Limited	ASAHIINDIA	\N	2025-09-19 22:38:43.031454
167	Asahi Songwon Colors Limited	ASAHISONG	\N	2025-09-19 22:38:43.031454
168	Automotive Stampings and Assemblies Limited	ASAL	\N	2025-09-19 22:38:43.031454
169	Associated Alcohols & Breweries Ltd.	ASALCBR	\N	2025-09-19 22:38:43.031454
170	Ashapura Minechem Limited	ASHAPURMIN	\N	2025-09-19 22:38:43.031454
171	Ashiana Housing Limited	ASHIANA	\N	2025-09-19 22:38:43.031454
172	Ashima Limited	ASHIMASYN	\N	2025-09-19 22:38:43.031454
173	Ashoka Buildcon Limited	ASHOKA	\N	2025-09-19 22:38:43.031454
174	Ashoka Metcast Limited	ASHOKAMET	\N	2025-09-19 22:38:43.031454
175	Ashok Leyland Limited	ASHOKLEY	\N	2025-09-19 22:38:43.031454
176	Asian Energy Services Limited	ASIANENE	\N	2025-09-19 22:38:43.031454
177	Asian Hotels (North) Limited	ASIANHOTNR	\N	2025-09-19 22:38:43.031454
178	Asian Paints Limited	ASIANPAINT	\N	2025-09-19 22:38:43.031454
179	Asian Granito India Limited	ASIANTILES	\N	2025-09-19 22:38:43.031454
180	ASK Automotive Limited	ASKAUTOLTD	\N	2025-09-19 22:38:43.031454
181	Bartronics India Limited	ASMS	\N	2025-09-19 22:38:43.031454
182	Aspinwall and Company Limited	ASPINWALL	\N	2025-09-19 22:38:43.031454
183	Astec LifeSciences Limited	ASTEC	\N	2025-09-19 22:38:43.031454
184	Aster DM Healthcare Limited	ASTERDM	\N	2025-09-19 22:38:43.031454
185	Astral Limited	ASTRAL	\N	2025-09-19 22:38:43.031454
186	Astra Microwave Products Limited	ASTRAMICRO	\N	2025-09-19 22:38:43.031454
187	AstraZeneca Pharma India Limited	ASTRAZEN	\N	2025-09-19 22:38:43.031454
188	Astron Paper & Board Mill Limited	ASTRON	\N	2025-09-19 22:38:43.031454
189	Atal Realtech Limited	ATALREAL	\N	2025-09-19 22:38:43.031454
190	Atam Valves Limited	ATAM	\N	2025-09-19 22:38:43.031454
191	Adani Total Gas Limited	ATGL	\N	2025-09-19 22:38:43.031454
192	Ather Energy Limited	ATHERENERG	\N	2025-09-19 22:38:43.031454
193	Allcargo Terminals Limited	ATL	\N	2025-09-19 22:38:43.031454
194	ATLANTAA LIMITED	ATLANTAA	\N	2025-09-19 22:38:43.031454
195	Atlas Cycles (Haryana) Limited	ATLASCYCLE	\N	2025-09-19 22:38:43.031454
196	Atul Limited	ATUL	\N	2025-09-19 22:38:43.031454
197	Atul Auto Limited	ATULAUTO	\N	2025-09-19 22:38:43.031454
198	AU Small Finance Bank Limited	AUBANK	\N	2025-09-19 22:38:43.031454
199	Aurionpro Solutions Limited	AURIONPRO	\N	2025-09-19 22:38:43.031454
200	Aurobindo Pharma Limited	AUROPHARMA	\N	2025-09-19 22:38:43.031454
201	Aurum PropTech Limited	AURUM	\N	2025-09-19 22:38:43.031454
202	Ausom Enterprise Limited	AUSOMENT	\N	2025-09-19 22:38:43.031454
203	Automotive Axles Limited	AUTOAXLES	\N	2025-09-19 22:38:43.031454
204	Autoline Industries Limited	AUTOIND	\N	2025-09-19 22:38:43.031454
205	Avadh Sugar & Energy Limited	AVADHSUGAR	\N	2025-09-19 22:38:43.031454
206	Avalon Technologies Limited	AVALON	\N	2025-09-19 22:38:43.031454
207	Avantel Limited	AVANTEL	\N	2025-09-19 22:38:43.031454
208	Avanti Feeds Limited	AVANTIFEED	\N	2025-09-19 22:38:43.031454
209	AVG Logistics Limited	AVG	\N	2025-09-19 22:38:43.031454
210	Aditya Vision Limited	AVL	\N	2025-09-19 22:38:43.031454
211	Avonmore Capital & Management Services Limited	AVONMORE	\N	2025-09-19 22:38:43.031454
212	AVRO INDIA LIMITED	AVROIND	\N	2025-09-19 22:38:43.031454
213	AVT Natural Products Limited	AVTNPL	\N	2025-09-19 22:38:43.031454
214	Awfis Space Solutions Limited	AWFIS	\N	2025-09-19 22:38:43.031454
215	Antony Waste Handling Cell Limited	AWHCL	\N	2025-09-19 22:38:43.031454
216	AWL Agri Business Limited	AWL	\N	2025-09-19 22:38:43.031454
217	Axis Bank Limited	AXISBANK	\N	2025-09-19 22:38:43.031454
218	AXISCADES Technologies Limited	AXISCADES	\N	2025-09-19 22:38:43.031454
219	Axita Cotton Limited	AXITA	\N	2025-09-19 22:38:43.031454
220	AYM Syntex Limited	AYMSYNTEX	\N	2025-09-19 22:38:43.031454
221	Azad Engineering Limited	AZAD	\N	2025-09-19 22:38:43.031454
222	Bafna Pharmaceuticals Limited	BAFNAPH	\N	2025-09-19 22:38:43.031454
223	B.A.G Films and Media Limited	BAGFILMS	\N	2025-09-19 22:38:43.031454
224	Baid Finserv Limited	BAIDFIN	\N	2025-09-19 22:38:43.031454
225	Bajaj Auto Limited	BAJAJ-AUTO	\N	2025-09-19 22:38:43.031454
226	Bajaj Consumer Care Limited	BAJAJCON	\N	2025-09-19 22:38:43.031454
227	Bajaj Electricals Limited	BAJAJELEC	\N	2025-09-19 22:38:43.031454
228	Bajaj Finserv Limited	BAJAJFINSV	\N	2025-09-19 22:38:43.031454
229	Bajaj Healthcare Limited	BAJAJHCARE	\N	2025-09-19 22:38:43.031454
230	Bajaj Housing Finance Limited	BAJAJHFL	\N	2025-09-19 22:38:43.031454
231	Bajaj Hindusthan Sugar Limited	BAJAJHIND	\N	2025-09-19 22:38:43.031454
232	Bajaj Holdings & Investment Limited	BAJAJHLDNG	\N	2025-09-19 22:38:43.031454
233	Indef Manufacturing Limited	BAJAJINDEF	\N	2025-09-19 22:38:43.031454
234	Bajel Projects Limited	BAJEL	\N	2025-09-19 22:38:43.031454
235	Bajaj Finance Limited	BAJFINANCE	\N	2025-09-19 22:38:43.031454
236	Shree Tirupati Balajee Agro Trading Company Limited	BALAJEE	\N	2025-09-19 22:38:43.031454
237	Balaji Telefilms Limited	BALAJITELE	\N	2025-09-19 22:38:43.031454
238	Balaji Amines Limited	BALAMINES	\N	2025-09-19 22:38:43.031454
239	BALAXI PHARMACEUTICALS LIMITED	BALAXI	\N	2025-09-19 22:38:43.031454
240	Balkrishna Paper Mills Limited	BALKRISHNA	\N	2025-09-19 22:38:43.031454
241	Balkrishna Industries Limited	BALKRISIND	\N	2025-09-19 22:38:43.031454
242	Balmer Lawrie & Company Limited	BALMLAWRIE	\N	2025-09-19 22:38:43.031454
243	Bal Pharma Limited	BALPHARMA	\N	2025-09-19 22:38:43.031454
244	Balrampur Chini Mills Limited	BALRAMCHIN	\N	2025-09-19 22:38:43.031454
245	Balu Forge Industries Limited	BALUFORGE	\N	2025-09-19 22:38:43.031454
246	Banaras Beads Limited	BANARBEADS	\N	2025-09-19 22:38:43.031454
247	Bannari Amman Sugars Limited	BANARISUG	\N	2025-09-19 22:38:43.031454
248	Banco Products (I) Limited	BANCOINDIA	\N	2025-09-19 22:38:43.031454
249	Bandhan Bank Limited	BANDHANBNK	\N	2025-09-19 22:38:43.031454
250	Bang Overseas Limited	BANG	\N	2025-09-19 22:38:43.031454
251	Banka BioLoo Limited	BANKA	\N	2025-09-19 22:38:43.031454
252	Bank of Baroda	BANKBARODA	\N	2025-09-19 22:38:43.031454
253	Bank of India	BANKINDIA	\N	2025-09-19 22:38:43.031454
254	Bansal Wire Industries Limited	BANSALWIRE	\N	2025-09-19 22:38:43.031454
255	Banswara Syntex Limited	BANSWRAS	\N	2025-09-19 22:38:43.031454
256	Barbeque Nation Hospitality Limited	BARBEQUE	\N	2025-09-19 22:38:43.031454
257	BASF India Limited	BASF	\N	2025-09-19 22:38:43.031454
258	Bannari Amman Spinning Mills Limited	BASML	\N	2025-09-19 22:38:43.031454
259	Bata India Limited	BATAINDIA	\N	2025-09-19 22:38:43.031454
260	Bayer Cropscience Limited	BAYERCROP	\N	2025-09-19 22:38:43.031454
261	Bharat Bijlee Limited	BBL	\N	2025-09-19 22:38:43.031454
262	Black Box Limited	BBOX	\N	2025-09-19 22:38:43.031454
263	Bombay Burmah Trading Corporation Limited	BBTC	\N	2025-09-19 22:38:43.031454
264	B&B Triplewall Containers Limited	BBTCL	\N	2025-09-19 22:38:43.031454
265	Brightcom Group Limited	BCG	\N	2025-09-19 22:38:43.031454
266	Bcl Industries Limited	BCLIND	\N	2025-09-19 22:38:43.031454
267	Brand Concepts Limited	BCONCEPTS	\N	2025-09-19 22:38:43.031454
268	Bharat Dynamics Limited	BDL	\N	2025-09-19 22:38:43.031454
269	Beardsell Limited	BEARDSELL	\N	2025-09-19 22:38:43.031454
270	Mrs. Bectors Food Specialities Limited	BECTORFOOD	\N	2025-09-19 22:38:43.031454
271	Bedmutha Industries Limited	BEDMUTHA	\N	2025-09-19 22:38:43.031454
272	Bharat Electronics Limited	BEL	\N	2025-09-19 22:38:43.031454
273	Bella Casa Fashion & Retail Limited	BELLACASA	\N	2025-09-19 22:38:43.031454
274	Belrise Industries Limited	BELRISE	\N	2025-09-19 22:38:43.031454
275	BEML Limited	BEML	\N	2025-09-19 22:38:43.031454
276	Bhansali Engineering Polymers Limited	BEPL	\N	2025-09-19 22:38:43.031454
277	Berger Paints (I) Limited	BERGEPAINT	\N	2025-09-19 22:38:43.031454
278	Best Agrolife Limited	BESTAGRO	\N	2025-09-19 22:38:43.031454
279	BF Investment Limited	BFINVEST	\N	2025-09-19 22:38:43.031454
280	BF Utilities Limited	BFUTILITIE	\N	2025-09-19 22:38:43.031454
281	BGR Energy Systems Limited	BGRENERGY	\N	2025-09-19 22:38:43.031454
282	Bhagiradha Chemicals & Industries Limited	BHAGCHEM	\N	2025-09-19 22:38:43.031454
283	Bhageria Industries Limited	BHAGERIA	\N	2025-09-19 22:38:43.031454
284	Bhagyanagar India Limited	BHAGYANGR	\N	2025-09-19 22:38:43.031454
285	Bhandari Hosiery Exports Limited	BHANDARI	\N	2025-09-19 22:38:43.031454
286	Bharat Forge Limited	BHARATFORG	\N	2025-09-19 22:38:43.031454
287	Bharat Gears Limited	BHARATGEAR	\N	2025-09-19 22:38:43.031454
288	Bharat Rasayan Limited	BHARATRAS	\N	2025-09-19 22:38:43.031454
289	Bharat Seats Limited	BHARATSE	\N	2025-09-19 22:38:43.031454
290	Bharat Wire Ropes Limited	BHARATWIRE	\N	2025-09-19 22:38:43.031454
291	Bharti Airtel Limited	BHARTIARTL	\N	2025-09-19 22:38:43.031454
292	Bharti Hexacom Limited	BHARTIHEXA	\N	2025-09-19 22:38:43.031454
293	Bharat Heavy Electricals Limited	BHEL	\N	2025-09-19 22:38:43.031454
294	Bigbloc Construction Limited	BIGBLOC	\N	2025-09-19 22:38:43.031454
295	Bikaji Foods International Limited	BIKAJI	\N	2025-09-19 22:38:43.031454
296	Bhartiya International Limited	BIL	\N	2025-09-19 22:38:43.031454
297	BIL VYAPAR LIMITED	BILVYAPAR	\N	2025-09-19 22:38:43.031454
298	Biocon Limited	BIOCON	\N	2025-09-19 22:38:43.031454
299	Biofil Chemicals & Pharmaceuticals Limited	BIOFILCHEM	\N	2025-09-19 22:38:43.031454
300	Birla Cable Limited	BIRLACABLE	\N	2025-09-19 22:38:43.031454
301	Birla Corporation Limited	BIRLACORPN	\N	2025-09-19 22:38:43.031454
302	Aditya Birla Money Limited	BIRLAMONEY	\N	2025-09-19 22:38:43.031454
303	BirlaNu Limited	BIRLANU	\N	2025-09-19 22:38:43.031454
304	Zinka Logistics Solutions Limited	BLACKBUCK	\N	2025-09-19 22:38:43.031454
305	BEML Land Assets Limited	BLAL	\N	2025-09-19 22:38:43.031454
306	BLB Limited	BLBLIMITED	\N	2025-09-19 22:38:43.031454
307	Bliss GVS Pharma Limited	BLISSGVS	\N	2025-09-19 22:38:43.031454
308	B. L. Kashyap and Sons Limited	BLKASHYAP	\N	2025-09-19 22:38:43.031454
309	BLS International Services Limited	BLS	\N	2025-09-19 22:38:43.031454
310	BLS E-Services Limited	BLSE	\N	2025-09-19 22:38:43.031454
311	Blue Coast Hotels Limited	BLUECOAST	\N	2025-09-19 22:38:43.031454
1233	MODISON LIMITED	MODISONLTD	\N	2025-09-19 22:38:43.031454
312	Blue Dart Express Limited	BLUEDART	\N	2025-09-19 22:38:43.031454
313	Blue Jet Healthcare Limited	BLUEJET	\N	2025-09-19 22:38:43.031454
314	Blue Star Limited	BLUESTARCO	\N	2025-09-19 22:38:43.031454
315	BlueStone Jewellery and Lifestyle Limited	BLUESTONE	\N	2025-09-19 22:38:43.031454
316	Bluspring Enterprises Limited	BLUSPRING	\N	2025-09-19 22:38:43.031454
317	Bodal Chemicals Limited	BODALCHEM	\N	2025-09-19 22:38:43.031454
318	Bohra Industries Limited	BOHRAIND	\N	2025-09-19 22:38:43.031454
319	Bombay Dyeing & Mfg Company Limited	BOMDYEING	\N	2025-09-19 22:38:43.031454
320	Borana Weaves Limited	BORANA	\N	2025-09-19 22:38:43.031454
321	Borosil Limited	BOROLTD	\N	2025-09-19 22:38:43.031454
322	BOROSIL RENEWABLES LIMITED	BORORENEW	\N	2025-09-19 22:38:43.031454
323	Borosil Scientific Limited	BOROSCI	\N	2025-09-19 22:38:43.031454
324	Bosch Limited	BOSCHLTD	\N	2025-09-19 22:38:43.031454
325	Bharat Petroleum Corporation Limited	BPCL	\N	2025-09-19 22:38:43.031454
326	BPL Limited	BPL	\N	2025-09-19 22:38:43.031454
327	Brigade Enterprises Limited	BRIGADE	\N	2025-09-19 22:38:43.031454
328	Brigade Hotel Ventures Limited	BRIGHOTEL	\N	2025-09-19 22:38:43.031454
329	Britannia Industries Limited	BRITANNIA	\N	2025-09-19 22:38:43.031454
330	Bharat Road Network Limited	BRNL	\N	2025-09-19 22:38:43.031454
331	Brooks Laboratories Limited	BROOKS	\N	2025-09-19 22:38:43.031454
332	BSE Limited	BSE	\N	2025-09-19 22:38:43.031454
333	Bombay Super Hybrid Seeds Limited	BSHSL	\N	2025-09-19 22:38:43.031454
334	BSL Limited	BSL	\N	2025-09-19 22:38:43.031454
335	BIRLASOFT LIMITED	BSOFT	\N	2025-09-19 22:38:43.031454
336	Bodhi Tree Multimedia Limited	BTML	\N	2025-09-19 22:38:43.031454
337	Butterfly Gandhimathi Appliances Limited	BUTTERFLY	\N	2025-09-19 22:38:43.031454
338	Barak Valley Cements Limited	BVCL	\N	2025-09-19 22:38:43.031454
339	The Byke Hospitality Ltd	BYKE	\N	2025-09-19 22:38:43.031454
340	California Software Company Limited	CALSOFT	\N	2025-09-19 22:38:43.031454
341	Camlin Fine Sciences Limited	CAMLINFINE	\N	2025-09-19 22:38:43.031454
342	Campus Activewear Limited	CAMPUS	\N	2025-09-19 22:38:43.031454
343	Computer Age Management Services Limited	CAMS	\N	2025-09-19 22:38:43.031454
344	Canara Bank	CANBK	\N	2025-09-19 22:38:43.031454
345	Can Fin Homes Limited	CANFINHOME	\N	2025-09-19 22:38:43.031454
346	Cantabil Retail India Limited	CANTABIL	\N	2025-09-19 22:38:43.031454
347	Capacit'e Infraprojects Limited	CAPACITE	\N	2025-09-19 22:38:43.031454
348	Capital Small Finance Bank Limited	CAPITALSFB	\N	2025-09-19 22:38:43.031454
349	Caplin Point Laboratories Limited	CAPLIPOINT	\N	2025-09-19 22:38:43.031454
350	Capital Trust Limited	CAPTRUST	\N	2025-09-19 22:38:43.031454
351	Carborundum Universal Limited	CARBORUNIV	\N	2025-09-19 22:38:43.031454
352	CARE Ratings Limited	CARERATING	\N	2025-09-19 22:38:43.031454
353	Carraro India Limited	CARRARO	\N	2025-09-19 22:38:43.031454
354	Cartrade Tech Limited	CARTRADE	\N	2025-09-19 22:38:43.031454
355	CARYSIL LIMITED	CARYSIL	\N	2025-09-19 22:38:43.031454
356	Castrol India Limited	CASTROLIND	\N	2025-09-19 22:38:43.031454
357	Consolidated Construction Consortium Limited	CCCL	\N	2025-09-19 22:38:43.031454
358	Country Club Hospitality & Holidays Limited	CCHHL	\N	2025-09-19 22:38:43.031454
359	CCL Products (India) Limited	CCL	\N	2025-09-19 22:38:43.031454
360	Central Depository Services (India) Limited	CDSL	\N	2025-09-19 22:38:43.031454
361	CEAT Limited	CEATLTD	\N	2025-09-19 22:38:43.031454
362	Ceigall India Limited	CEIGALL	\N	2025-09-19 22:38:43.031454
363	Celebrity Fashions Limited	CELEBRITY	\N	2025-09-19 22:38:43.031454
364	Cello World Limited	CELLO	\N	2025-09-19 22:38:43.031454
365	Cemindia Projects Limited	CEMPRO	\N	2025-09-19 22:38:43.031454
366	Century Enka Limited	CENTENKA	\N	2025-09-19 22:38:43.031454
367	Century Extrusions Limited	CENTEXT	\N	2025-09-19 22:38:43.031454
368	Central Bank of India	CENTRALBK	\N	2025-09-19 22:38:43.031454
369	Centrum Capital Limited	CENTRUM	\N	2025-09-19 22:38:43.031454
370	Centum Electronics Limited	CENTUM	\N	2025-09-19 22:38:43.031454
371	Century Plyboards (India) Limited	CENTURYPLY	\N	2025-09-19 22:38:43.031454
372	Cera Sanitaryware Limited	CERA	\N	2025-09-19 22:38:43.031454
373	Cerebra Integrated Technologies Limited	CEREBRAINT	\N	2025-09-19 22:38:43.031454
374	CESC Limited	CESC	\N	2025-09-19 22:38:43.031454
375	Concord Enviro Systems Limited	CEWATER	\N	2025-09-19 22:38:43.031454
376	Capri Global Capital Limited	CGCL	\N	2025-09-19 22:38:43.031454
377	CG Power and Industrial Solutions Limited	CGPOWER	\N	2025-09-19 22:38:43.031454
378	Chalet Hotels Limited	CHALET	\N	2025-09-19 22:38:43.031454
379	Chambal Fertilizers & Chemicals Limited	CHAMBLFERT	\N	2025-09-19 22:38:43.031454
380	Chembond Material Technologies Limited	CHEMBOND	\N	2025-09-19 22:38:43.031454
381	Chembond Chemicals Limited	CHEMBONDCH	\N	2025-09-19 22:38:43.031454
382	Chemcon Speciality Chemicals Limited	CHEMCON	\N	2025-09-19 22:38:43.031454
383	Chemfab Alkalis Limited	CHEMFAB	\N	2025-09-19 22:38:43.031454
384	Chemplast Sanmar Limited	CHEMPLASTS	\N	2025-09-19 22:38:43.031454
385	Chennai Petroleum Corporation Limited	CHENNPETRO	\N	2025-09-19 22:38:43.031454
386	Cheviot Company Limited	CHEVIOT	\N	2025-09-19 22:38:43.031454
387	Choice International Limited	CHOICEIN	\N	2025-09-19 22:38:43.031454
388	Cholamandalam Investment and Finance Company Limited	CHOLAFIN	\N	2025-09-19 22:38:43.031454
389	Cholamandalam Financial Holdings Limited	CHOLAHLDNG	\N	2025-09-19 22:38:43.031454
390	CIE Automotive India Limited	CIEINDIA	\N	2025-09-19 22:38:43.031454
391	Capital India Finance Limited	CIFL	\N	2025-09-19 22:38:43.031454
392	Cigniti Technologies Limited	CIGNITITEC	\N	2025-09-19 22:38:43.031454
393	Cineline India Limited	CINELINE	\N	2025-09-19 22:38:43.031454
394	Cinevista Limited	CINEVISTA	\N	2025-09-19 22:38:43.031454
395	Cipla Limited	CIPLA	\N	2025-09-19 22:38:43.031454
396	Clean Science and Technology Limited	CLEAN	\N	2025-09-19 22:38:43.031454
397	CL Educate Limited	CLEDUCATE	\N	2025-09-19 22:38:43.031454
398	Chaman Lal Setia Exports Limited	CLSEL	\N	2025-09-19 22:38:43.031454
399	CMS Info Systems Limited	CMSINFO	\N	2025-09-19 22:38:43.031454
400	Coal India Limited	COALINDIA	\N	2025-09-19 22:38:43.031454
401	Coastal Corporation Limited	COASTCORP	\N	2025-09-19 22:38:43.031454
402	Cochin Shipyard Limited	COCHINSHIP	\N	2025-09-19 22:38:43.031454
403	Coffee Day Enterprises Limited	COFFEEDAY	\N	2025-09-19 22:38:43.031454
404	Coforge Limited	COFORGE	\N	2025-09-19 22:38:43.031454
405	Cohance Lifesciences Limited	COHANCE	\N	2025-09-19 22:38:43.031454
406	Colgate Palmolive (India) Limited	COLPAL	\N	2025-09-19 22:38:43.031454
407	Compuage Infocom Limited	COMPINFO	\N	2025-09-19 22:38:43.031454
408	Compucom Software Limited	COMPUSOFT	\N	2025-09-19 22:38:43.031454
409	Commercial Syn Bags Limited	COMSYN	\N	2025-09-19 22:38:43.031454
410	Container Corporation of India Limited	CONCOR	\N	2025-09-19 22:38:43.031454
411	Concord Biotech Limited	CONCORDBIO	\N	2025-09-19 22:38:43.031454
412	Confidence Petroleum India Limited	CONFIPET	\N	2025-09-19 22:38:43.031454
413	Consolidated Finvest & Holdings Limited	CONSOFINVT	\N	2025-09-19 22:38:43.031454
414	Control Print Limited	CONTROLPR	\N	2025-09-19 22:38:43.031454
415	Coral India Finance & Housing Limited	CORALFINAC	\N	2025-09-19 22:38:43.031454
416	Cords Cable Industries Limited	CORDSCABLE	\N	2025-09-19 22:38:43.031454
417	Coromandel International Limited	COROMANDEL	\N	2025-09-19 22:38:43.031454
418	COSMO FIRST LIMITED	COSMOFIRST	\N	2025-09-19 22:38:43.031454
419	Country Condo's Limited	COUNCODOS	\N	2025-09-19 22:38:43.031454
420	CP Capital Limited	CPCAP	\N	2025-09-19 22:38:43.031454
421	Career Point Edutech Limited	CPEDU	\N	2025-09-19 22:38:43.031454
422	Aditya Infotech Limited	CPPLUS	\N	2025-09-19 22:38:43.031454
423	Craftsman Automation Limited	CRAFTSMAN	\N	2025-09-19 22:38:43.031454
424	Creative Newtech Limited	CREATIVE	\N	2025-09-19 22:38:43.031454
425	Creative Eye Limited	CREATIVEYE	\N	2025-09-19 22:38:43.031454
426	CREDITACCESS GRAMEEN LIMITED	CREDITACC	\N	2025-09-19 22:38:43.031454
427	Crest Ventures Limited	CREST	\N	2025-09-19 22:38:43.031454
428	CRISIL Limited	CRISIL	\N	2025-09-19 22:38:43.031454
429	Crizac Limited	CRIZAC	\N	2025-09-19 22:38:43.031454
430	Crompton Greaves Consumer Electricals Limited	CROMPTON	\N	2025-09-19 22:38:43.031454
431	Crown Lifters Limited	CROWN	\N	2025-09-19 22:38:43.031454
432	CSB Bank Limited	CSBBANK	\N	2025-09-19 22:38:43.031454
433	CSL Finance Limited	CSLFINANCE	\N	2025-09-19 22:38:43.031454
434	Cambridge Technology Enterprises Limited	CTE	\N	2025-09-19 22:38:43.031454
435	City Union Bank Limited	CUB	\N	2025-09-19 22:38:43.031454
436	Cubex Tubings Limited	CUBEXTUB	\N	2025-09-19 22:38:43.031454
437	Cummins India Limited	CUMMINSIND	\N	2025-09-19 22:38:43.031454
438	Cupid Limited	CUPID	\N	2025-09-19 22:38:43.031454
439	Cura Technologies Limited	CURAA	\N	2025-09-19 22:38:43.031454
440	Cyber Media (India) Limited	CYBERMEDIA	\N	2025-09-19 22:38:43.031454
441	Cybertech Systems And Software Limited	CYBERTECH	\N	2025-09-19 22:38:43.031454
442	Cyient Limited	CYIENT	\N	2025-09-19 22:38:43.031454
443	Cyient DLM Limited	CYIENTDLM	\N	2025-09-19 22:38:43.031454
444	Dabur India Limited	DABUR	\N	2025-09-19 22:38:43.031454
445	Dalmia Bharat Limited	DALBHARAT	\N	2025-09-19 22:38:43.031454
446	Dalmia Bharat Sugar and Industries Limited	DALMIASUG	\N	2025-09-19 22:38:43.031454
447	Dam Capital Advisors Limited	DAMCAPITAL	\N	2025-09-19 22:38:43.031454
448	Damodar Industries Limited	DAMODARIND	\N	2025-09-19 22:38:43.031454
449	Dangee Dums Limited	DANGEE	\N	2025-09-19 22:38:43.031454
450	Datamatics Global Services Limited	DATAMATICS	\N	2025-09-19 22:38:43.031454
451	Data Patterns (India) Limited	DATAPATTNS	\N	2025-09-19 22:38:43.031454
452	Davangere Sugar Company Limited	DAVANGERE	\N	2025-09-19 22:38:43.031454
453	D.B.Corp Limited	DBCORP	\N	2025-09-19 22:38:43.031454
454	Deepak Builders & Engineers India Limited	DBEIL	\N	2025-09-19 22:38:43.031454
455	Dilip Buildcon Limited	DBL	\N	2025-09-19 22:38:43.031454
456	Dhampur Bio Organics Limited	DBOL	\N	2025-09-19 22:38:43.031454
457	Valor Estate Limited	DBREALTY	\N	2025-09-19 22:38:43.031454
458	DB (International) Stock Brokers Limited	DBSTOCKBRO	\N	2025-09-19 22:38:43.031454
459	Dishman Carbogen Amcis Limited	DCAL	\N	2025-09-19 22:38:43.031454
460	DCB Bank Limited	DCBBANK	\N	2025-09-19 22:38:43.031454
461	Dc Infotech And Communication Limited	DCI	\N	2025-09-19 22:38:43.031454
462	DCM  Limited	DCM	\N	2025-09-19 22:38:43.031454
463	DCM Financial Services Limited	DCMFINSERV	\N	2025-09-19 22:38:43.031454
464	DCM Nouvelle Limited	DCMNVL	\N	2025-09-19 22:38:43.031454
465	DCM Shriram Limited	DCMSHRIRAM	\N	2025-09-19 22:38:43.031454
466	DCM Shriram Industries Limited	DCMSRIND	\N	2025-09-19 22:38:43.031454
467	DCW Limited	DCW	\N	2025-09-19 22:38:43.031454
468	DCX Systems Limited	DCXINDIA	\N	2025-09-19 22:38:43.031454
469	Ddev Plastiks Industries Limited	DDEVPLSTIK	\N	2025-09-19 22:38:43.031454
470	Deccan Cements Limited	DECCANCE	\N	2025-09-19 22:38:43.031454
471	DEE Development Engineers Limited	DEEDEV	\N	2025-09-19 22:38:43.031454
472	Deepak Fertilizers and Petrochemicals Corporation Limited	DEEPAKFERT	\N	2025-09-19 22:38:43.031454
473	Deepak Nitrite Limited	DEEPAKNTR	\N	2025-09-19 22:38:43.031454
474	Deep Industries Limited	DEEPINDS	\N	2025-09-19 22:38:43.031454
475	Delhivery Limited	DELHIVERY	\N	2025-09-19 22:38:43.031454
476	DELPHI WORLD MONEY LIMITED	DELPHIFX	\N	2025-09-19 22:38:43.031454
477	Delta Corp Limited	DELTACORP	\N	2025-09-19 22:38:43.031454
478	Delta Manufacturing Limited	DELTAMAGNT	\N	2025-09-19 22:38:43.031454
479	Den Networks Limited	DEN	\N	2025-09-19 22:38:43.031454
480	De Nora India Limited	DENORA	\N	2025-09-19 22:38:43.031454
481	Denta Water and Infra Solutions Limited	DENTA	\N	2025-09-19 22:38:43.031454
482	Dev Information Technology Limited	DEVIT	\N	2025-09-19 22:38:43.031454
483	Dev Accelerator Limited	DEVX	\N	2025-09-19 22:38:43.031454
484	Devyani International Limited	DEVYANI	\N	2025-09-19 22:38:43.031454
485	Digicontent Limited	DGCONTENT	\N	2025-09-19 22:38:43.031454
486	Dhampur Sugar Mills Limited	DHAMPURSUG	\N	2025-09-19 22:38:43.031454
487	Dhanlaxmi Bank Limited	DHANBANK	\N	2025-09-19 22:38:43.031454
488	Dhani Services Limited	DHANI	\N	2025-09-19 22:38:43.031454
489	Dhanuka Agritech Limited	DHANUKA	\N	2025-09-19 22:38:43.031454
490	DHARAN INFRA-EPC LIMITED	DHARAN	\N	2025-09-19 22:38:43.031454
491	Dharmaj Crop Guard Limited	DHARMAJ	\N	2025-09-19 22:38:43.031454
492	Dhruv Consultancy Services Limited	DHRUV	\N	2025-09-19 22:38:43.031454
493	Dhunseri Investments Limited	DHUNINV	\N	2025-09-19 22:38:43.031454
494	Diamond Power Infrastructure Limited	DIACABS	\N	2025-09-19 22:38:43.031454
495	Diamines & Chemicals Limited	DIAMINESQ	\N	2025-09-19 22:38:43.031454
496	Prataap Snacks Limited	DIAMONDYD	\N	2025-09-19 22:38:43.031454
497	DIC India Limited	DICIND	\N	2025-09-19 22:38:43.031454
498	Diffusion Engineers Limited	DIFFNKG	\N	2025-09-19 22:38:43.031454
499	Digidrive Distributors Limited	DIGIDRIVE	\N	2025-09-19 22:38:43.031454
500	DiGiSPICE Technologies Limited	DIGISPICE	\N	2025-09-19 22:38:43.031454
501	Digitide Solutions Limited	DIGITIDE	\N	2025-09-19 22:38:43.031454
502	Digjam Limited	DIGJAMLMTD	\N	2025-09-19 22:38:43.031454
503	Debock Industries Limited	DIL	\N	2025-09-19 22:38:43.031454
504	Dish TV India Limited	DISHTV	\N	2025-09-19 22:38:43.031454
505	Divgi Torqtransfer Systems Limited	DIVGIITTS	\N	2025-09-19 22:38:43.031454
506	Divi's Laboratories Limited	DIVISLAB	\N	2025-09-19 22:38:43.031454
507	Dixon Technologies (India) Limited	DIXON	\N	2025-09-19 22:38:43.031454
508	DJ Mediaprint & Logistics Limited	DJML	\N	2025-09-19 22:38:43.031454
509	DLF Limited	DLF	\N	2025-09-19 22:38:43.031454
510	D-Link (India) Limited	DLINKINDIA	\N	2025-09-19 22:38:43.031454
511	Avenue Supermarts Limited	DMART	\N	2025-09-19 22:38:43.031454
512	DMCC SPECIALITY CHEMICALS LIMITED	DMCC	\N	2025-09-19 22:38:43.031454
513	Diligent Media Corporation Limited	DNAMEDIA	\N	2025-09-19 22:38:43.031454
514	Dodla Dairy Limited	DODLA	\N	2025-09-19 22:38:43.031454
515	Dolat Algotech Limited	DOLATALGO	\N	2025-09-19 22:38:43.031454
516	Dollar Industries Limited	DOLLAR	\N	2025-09-19 22:38:43.031454
1337	NLC India Limited	NLCINDIA	\N	2025-09-19 22:38:43.031454
517	Dolphin Offshore Enterprises (India) Limited	DOLPHIN	\N	2025-09-19 22:38:43.031454
518	DOMS Industries Limited	DOMS	\N	2025-09-19 22:38:43.031454
519	Donear Industries Limited	DONEAR	\N	2025-09-19 22:38:43.031454
520	D. P. Abhushan Limited	DPABHUSHAN	\N	2025-09-19 22:38:43.031454
521	DPSC Limited	DPSCLTD	\N	2025-09-19 22:38:43.031454
522	D P Wires Limited	DPWIRES	\N	2025-09-19 22:38:43.031454
523	DRC Systems India Limited	DRCSYSTEMS	\N	2025-09-19 22:38:43.031454
524	Dreamfolks Services Limited	DREAMFOLKS	\N	2025-09-19 22:38:43.031454
525	Dredging Corporation of India Limited	DREDGECORP	\N	2025-09-19 22:38:43.031454
526	Dr. Reddy's Laboratories Limited	DRREDDY	\N	2025-09-19 22:38:43.031454
527	Dynacons Systems & Solutions Limited	DSSL	\N	2025-09-19 22:38:43.031454
528	Dhunseri Tea & Industries Limited	DTIL	\N	2025-09-19 22:38:43.031454
529	Ducon Infratechnologies Limited	DUCON	\N	2025-09-19 22:38:43.031454
530	Dhunseri Ventures Limited	DVL	\N	2025-09-19 22:38:43.031454
531	Dwarikesh Sugar Industries Limited	DWARKESH	\N	2025-09-19 22:38:43.031454
532	Dynamic Cables Limited	DYCL	\N	2025-09-19 22:38:43.031454
533	Dynamatic Technologies Limited	DYNAMATECH	\N	2025-09-19 22:38:43.031454
534	Dynemic Products Limited	DYNPRO	\N	2025-09-19 22:38:43.031454
535	E2E Networks Limited	E2E	\N	2025-09-19 22:38:43.031454
536	Easy Trip Planners Limited	EASEMYTRIP	\N	2025-09-19 22:38:43.031454
537	GNG Electronics Limited	EBGNG	\N	2025-09-19 22:38:43.031454
538	eClerx Services Limited	ECLERX	\N	2025-09-19 22:38:43.031454
539	Ecos (India) Mobility & Hospitality Limited	ECOSMOBLTY	\N	2025-09-19 22:38:43.031454
540	Edelweiss Financial Services Limited	EDELWEISS	\N	2025-09-19 22:38:43.031454
541	EFC (I) Limited	EFCIL	\N	2025-09-19 22:38:43.031454
542	Eicher Motors Limited	EICHERMOT	\N	2025-09-19 22:38:43.031454
543	EID Parry India Limited	EIDPARRY	\N	2025-09-19 22:38:43.031454
544	Enviro Infra Engineers Limited	EIEL	\N	2025-09-19 22:38:43.031454
545	Euro India Fresh Foods Limited	EIFFL	\N	2025-09-19 22:38:43.031454
546	EIH Associated Hotels Limited	EIHAHOTELS	\N	2025-09-19 22:38:43.031454
547	EIH Limited	EIHOTEL	\N	2025-09-19 22:38:43.031454
548	Eimco Elecon (India) Limited	EIMCOELECO	\N	2025-09-19 22:38:43.031454
549	Everest Kanto Cylinder Limited	EKC	\N	2025-09-19 22:38:43.031454
550	Eldeco Housing And Industries Limited	ELDEHSG	\N	2025-09-19 22:38:43.031454
551	Elecon Engineering Company Limited	ELECON	\N	2025-09-19 22:38:43.031454
552	Electrosteel Castings Limited	ELECTCAST	\N	2025-09-19 22:38:43.031454
553	Electrotherm (India) Limited	ELECTHERM	\N	2025-09-19 22:38:43.031454
554	Elgi Equipments Limited	ELGIEQUIP	\N	2025-09-19 22:38:43.031454
555	Elgi Rubber Company Limited	ELGIRUBCO	\N	2025-09-19 22:38:43.031454
556	Elin Electronics Limited	ELIN	\N	2025-09-19 22:38:43.031454
557	Ellenbarrie Industrial Gases Limited	ELLEN	\N	2025-09-19 22:38:43.031454
558	Emami Limited	EMAMILTD	\N	2025-09-19 22:38:43.031454
559	Emami Paper Mills Limited	EMAMIPAP	\N	2025-09-19 22:38:43.031454
560	Emami Realty Limited	EMAMIREAL	\N	2025-09-19 22:38:43.031454
561	Embassy Developments Limited	EMBDL	\N	2025-09-19 22:38:43.031454
562	Emcure Pharmaceuticals Limited	EMCURE	\N	2025-09-19 22:38:43.031454
563	Electronics Mart India Limited	EMIL	\N	2025-09-19 22:38:43.031454
564	Emkay Global Financial Services Limited	EMKAY	\N	2025-09-19 22:38:43.031454
565	Emmbi Industries Limited	EMMBI	\N	2025-09-19 22:38:43.031454
566	EMS Limited	EMSLIMITED	\N	2025-09-19 22:38:43.031454
567	eMudhra Limited	EMUDHRA	\N	2025-09-19 22:38:43.031454
568	Endurance Technologies Limited	ENDURANCE	\N	2025-09-19 22:38:43.031454
569	Energy Development Company Limited	ENERGYDEV	\N	2025-09-19 22:38:43.031454
570	Engineers India Limited	ENGINERSIN	\N	2025-09-19 22:38:43.031454
571	Entertainment Network (India) Limited	ENIL	\N	2025-09-19 22:38:43.031454
572	Siemens Energy India Limited	ENRIN	\N	2025-09-19 22:38:43.031454
573	Entero Healthcare Solutions Limited	ENTERO	\N	2025-09-19 22:38:43.031454
574	EPACK Durable Limited	EPACK	\N	2025-09-19 22:38:43.031454
575	Epigral Limited	EPIGRAL	\N	2025-09-19 22:38:43.031454
576	EPL Limited	EPL	\N	2025-09-19 22:38:43.031454
577	Equippp Social Impact Technologies Limited	EQUIPPP	\N	2025-09-19 22:38:43.031454
578	Equitas Small Finance Bank Limited	EQUITASBNK	\N	2025-09-19 22:38:43.031454
579	Eris Lifesciences Limited	ERIS	\N	2025-09-19 22:38:43.031454
580	Esab India Limited	ESABINDIA	\N	2025-09-19 22:38:43.031454
581	ESAF Small Finance Bank Limited	ESAFSFB	\N	2025-09-19 22:38:43.031454
582	Escorts Kubota Limited	ESCORTS	\N	2025-09-19 22:38:43.031454
583	Essar Shipping Limited	ESSARSHPNG	\N	2025-09-19 22:38:43.031454
584	Integra Essentia Limited	ESSENTIA	\N	2025-09-19 22:38:43.031454
585	Ester Industries Limited	ESTER	\N	2025-09-19 22:38:43.031454
586	ETERNAL LIMITED	ETERNAL	\N	2025-09-19 22:38:43.031454
587	Ethos Limited	ETHOSLTD	\N	2025-09-19 22:38:43.031454
588	Eureka Forbes Limited	EUREKAFORB	\N	2025-09-19 22:38:43.031454
589	Euro Panel Products Limited	EUROBOND	\N	2025-09-19 22:38:43.031454
590	Eurotex Industries and Exports Limited	EUROTEXIND	\N	2025-09-19 22:38:43.031454
591	Eveready Industries India Limited	EVEREADY	\N	2025-09-19 22:38:43.031454
592	Everest Industries Limited	EVERESTIND	\N	2025-09-19 22:38:43.031454
593	Excel Realty N Infra Limited	EXCEL	\N	2025-09-19 22:38:43.031454
594	Excel Industries Limited	EXCELINDUS	\N	2025-09-19 22:38:43.031454
595	Exicom Tele-Systems Limited	EXICOM	\N	2025-09-19 22:38:43.031454
596	Exide Industries Limited	EXIDEIND	\N	2025-09-19 22:38:43.031454
597	Expleo Solutions Limited	EXPLEOSOL	\N	2025-09-19 22:38:43.031454
598	Exxaro Tiles Limited	EXXARO	\N	2025-09-19 22:38:43.031454
599	Fertilizers and Chemicals Travancore Limited	FACT	\N	2025-09-19 22:38:43.031454
600	Fairchem Organics Limited	FAIRCHEMOR	\N	2025-09-19 22:38:43.031454
601	Faze Three Limited	FAZE3Q	\N	2025-09-19 22:38:43.031454
602	Fineotex Chemical Limited	FCL	\N	2025-09-19 22:38:43.031454
603	FCS Software Solutions Limited	FCSSOFT	\N	2025-09-19 22:38:43.031454
604	FDC Limited	FDC	\N	2025-09-19 22:38:43.031454
605	The Federal Bank  Limited	FEDERALBNK	\N	2025-09-19 22:38:43.031454
606	Fedbank Financial Services Limited	FEDFINA	\N	2025-09-19 22:38:43.031454
607	Future Enterprises Limited	FEL	\N	2025-09-19 22:38:43.031454
608	Future Enterprises Limited	FELDVR	\N	2025-09-19 22:38:43.031454
609	Fiberweb (India) Limited	FIBERWEB	\N	2025-09-19 22:38:43.031454
610	Fiem Industries Limited	FIEMIND	\N	2025-09-19 22:38:43.031454
611	Filatex India Limited	FILATEX	\N	2025-09-19 22:38:43.031454
612	Filatex Fashions Limited	FILATFASH	\N	2025-09-19 22:38:43.031454
613	Finolex Cables Limited	FINCABLES	\N	2025-09-19 22:38:43.031454
614	Fine Organic Industries Limited	FINEORG	\N	2025-09-19 22:38:43.031454
615	Fino Payments Bank Limited	FINOPB	\N	2025-09-19 22:38:43.031454
616	Finolex Industries Limited	FINPIPE	\N	2025-09-19 22:38:43.031454
617	Brainbees Solutions Limited	FIRSTCRY	\N	2025-09-19 22:38:43.031454
618	Fischer Medical Ventures Limited	FISCHER	\N	2025-09-19 22:38:43.031454
619	Five-Star Business Finance Limited	FIVESTAR	\N	2025-09-19 22:38:43.031454
620	Flair Writing Industries Limited	FLAIR	\N	2025-09-19 22:38:43.031454
621	Flexituff Ventures International Limited	FLEXITUFF	\N	2025-09-19 22:38:43.031454
622	Future Lifestyle Fashions Limited	FLFL	\N	2025-09-19 22:38:43.031454
623	Gujarat Fluorochemicals Limited	FLUOROCHEM	\N	2025-09-19 22:38:43.031454
624	Federal-Mogul Goetze (India) Limited.	FMGOETZE	\N	2025-09-19 22:38:43.031454
625	Future Market Networks Limited	FMNL	\N	2025-09-19 22:38:43.031454
626	Focus Lighting and Fixtures Limited	FOCUS	\N	2025-09-19 22:38:43.031454
627	Foods & Inns Limited	FOODSIN	\N	2025-09-19 22:38:43.031454
628	FORCE MOTORS LTD	FORCEMOT	\N	2025-09-19 22:38:43.031454
629	Fortis Healthcare Limited	FORTIS	\N	2025-09-19 22:38:43.031454
630	Foseco India Limited	FOSECOIND	\N	2025-09-19 22:38:43.031454
631	Future Supply Chain Solutions Limited	FSC	\N	2025-09-19 22:38:43.031454
632	Firstsource Solutions Limited	FSL	\N	2025-09-19 22:38:43.031454
633	Fusion Finance Limited	FUSION	\N	2025-09-19 22:38:43.031454
634	Gabriel India Limited	GABRIEL	\N	2025-09-19 22:38:43.031454
635	Gujarat Ambuja Exports Limited	GAEL	\N	2025-09-19 22:38:43.031454
636	GAIL (India) Limited	GAIL	\N	2025-09-19 22:38:43.031454
637	Gala Precision Engineering Limited	GALAPREC	\N	2025-09-19 22:38:43.031454
638	Galaxy Surfactants Limited	GALAXYSURF	\N	2025-09-19 22:38:43.031454
639	Gallantt Ispat Limited	GALLANTT	\N	2025-09-19 22:38:43.031454
640	Gandhar Oil Refinery (India) Limited	GANDHAR	\N	2025-09-19 22:38:43.031454
641	Gandhi Special Tubes Limited	GANDHITUBE	\N	2025-09-19 22:38:43.031454
642	Ganesha Ecosphere Limited	GANECOS	\N	2025-09-19 22:38:43.031454
643	Ganesh Benzoplast Limited	GANESHBE	\N	2025-09-19 22:38:43.031454
644	GANESH HOUSING LIMITED	GANESHHOU	\N	2025-09-19 22:38:43.031454
645	Ganga Forging Limited	GANGAFORGE	\N	2025-09-19 22:38:43.031454
646	Ganges Securities Limited	GANGESSECU	\N	2025-09-19 22:38:43.031454
647	Garware Technical Fibres Limited	GARFIBRES	\N	2025-09-19 22:38:43.031454
648	Garuda Construction and Engineering Limited	GARUDA	\N	2025-09-19 22:38:43.031454
649	GACM Technologies Limited	GATECH	\N	2025-09-19 22:38:43.031454
650	GACM Technologies Limited	GATECHDVR	\N	2025-09-19 22:38:43.031454
651	Gateway Distriparks Limited	GATEWAY	\N	2025-09-19 22:38:43.031454
652	Gayatri Highways Limited	GAYAHWS	\N	2025-09-19 22:38:43.031454
653	Gretex Corporate Services Limited	GCSL	\N	2025-09-19 22:38:43.031454
654	GeeCee Ventures Limited	GEECEE	\N	2025-09-19 22:38:43.031454
655	Geekay Wires Limited	GEEKAYWIRE	\N	2025-09-19 22:38:43.031454
656	Gem Aromatics Limited	GEMAROMA	\N	2025-09-19 22:38:43.031454
657	Generic Engineering Construction and Projects Limited	GENCON	\N	2025-09-19 22:38:43.031454
658	Genesys International Corporation Limited	GENESYS	\N	2025-09-19 22:38:43.031454
659	Genus Paper & Boards Limited	GENUSPAPER	\N	2025-09-19 22:38:43.031454
660	Genus Power Infrastructures Limited	GENUSPOWER	\N	2025-09-19 22:38:43.031454
661	Geojit Financial Services Limited	GEOJITFSL	\N	2025-09-19 22:38:43.031454
662	The Great Eastern Shipping Company Limited	GESHIP	\N	2025-09-19 22:38:43.031454
663	GFL Limited	GFLLIMITED	\N	2025-09-19 22:38:43.031454
664	GHCL Limited	GHCL	\N	2025-09-19 22:38:43.031454
665	GHCL Textiles Limited	GHCLTEXTIL	\N	2025-09-19 22:38:43.031454
666	GIC Housing Finance Limited	GICHSGFIN	\N	2025-09-19 22:38:43.031454
667	General Insurance Corporation of India	GICRE	\N	2025-09-19 22:38:43.031454
668	Gillanders Arbuthnot & Company Limited	GILLANDERS	\N	2025-09-19 22:38:43.031454
669	Gillette India Limited	GILLETTE	\N	2025-09-19 22:38:43.031454
670	Ginni Filaments Limited	GINNIFILA	\N	2025-09-19 22:38:43.031454
671	Gujarat Industries Power Company Limited	GIPCL	\N	2025-09-19 22:38:43.031454
672	GKW Limited	GKWLIMITED	\N	2025-09-19 22:38:43.031454
673	Gland Pharma Limited	GLAND	\N	2025-09-19 22:38:43.031454
674	GlaxoSmithKline Pharmaceuticals Limited	GLAXO	\N	2025-09-19 22:38:43.031454
675	Glenmark Pharmaceuticals Limited	GLENMARK	\N	2025-09-19 22:38:43.031454
676	Gujarat Lease Financing Limited	GLFL	\N	2025-09-19 22:38:43.031454
677	Global Education Limited	GLOBAL	\N	2025-09-19 22:38:43.031454
678	Globale Tessile Limited	GLOBALE	\N	2025-09-19 22:38:43.031454
679	Global Vectra Helicorp Limited	GLOBALVECT	\N	2025-09-19 22:38:43.031454
680	Globe Textiles (India) Limited	GLOBE	\N	2025-09-19 22:38:43.031454
681	Globe Civil Projects Limited	GLOBECIVIL	\N	2025-09-19 22:38:43.031454
682	Globus Spirits Limited	GLOBUSSPR	\N	2025-09-19 22:38:43.031454
683	Gloster Limited	GLOSTERLTD	\N	2025-09-19 22:38:43.031454
684	GM Breweries Limited	GMBREW	\N	2025-09-19 22:38:43.031454
685	Gujarat Mineral Development Corporation Limited	GMDCLTD	\N	2025-09-19 22:38:43.031454
686	GMM Pfaudler Limited	GMMPFAUDLR	\N	2025-09-19 22:38:43.031454
687	GMR AIRPORTS LIMITED	GMRAIRPORT	\N	2025-09-19 22:38:43.031454
688	GMR Power and Urban Infra Limited	GMRP&UI	\N	2025-09-19 22:38:43.031454
689	GNA Axles Limited	GNA	\N	2025-09-19 22:38:43.031454
690	Gujarat Narmada Valley Fertilizers and Chemicals Limited	GNFC	\N	2025-09-19 22:38:43.031454
691	Goa Carbon Limited	GOACARBON	\N	2025-09-19 22:38:43.031454
692	GOCL Corporation Limited	GOCLCORP	\N	2025-09-19 22:38:43.031454
693	Go Fashion (India) Limited	GOCOLORS	\N	2025-09-19 22:38:43.031454
694	Godavari Biorefineries Limited	GODAVARIB	\N	2025-09-19 22:38:43.031454
695	Godfrey Phillips India Limited	GODFRYPHLP	\N	2025-09-19 22:38:43.031454
696	Godha Cabcon & Insulation Limited	GODHA	\N	2025-09-19 22:38:43.031454
697	Go Digit General Insurance Limited	GODIGIT	\N	2025-09-19 22:38:43.031454
698	Godrej Agrovet Limited	GODREJAGRO	\N	2025-09-19 22:38:43.031454
699	Godrej Consumer Products Limited	GODREJCP	\N	2025-09-19 22:38:43.031454
700	Godrej Industries Limited	GODREJIND	\N	2025-09-19 22:38:43.031454
701	Godrej Properties Limited	GODREJPROP	\N	2025-09-19 22:38:43.031454
702	Goenka Diamond and Jewels Limited	GOENKA	\N	2025-09-19 22:38:43.031454
703	Gokaldas Exports Limited	GOKEX	\N	2025-09-19 22:38:43.031454
704	Gokul Refoils and Solvent Limited	GOKUL	\N	2025-09-19 22:38:43.031454
705	Gokul Agro Resources Limited	GOKULAGRO	\N	2025-09-19 22:38:43.031454
706	Golden Tobacco Limited	GOLDENTOBC	\N	2025-09-19 22:38:43.031454
707	Goldiam International Limited	GOLDIAM	\N	2025-09-19 22:38:43.031454
708	AION-TECH SOLUTIONS LIMITED	GOLDTECH	\N	2025-09-19 22:38:43.031454
709	Goodluck India Limited	GOODLUCK	\N	2025-09-19 22:38:43.031454
710	Gopal Snacks Limited	GOPAL	\N	2025-09-19 22:38:43.031454
711	Goyal Aluminiums Limited	GOYALALUM	\N	2025-09-19 22:38:43.031454
712	Godawari Power And Ispat limited	GPIL	\N	2025-09-19 22:38:43.031454
713	Gujarat Pipavav Port Limited	GPPL	\N	2025-09-19 22:38:43.031454
714	GPT Healthcare Limited	GPTHEALTH	\N	2025-09-19 22:38:43.031454
715	GPT Infraprojects Limited	GPTINFRA	\N	2025-09-19 22:38:43.031454
716	Granules India Limited	GRANULES	\N	2025-09-19 22:38:43.031454
717	Graphite India Limited	GRAPHITE	\N	2025-09-19 22:38:43.031454
718	Grasim Industries Limited	GRASIM	\N	2025-09-19 22:38:43.031454
719	Gravita India Limited	GRAVITA	\N	2025-09-19 22:38:43.031454
720	Greaves Cotton Limited	GREAVESCOT	\N	2025-09-19 22:38:43.031454
721	Greenlam Industries Limited	GREENLAM	\N	2025-09-19 22:38:43.031454
722	Greenpanel Industries Limited	GREENPANEL	\N	2025-09-19 22:38:43.031454
723	Greenply Industries Limited	GREENPLY	\N	2025-09-19 22:38:43.031454
724	Orient Green Power Company Limited	GREENPOWER	\N	2025-09-19 22:38:43.031454
725	Grindwell Norton Limited	GRINDWELL	\N	2025-09-19 22:38:43.031454
726	G R Infraprojects Limited	GRINFRA	\N	2025-09-19 22:38:43.031454
727	GRM Overseas Limited	GRMOVER	\N	2025-09-19 22:38:43.031454
728	The Grob Tea Company Limited	GROBTEA	\N	2025-09-19 22:38:43.031454
729	GRP Limited	GRPLTD	\N	2025-09-19 22:38:43.031454
730	Garden Reach Shipbuilders & Engineers Limited	GRSE	\N	2025-09-19 22:38:43.031454
731	Garware Hi-Tech Films Limited	GRWRHITECH	\N	2025-09-19 22:38:43.031454
732	Gujarat State Fertilizers & Chemicals Limited	GSFC	\N	2025-09-19 22:38:43.031454
733	Global Surfaces Limited	GSLSU	\N	2025-09-19 22:38:43.031454
734	Gujarat State Petronet Limited	GSPL	\N	2025-09-19 22:38:43.031454
735	GSS Infotech Limited	GSS	\N	2025-09-19 22:38:43.031454
736	G-TEC JAINX EDUCATION LIMITED	GTECJAINX	\N	2025-09-19 22:38:43.031454
737	GTL Limited	GTL	\N	2025-09-19 22:38:43.031454
738	GTL Infrastructure Limited	GTLINFRA	\N	2025-09-19 22:38:43.031454
739	GTPL Hathway Limited	GTPL	\N	2025-09-19 22:38:43.031454
740	Gufic Biosciences Limited	GUFICBIO	\N	2025-09-19 22:38:43.031454
741	Gujarat Alkalies and Chemicals Limited	GUJALKALI	\N	2025-09-19 22:38:43.031454
742	Gujarat Apollo Industries Limited	GUJAPOLLO	\N	2025-09-19 22:38:43.031454
743	Gujarat Gas Limited	GUJGASLTD	\N	2025-09-19 22:38:43.031454
744	Gujarat Raffia Industries Limited	GUJRAFFIA	\N	2025-09-19 22:38:43.031454
745	Gujarat Themis Biosyn Limited	GUJTHEM	\N	2025-09-19 22:38:43.031454
746	Gulf Oil Lubricants India Limited	GULFOILLUB	\N	2025-09-19 22:38:43.031454
747	GP Petroleums Limited	GULFPETRO	\N	2025-09-19 22:38:43.031454
748	Gulshan Polyols Limited	GULPOLY	\N	2025-09-19 22:38:43.031454
749	GVK Power & Infrastructure Limited	GVKPIL	\N	2025-09-19 22:38:43.031454
750	GE Power India Limited	GVPIL	\N	2025-09-19 22:38:43.031454
751	GVP Infotech Limited	GVPTECH	\N	2025-09-19 22:38:43.031454
752	GE Vernova T&D India Limited	GVT&D	\N	2025-09-19 22:38:43.031454
753	Hindustan Aeronautics Limited	HAL	\N	2025-09-19 22:38:43.031454
754	Happiest Minds Technologies Limited	HAPPSTMNDS	\N	2025-09-19 22:38:43.031454
755	Happy Forgings Limited	HAPPYFORGE	\N	2025-09-19 22:38:43.031454
756	Hardwyn India Limited	HARDWYN	\N	2025-09-19 22:38:43.031454
757	Hariom Pipe Industries Limited	HARIOMPIPE	\N	2025-09-19 22:38:43.031454
758	Harrisons  Malayalam Limited	HARRMALAYA	\N	2025-09-19 22:38:43.031454
759	Harsha Engineers International Limited	HARSHA	\N	2025-09-19 22:38:43.031454
760	Hathway Cable & Datacom Limited	HATHWAY	\N	2025-09-19 22:38:43.031454
761	Hatsun Agro Product Limited	HATSUN	\N	2025-09-19 22:38:43.031454
762	Havells India Limited	HAVELLS	\N	2025-09-19 22:38:43.031454
763	Sri Havisha Hospitality and Infrastructure Limited	HAVISHA	\N	2025-09-19 22:38:43.031454
764	HBL Engineering Limited	HBLENGINE	\N	2025-09-19 22:38:43.031454
765	HB Stockholdings Limited	HBSL	\N	2025-09-19 22:38:43.031454
766	Hindustan Construction Company Limited	HCC	\N	2025-09-19 22:38:43.031454
767	Healthcare Global Enterprises Limited	HCG	\N	2025-09-19 22:38:43.031454
768	HCL Infosystems Limited	HCL-INSYS	\N	2025-09-19 22:38:43.031454
769	HCL Technologies Limited	HCLTECH	\N	2025-09-19 22:38:43.031454
770	HDB Financial Services Limited	HDBFS	\N	2025-09-19 22:38:43.031454
771	HDFC Asset Management Company Limited	HDFCAMC	\N	2025-09-19 22:38:43.031454
772	HDFC Bank Limited	HDFCBANK	\N	2025-09-19 22:38:43.031454
773	HDFC Life Insurance Company Limited	HDFCLIFE	\N	2025-09-19 22:38:43.031454
774	Housing Development and Infrastructure Limited	HDIL	\N	2025-09-19 22:38:43.031454
775	Heads UP Ventures Limited	HEADSUP	\N	2025-09-19 22:38:43.031454
776	HEC Infra Projects Limited	HECPROJECT	\N	2025-09-19 22:38:43.031454
777	HEG Limited	HEG	\N	2025-09-19 22:38:43.031454
778	HeidelbergCement India Limited	HEIDELBERG	\N	2025-09-19 22:38:43.031454
779	Hemisphere Properties India Limited	HEMIPROP	\N	2025-09-19 22:38:43.031454
780	Heranba Industries Limited	HERANBA	\N	2025-09-19 22:38:43.031454
781	Hercules Hoists Limited	HERCULES	\N	2025-09-19 22:38:43.031454
782	Heritage Foods Limited	HERITGFOOD	\N	2025-09-19 22:38:43.031454
783	Hero MotoCorp Limited	HEROMOTOCO	\N	2025-09-19 22:38:43.031454
784	Hester Biosciences Limited	HESTERBIO	\N	2025-09-19 22:38:43.031454
785	Heubach Colorants India Limited	HEUBACHIND	\N	2025-09-19 22:38:43.031454
786	Hexa Tradex Limited	HEXATRADEX	\N	2025-09-19 22:38:43.031454
787	Hexaware Technologies Limited	HEXT	\N	2025-09-19 22:38:43.031454
788	HFCL Limited	HFCL	\N	2025-09-19 22:38:43.031454
789	H.G. Infra Engineering Limited	HGINFRA	\N	2025-09-19 22:38:43.031454
790	HandsOn Global Management (HGM) Limited	HGM	\N	2025-09-19 22:38:43.031454
791	Hinduja Global Solutions Limited	HGS	\N	2025-09-19 22:38:43.031454
792	Hikal Limited	HIKAL	\N	2025-09-19 22:38:43.031454
793	Highway Infrastructure Limited	HILINFRA	\N	2025-09-19 22:38:43.031454
794	Hilton Metal Forging Limited	HILTON	\N	2025-09-19 22:38:43.031454
795	Himatsingka Seide Limited	HIMATSEIDE	\N	2025-09-19 22:38:43.031454
796	Hindalco Industries Limited	HINDALCO	\N	2025-09-19 22:38:43.031454
797	Hindustan Composites Limited	HINDCOMPOS	\N	2025-09-19 22:38:43.031454
798	Hindcon Chemicals Limited	HINDCON	\N	2025-09-19 22:38:43.031454
799	Hindustan Copper Limited	HINDCOPPER	\N	2025-09-19 22:38:43.031454
800	Hindustan Motors Limited	HINDMOTORS	\N	2025-09-19 22:38:43.031454
801	Hindustan Oil Exploration Company Limited	HINDOILEXP	\N	2025-09-19 22:38:43.031454
802	Hindustan Petroleum Corporation Limited	HINDPETRO	\N	2025-09-19 22:38:43.031454
803	Hindustan Unilever Limited	HINDUNILVR	\N	2025-09-19 22:38:43.031454
804	Hindware Home Innovation Limited	HINDWAREAP	\N	2025-09-19 22:38:43.031454
805	Hindustan Zinc Limited	HINDZINC	\N	2025-09-19 22:38:43.031454
806	Hind Rectifiers Limited	HIRECT	\N	2025-09-19 22:38:43.031454
807	Hisar Metal Industries Limited	HISARMETAL	\N	2025-09-19 22:38:43.031454
808	Hi-Tech Pipes Limited	HITECH	\N	2025-09-19 22:38:43.031454
809	Hitech Corporation Limited	HITECHCORP	\N	2025-09-19 22:38:43.031454
810	The Hi-Tech Gears Limited	HITECHGEAR	\N	2025-09-19 22:38:43.031454
811	HLE Glascoat Limited	HLEGLAS	\N	2025-09-19 22:38:43.031454
812	HLV LIMITED	HLVLTD	\N	2025-09-19 22:38:43.031454
813	HMA Agro Industries Limited	HMAAGRO	\N	2025-09-19 22:38:43.031454
814	HMT Limited	HMT	\N	2025-09-19 22:38:43.031454
815	Hindustan Media Ventures Limited	HMVL	\N	2025-09-19 22:38:43.031454
816	Hindustan Foods Limited	HNDFDS	\N	2025-09-19 22:38:43.031454
817	Home First Finance Company India Limited	HOMEFIRST	\N	2025-09-19 22:38:43.031454
818	Honasa Consumer Limited	HONASA	\N	2025-09-19 22:38:43.031454
819	Honeywell Automation India Limited	HONAUT	\N	2025-09-19 22:38:43.031454
820	Honda India Power Products Limited	HONDAPOWER	\N	2025-09-19 22:38:43.031454
821	HP Adhesives Limited	HPAL	\N	2025-09-19 22:38:43.031454
822	Hindprakash Industries Limited	HPIL	\N	2025-09-19 22:38:43.031454
823	HPL Electric & Power Limited	HPL	\N	2025-09-19 22:38:43.031454
824	Himadri Speciality Chemical Limited	HSCL	\N	2025-09-19 22:38:43.031454
825	HT Media Limited	HTMEDIA	\N	2025-09-19 22:38:43.031454
826	Hubtown Limited	HUBTOWN	\N	2025-09-19 22:38:43.031454
827	Housing & Urban Development Corporation Limited	HUDCO	\N	2025-09-19 22:38:43.031454
828	Huhtamaki India Limited	HUHTAMAKI	\N	2025-09-19 22:38:43.031454
829	Hybrid Financial Services Limited	HYBRIDFIN	\N	2025-09-19 22:38:43.031454
830	Hyundai Motor India Limited	HYUNDAI	\N	2025-09-19 22:38:43.031454
831	ICDS Limited	ICDSLTD	\N	2025-09-19 22:38:43.031454
832	Ice Make Refrigeration Limited	ICEMAKE	\N	2025-09-19 22:38:43.031454
833	ICICI Bank Limited	ICICIBANK	\N	2025-09-19 22:38:43.031454
834	ICICI Lombard General Insurance Company Limited	ICICIGI	\N	2025-09-19 22:38:43.031454
835	ICICI Prudential Life Insurance Company Limited	ICICIPRULI	\N	2025-09-19 22:38:43.031454
836	Indo Count Industries Limited	ICIL	\N	2025-09-19 22:38:43.031454
837	ICRA Limited	ICRA	\N	2025-09-19 22:38:43.031454
838	IDBI Bank Limited	IDBI	\N	2025-09-19 22:38:43.031454
839	Vodafone Idea Limited	IDEA	\N	2025-09-19 22:38:43.031454
840	Ideaforge Technology Limited	IDEAFORGE	\N	2025-09-19 22:38:43.031454
841	IDFC First Bank Limited	IDFCFIRSTB	\N	2025-09-19 22:38:43.031454
842	Indiabulls Enterprises Limited	IEL	\N	2025-09-19 22:38:43.031454
843	Indian Energy Exchange Limited	IEX	\N	2025-09-19 22:38:43.031454
844	IFB Agro Industries Limited	IFBAGRO	\N	2025-09-19 22:38:43.031454
845	IFB Industries Limited	IFBIND	\N	2025-09-19 22:38:43.031454
846	IFCI Limited	IFCI	\N	2025-09-19 22:38:43.031454
847	IFGL Refractories Limited	IFGLEXPOR	\N	2025-09-19 22:38:43.031454
848	Igarashi Motors India Limited	IGARASHI	\N	2025-09-19 22:38:43.031454
849	Indogulf Cropsciences Limited	IGCL	\N	2025-09-19 22:38:43.031454
850	International Gemmological Institute (India) Limited	IGIL	\N	2025-09-19 22:38:43.031454
851	Indraprastha Gas Limited	IGL	\N	2025-09-19 22:38:43.031454
852	IG Petrochemicals Limited	IGPL	\N	2025-09-19 22:38:43.031454
853	IIFL Finance Limited	IIFL	\N	2025-09-19 22:38:43.031454
854	IIFL Capital Services Limited	IIFLCAPS	\N	2025-09-19 22:38:43.031454
855	Industrial Investment Trust Limited	IITL	\N	2025-09-19 22:38:43.031454
856	IKIO Technologies Limited	IKIO	\N	2025-09-19 22:38:43.031454
857	Inventurus Knowledge Solutions Limited	IKS	\N	2025-09-19 22:38:43.031454
858	IL&FS Engineering and Construction Company Limited	IL&FSENGG	\N	2025-09-19 22:38:43.031454
859	IL&FS Transportation Networks Limited	IL&FSTRANS	\N	2025-09-19 22:38:43.031454
860	Imagicaaworld Entertainment Limited	IMAGICAA	\N	2025-09-19 22:38:43.031454
861	Indian Metals & Ferro Alloys Limited	IMFA	\N	2025-09-19 22:38:43.031454
862	India Motor Parts and Accessories Limited	IMPAL	\N	2025-09-19 22:38:43.031454
863	Impex Ferro Tech Limited	IMPEXFERRO	\N	2025-09-19 22:38:43.031454
864	INCREDIBLE INDUSTRIES LIMITED	INCREDIBLE	\N	2025-09-19 22:38:43.031454
865	Indbank Merchant Banking Services Limited	INDBANK	\N	2025-09-19 22:38:43.031454
866	Indegene Limited	INDGN	\N	2025-09-19 22:38:43.031454
867	The Indian Hotels Company Limited	INDHOTEL	\N	2025-09-19 22:38:43.031454
868	The India Cements Limited	INDIACEM	\N	2025-09-19 22:38:43.031454
869	India Glycols Limited	INDIAGLYCO	\N	2025-09-19 22:38:43.031454
870	Indiamart Intermesh Limited	INDIAMART	\N	2025-09-19 22:38:43.031454
871	Indian Bank	INDIANB	\N	2025-09-19 22:38:43.031454
872	Indian Card Clothing Company Limited	INDIANCARD	\N	2025-09-19 22:38:43.031454
873	Indian Hume Pipe Company Limited	INDIANHUME	\N	2025-09-19 22:38:43.031454
874	India Shelter Finance Corporation Limited	INDIASHLTR	\N	2025-09-19 22:38:43.031454
875	InterGlobe Aviation Limited	INDIGO	\N	2025-09-19 22:38:43.031454
876	Indigo Paints Limited	INDIGOPNTS	\N	2025-09-19 22:38:43.031454
877	Indiqube Spaces Limited	INDIQUBE	\N	2025-09-19 22:38:43.031454
878	India Nippon Electricals Limited	INDNIPPON	\N	2025-09-19 22:38:43.031454
879	Indo Amines Limited	INDOAMIN	\N	2025-09-19 22:38:43.031454
880	Indo Borax & Chemicals Limited	INDOBORAX	\N	2025-09-19 22:38:43.031454
881	Indoco Remedies Limited	INDOCO	\N	2025-09-19 22:38:43.031454
882	Indo Farm Equipment Limited	INDOFARM	\N	2025-09-19 22:38:43.031454
883	Indo Rama Synthetics (India) Limited	INDORAMA	\N	2025-09-19 22:38:43.031454
884	IndoStar Capital Finance Limited	INDOSTAR	\N	2025-09-19 22:38:43.031454
885	Indo Tech Transformers Limited	INDOTECH	\N	2025-09-19 22:38:43.031454
886	Indo Thai Securities Limited	INDOTHAI	\N	2025-09-19 22:38:43.031454
887	Indo Us Biotech Limited	INDOUS	\N	2025-09-19 22:38:43.031454
888	Indowind Energy Limited	INDOWIND	\N	2025-09-19 22:38:43.031454
889	Indraprastha Medical Corporation Limited	INDRAMEDCO	\N	2025-09-19 22:38:43.031454
890	Ind-Swift Laboratories Limited	INDSWFTLAB	\N	2025-09-19 22:38:43.031454
891	Indian Terrain Fashions Limited	INDTERRAIN	\N	2025-09-19 22:38:43.031454
892	IndusInd Bank Limited	INDUSINDBK	\N	2025-09-19 22:38:43.031454
893	Indus Towers Limited	INDUSTOWER	\N	2025-09-19 22:38:43.031454
894	Infibeam Avenues Limited	INFIBEAM	\N	2025-09-19 22:38:43.031454
895	InfoBeans Technologies Limited	INFOBEAN	\N	2025-09-19 22:38:43.031454
896	Infomedia Press Limited	INFOMEDIA	\N	2025-09-19 22:38:43.031454
897	Infosys Limited	INFY	\N	2025-09-19 22:38:43.031454
898	Ingersoll Rand (India) Limited	INGERRAND	\N	2025-09-19 22:38:43.031454
899	Innova Captab Limited	INNOVACAP	\N	2025-09-19 22:38:43.031454
900	Innovana Thinklabs Limited	INNOVANA	\N	2025-09-19 22:38:43.031454
901	Inox Green Energy Services Limited	INOXGREEN	\N	2025-09-19 22:38:43.031454
902	INOX India Limited	INOXINDIA	\N	2025-09-19 22:38:43.031454
903	Inox Wind Limited	INOXWIND	\N	2025-09-19 22:38:43.031454
904	Insecticides (India) Limited	INSECTICID	\N	2025-09-19 22:38:43.031454
905	Inspirisys Solutions Limited	INSPIRISYS	\N	2025-09-19 22:38:43.031454
906	Intellect Design Arena Limited	INTELLECT	\N	2025-09-19 22:38:43.031454
907	Intense Technologies Limited	INTENTECH	\N	2025-09-19 22:38:43.031454
908	Interarch Building Solutions Limited	INTERARCH	\N	2025-09-19 22:38:43.031454
909	International Conveyors Limited	INTLCONV	\N	2025-09-19 22:38:43.031454
910	Inventure Growth & Securities Limited	INVENTURE	\N	2025-09-19 22:38:43.031454
911	Indian Overseas Bank	IOB	\N	2025-09-19 22:38:43.031454
912	Indian Oil Corporation Limited	IOC	\N	2025-09-19 22:38:43.031454
913	IOL Chemicals and Pharmaceuticals Limited	IOLCP	\N	2025-09-19 22:38:43.031454
914	ION Exchange (India) Limited	IONEXCHANG	\N	2025-09-19 22:38:43.031454
915	IPCA Laboratories Limited	IPCALAB	\N	2025-09-19 22:38:43.031454
916	India Pesticides Limited	IPL	\N	2025-09-19 22:38:43.031454
917	IRB Infrastructure Developers Limited	IRB	\N	2025-09-19 22:38:43.031454
918	Ircon International Limited	IRCON	\N	2025-09-19 22:38:43.031454
919	Indian Railway Catering And Tourism Corporation Limited	IRCTC	\N	2025-09-19 22:38:43.031454
920	Indian Renewable Energy Development Agency Limited	IREDA	\N	2025-09-19 22:38:43.031454
921	Indian Railway Finance Corporation Limited	IRFC	\N	2025-09-19 22:38:43.031454
922	Iris Business Services Limited	IRIS	\N	2025-09-19 22:38:43.031454
923	Iris Clothings Limited	IRISDOREME	\N	2025-09-19 22:38:43.031454
924	IRM Energy Limited	IRMENERGY	\N	2025-09-19 22:38:43.031454
925	Intrasoft Technologies Limited	ISFT	\N	2025-09-19 22:38:43.031454
926	Isgec Heavy Engineering Limited	ISGEC	\N	2025-09-19 22:38:43.031454
927	Ishan Dyes and Chemicals Limited	ISHANCH	\N	2025-09-19 22:38:43.031454
928	ITC Limited	ITC	\N	2025-09-19 22:38:43.031454
929	ITC Hotels Limited	ITCHOTELS	\N	2025-09-19 22:38:43.031454
930	India Tourism Development Corporation Limited	ITDC	\N	2025-09-19 22:38:43.031454
931	ITI Limited	ITI	\N	2025-09-19 22:38:43.031454
932	IL&FS Investment Managers Limited	IVC	\N	2025-09-19 22:38:43.031454
933	IVP Limited	IVP	\N	2025-09-19 22:38:43.031454
934	Le Travenues Technology Limited	IXIGO	\N	2025-09-19 22:38:43.031454
935	IZMO Limited	IZMO	\N	2025-09-19 22:38:43.031454
936	The Jammu & Kashmir Bank Limited	J&KBANK	\N	2025-09-19 22:38:43.031454
937	Jagran Prakashan Limited	JAGRAN	\N	2025-09-19 22:38:43.031454
938	Jagsonpal Pharmaceuticals Limited	JAGSNPHARM	\N	2025-09-19 22:38:43.031454
939	Jai Balaji Industries Limited	JAIBALAJI	\N	2025-09-19 22:38:43.031454
940	Jai Corp Limited	JAICORPLTD	\N	2025-09-19 22:38:43.031454
941	Nandani Creation Limited	JAIPURKURT	\N	2025-09-19 22:38:43.031454
942	Jamna Auto Industries Limited	JAMNAAUTO	\N	2025-09-19 22:38:43.031454
943	Jash Engineering Limited	JASH	\N	2025-09-19 22:38:43.031454
944	Jayant Agro Organics Limited	JAYAGROGN	\N	2025-09-19 22:38:43.031454
945	Jay Bharat Maruti Limited	JAYBARMARU	\N	2025-09-19 22:38:43.031454
946	Jayaswal Neco Industries Limited	JAYNECOIND	\N	2025-09-19 22:38:43.031454
947	Jayshree Tea & Industries Limited	JAYSREETEA	\N	2025-09-19 22:38:43.031454
948	JB Chemicals & Pharmaceuticals Limited	JBCHEPHARM	\N	2025-09-19 22:38:43.031454
949	JBM Auto Limited	JBMA	\N	2025-09-19 22:38:43.031454
950	Johnson Controls - Hitachi Air Conditioning India Limited	JCHAC	\N	2025-09-19 22:38:43.031454
951	Jet Freight Logistics Limited	JETFREIGHT	\N	2025-09-19 22:38:43.031454
952	J.G.Chemicals Limited	JGCHEM	\N	2025-09-19 22:38:43.031454
953	JHS Svendgaard Laboratories Limited	JHS	\N	2025-09-19 22:38:43.031454
954	Jindal Photo Limited	JINDALPHOT	\N	2025-09-19 22:38:43.031454
955	Jindal Poly Films Limited	JINDALPOLY	\N	2025-09-19 22:38:43.031454
956	Jindal Saw Limited	JINDALSAW	\N	2025-09-19 22:38:43.031454
957	JINDAL STEEL LIMITED	JINDALSTEL	\N	2025-09-19 22:38:43.031454
958	Jindal Drilling And Industries Limited	JINDRILL	\N	2025-09-19 22:38:43.031454
959	Jindal Worldwide Limited	JINDWORLD	\N	2025-09-19 22:38:43.031454
960	Jio Financial Services Limited	JIOFIN	\N	2025-09-19 22:38:43.031454
961	Jain Irrigation Systems Limited	JISLDVREQS	\N	2025-09-19 22:38:43.031454
962	Jain Irrigation Systems Limited	JISLJALEQS	\N	2025-09-19 22:38:43.031454
963	JITF Infralogistics Limited	JITFINFRA	\N	2025-09-19 22:38:43.031454
964	JK Cement Limited	JKCEMENT	\N	2025-09-19 22:38:43.031454
965	J.Kumar Infraprojects Limited	JKIL	\N	2025-09-19 22:38:43.031454
966	JK Lakshmi Cement Limited	JKLAKSHMI	\N	2025-09-19 22:38:43.031454
967	JK Paper Limited	JKPAPER	\N	2025-09-19 22:38:43.031454
968	JK Tyre & Industries Limited	JKTYRE	\N	2025-09-19 22:38:43.031454
969	Jupiter Life Line Hospitals Limited	JLHL	\N	2025-09-19 22:38:43.031454
970	Jullundur Motor Agency (Delhi) Limited	JMA	\N	2025-09-19 22:38:43.031454
971	JM Financial Limited	JMFINANCIL	\N	2025-09-19 22:38:43.031454
972	JNK India Limited	JNKINDIA	\N	2025-09-19 22:38:43.031454
973	Jocil Limited	JOCIL	\N	2025-09-19 22:38:43.031454
974	Jindal Poly Investment and Finance Company Limited	JPOLYINVST	\N	2025-09-19 22:38:43.031454
975	Jaiprakash Power Ventures Limited	JPPOWER	\N	2025-09-19 22:38:43.031454
976	Jana Small Finance Bank Limited	JSFB	\N	2025-09-19 22:38:43.031454
977	Jindal Stainless Limited	JSL	\N	2025-09-19 22:38:43.031454
978	Jeena Sikho Lifecare Limited	JSLL	\N	2025-09-19 22:38:43.031454
979	JSW Cement Limited	JSWCEMENT	\N	2025-09-19 22:38:43.031454
980	JSW Energy Limited	JSWENERGY	\N	2025-09-19 22:38:43.031454
981	JSW Holdings Limited	JSWHL	\N	2025-09-19 22:38:43.031454
982	JSW Infrastructure Limited	JSWINFRA	\N	2025-09-19 22:38:43.031454
983	JSW Steel Limited	JSWSTEEL	\N	2025-09-19 22:38:43.031454
984	Jtekt India Limited	JTEKTINDIA	\N	2025-09-19 22:38:43.031454
985	JTL INDUSTRIES LIMITED	JTLIND	\N	2025-09-19 22:38:43.031454
986	Jubilant Agri and Consumer Products Limited	JUBLCPL	\N	2025-09-19 22:38:43.031454
987	Jubilant Foodworks Limited	JUBLFOOD	\N	2025-09-19 22:38:43.031454
988	Jubilant Ingrevia Limited	JUBLINGREA	\N	2025-09-19 22:38:43.031454
989	Jubilant Pharmova Limited	JUBLPHARMA	\N	2025-09-19 22:38:43.031454
990	Juniper Hotels Limited	JUNIPER	\N	2025-09-19 22:38:43.031454
991	Just Dial Limited	JUSTDIAL	\N	2025-09-19 22:38:43.031454
992	Jupiter Wagons Limited	JWL	\N	2025-09-19 22:38:43.031454
993	Jyothy Labs Limited	JYOTHYLAB	\N	2025-09-19 22:38:43.031454
994	Jyoti CNC Automation Limited	JYOTICNC	\N	2025-09-19 22:38:43.031454
995	Jyoti Structures Limited	JYOTISTRUC	\N	2025-09-19 22:38:43.031454
996	Kabra Extrusion Technik Limited	KABRAEXTRU	\N	2025-09-19 22:38:43.031454
997	Kajaria Ceramics Limited	KAJARIACER	\N	2025-09-19 22:38:43.031454
998	Kakatiya Cement Sugar & Industries Limited	KAKATCEM	\N	2025-09-19 22:38:43.031454
999	Sai Silks (Kalamandir) Limited	KALAMANDIR	\N	2025-09-19 22:38:43.031454
1000	Kalpataru Limited	KALPATARU	\N	2025-09-19 22:38:43.031454
1001	Kalyani Commercials Limited	KALYANI	\N	2025-09-19 22:38:43.031454
1002	Kalyani Forge Limited	KALYANIFRG	\N	2025-09-19 22:38:43.031454
1003	Kalyan Jewellers India Limited	KALYANKJIL	\N	2025-09-19 22:38:43.031454
1004	Kamat Hotels (I) Limited	KAMATHOTEL	\N	2025-09-19 22:38:43.031454
1005	Kamdhenu Limited	KAMDHENU	\N	2025-09-19 22:38:43.031454
1006	Kamdhenu Ventures Limited	KAMOPAINTS	\N	2025-09-19 22:38:43.031454
1007	Kanani Industries Limited	KANANIIND	\N	2025-09-19 22:38:43.031454
1008	Kanoria Chemicals & Industries Limited	KANORICHEM	\N	2025-09-19 22:38:43.031454
1009	Kanpur Plastipack Limited	KANPRPLA	\N	2025-09-19 22:38:43.031454
1010	Kansai Nerolac Paints Limited	KANSAINER	\N	2025-09-19 22:38:43.031454
1011	Kapston Services Limited	KAPSTON	\N	2025-09-19 22:38:43.031454
1012	Karma Energy Limited	KARMAENG	\N	2025-09-19 22:38:43.031454
1013	Karur Vysya Bank Limited	KARURVYSYA	\N	2025-09-19 22:38:43.031454
1014	Kaushalya Infrastructure Development Corporation Limited	KAUSHALYA	\N	2025-09-19 22:38:43.031454
1015	Kavveri Defence & Wireless Technologies Limited	KAVDEFENCE	\N	2025-09-19 22:38:43.031454
1016	Kaya Limited	KAYA	\N	2025-09-19 22:38:43.031454
1017	Kaynes Technology India Limited	KAYNES	\N	2025-09-19 22:38:43.031454
1018	KCP Limited	KCP	\N	2025-09-19 22:38:43.031454
1019	KCP Sugar and Industries Corporation Limited	KCPSUGIND	\N	2025-09-19 22:38:43.031454
1020	KDDL Limited	KDDL	\N	2025-09-19 22:38:43.031454
1021	KEC International Limited	KEC	\N	2025-09-19 22:38:43.031454
1022	Kirloskar Electric Company Limited	KECL	\N	2025-09-19 22:38:43.031454
1023	DSJ Keep Learning Limited	KEEPLEARN	\N	2025-09-19 22:38:43.031454
1024	KEI Industries Limited	KEI	\N	2025-09-19 22:38:43.031454
1025	Kellton Tech Solutions Limited	KELLTONTEC	\N	2025-09-19 22:38:43.031454
1026	Kernex Microsystems (India) Limited	KERNEX	\N	2025-09-19 22:38:43.031454
1027	Kesoram Industries Limited	KESORAMIND	\N	2025-09-19 22:38:43.031454
1028	Keynote Financial Services Limited	KEYFINSERV	\N	2025-09-19 22:38:43.031454
1029	Kfin Technologies Limited	KFINTECH	\N	2025-09-19 22:38:43.031454
1030	Khadim India Limited	KHADIM	\N	2025-09-19 22:38:43.031454
1031	Khaitan Chemicals & Fertilizers Limited	KHAICHEM	\N	2025-09-19 22:38:43.031454
1032	Khaitan (India) Limited	KHAITANLTD	\N	2025-09-19 22:38:43.031454
1033	Khandwala Securities Limited	KHANDSE	\N	2025-09-19 22:38:43.031454
1034	Kalyani Investment Company Limited	KICL	\N	2025-09-19 22:38:43.031454
1035	Kilitch Drugs (India) Limited	KILITCH	\N	2025-09-19 22:38:43.031454
1036	Krishna Institute of Medical Sciences Limited	KIMS	\N	2025-09-19 22:38:43.031454
1037	Kingfa Science & Technology (India) Limited	KINGFA	\N	2025-09-19 22:38:43.031454
1038	KIOCL Limited	KIOCL	\N	2025-09-19 22:38:43.031454
1039	Kiri Industries Limited	KIRIINDUS	\N	2025-09-19 22:38:43.031454
1040	Kirloskar Brothers Limited	KIRLOSBROS	\N	2025-09-19 22:38:43.031454
1041	Kirloskar Oil Engines Limited	KIRLOSENG	\N	2025-09-19 22:38:43.031454
1042	Kirloskar Industries Limited	KIRLOSIND	\N	2025-09-19 22:38:43.031454
1043	Kirloskar Pneumatic Company Limited	KIRLPNU	\N	2025-09-19 22:38:43.031454
1044	Kitex Garments Limited	KITEX	\N	2025-09-19 22:38:43.031454
1045	Kewal Kiran Clothing Limited	KKCL	\N	2025-09-19 22:38:43.031454
1046	Knowledge Marine & Engineering Works Limited	KMEW	\N	2025-09-19 22:38:43.031454
1047	K.M.Sugar Mills Limited	KMSUGAR	\N	2025-09-19 22:38:43.031454
1048	KNR Constructions Limited	KNRCON	\N	2025-09-19 22:38:43.031454
1049	Kohinoor Foods Limited	KOHINOOR	\N	2025-09-19 22:38:43.031454
1050	Kokuyo Camlin Limited	KOKUYOCMLN	\N	2025-09-19 22:38:43.031454
1051	Kolte - Patil Developers Limited	KOLTEPATIL	\N	2025-09-19 22:38:43.031454
1052	Kopran Limited	KOPRAN	\N	2025-09-19 22:38:43.031454
1053	Kotak Mahindra Bank Limited	KOTAKBANK	\N	2025-09-19 22:38:43.031454
1054	Kothari Sugars And Chemicals Limited	KOTARISUG	\N	2025-09-19 22:38:43.031454
1055	Kothari Petrochemicals Limited	KOTHARIPET	\N	2025-09-19 22:38:43.031454
1056	Kothari Products Limited	KOTHARIPRO	\N	2025-09-19 22:38:43.031454
1057	K.P. Energy Limited	KPEL	\N	2025-09-19 22:38:43.031454
1058	KPI Green Energy Limited	KPIGREEN	\N	2025-09-19 22:38:43.031454
1059	Kalpataru Projects International Limited	KPIL	\N	2025-09-19 22:38:43.031454
1060	KPIT Technologies Limited	KPITTECH	\N	2025-09-19 22:38:43.031454
1061	K.P.R. Mill Limited	KPRMILL	\N	2025-09-19 22:38:43.031454
1062	KRBL Limited	KRBL	\N	2025-09-19 22:38:43.031454
1063	Krebs Biochemicals and Industries Limited	KREBSBIO	\N	2025-09-19 22:38:43.031454
1064	Kridhan Infra Limited	KRIDHANINF	\N	2025-09-19 22:38:43.031454
1065	Krishana Phoschem Limited	KRISHANA	\N	2025-09-19 22:38:43.031454
1066	Krishival Foods Limited	KRISHIVAL	\N	2025-09-19 22:38:43.031454
1067	Kriti Industries (India) Limited	KRITI	\N	2025-09-19 22:38:43.031454
1068	Kritika Wires Limited	KRITIKA	\N	2025-09-19 22:38:43.031454
1069	Kriti Nutrients Limited	KRITINUT	\N	2025-09-19 22:38:43.031454
1070	KRN Heat Exchanger and Refrigeration Limited	KRN	\N	2025-09-19 22:38:43.031454
1071	Kronox Lab Sciences Limited	KRONOX	\N	2025-09-19 22:38:43.031454
1072	Kross Limited	KROSS	\N	2025-09-19 22:38:43.031454
1073	Krsnaa Diagnostics Limited	KRSNAA	\N	2025-09-19 22:38:43.031454
1074	Krystal Integrated Services Limited	KRYSTAL	\N	2025-09-19 22:38:43.031454
1075	Ksb Limited	KSB	\N	2025-09-19 22:38:43.031454
1076	Kaveri Seed Company Limited	KSCL	\N	2025-09-19 22:38:43.031454
1077	Kshitij Polyline Limited	KSHITIJPOL	\N	2025-09-19 22:38:43.031454
1078	Kalyani Steels Limited	KSL	\N	2025-09-19 22:38:43.031454
1079	Ksolves India Limited	KSOLVES	\N	2025-09-19 22:38:43.031454
1080	The Karnataka Bank Limited	KTKBANK	\N	2025-09-19 22:38:43.031454
1081	Kuantum Papers Limited	KUANTUM	\N	2025-09-19 22:38:43.031454
1082	Lagnam Spintex Limited	LAGNAM	\N	2025-09-19 22:38:43.031454
1083	Lorenzini Apparels Limited	LAL	\N	2025-09-19 22:38:43.031454
1084	Dr. Lal Path Labs Ltd.	LALPATHLAB	\N	2025-09-19 22:38:43.031454
1085	Lambodhara Textiles Limited	LAMBODHARA	\N	2025-09-19 22:38:43.031454
1086	Lancor Holdings Limited	LANCORHOL	\N	2025-09-19 22:38:43.031454
1087	Landmark Cars Limited	LANDMARK	\N	2025-09-19 22:38:43.031454
1088	La Opala RG Limited	LAOPALA	\N	2025-09-19 22:38:43.031454
1089	Lasa Supergenerics Limited	LASA	\N	2025-09-19 22:38:43.031454
1090	Latent View Analytics Limited	LATENTVIEW	\N	2025-09-19 22:38:43.031454
1091	Latteys Industries Limited	LATTEYS	\N	2025-09-19 22:38:43.031454
1092	Laurus Labs Limited	LAURUSLABS	\N	2025-09-19 22:38:43.031454
1093	Laxmi Cotspin Limited	LAXMICOT	\N	2025-09-19 22:38:43.031454
1094	Laxmi Dental Limited	LAXMIDENTL	\N	2025-09-19 22:38:43.031454
1095	Laxmi India Finance Limited	LAXMIINDIA	\N	2025-09-19 22:38:43.031454
1096	LCC Infotech Limited	LCCINFOTEC	\N	2025-09-19 22:38:43.031454
1097	Lemon Tree Hotels Limited	LEMONTREE	\N	2025-09-19 22:38:43.031454
1098	Lexus Granito (India) Limited	LEXUS	\N	2025-09-19 22:38:43.031454
1099	Lakshmi Finance & Industrial Corporation Limited	LFIC	\N	2025-09-19 22:38:43.031454
1100	LG Balakrishnan & Bros Limited	LGBBROSLTD	\N	2025-09-19 22:38:43.031454
1101	Laxmi Goldorna House Limited	LGHL	\N	2025-09-19 22:38:43.031454
1102	Libas Consumer Products Limited	LIBAS	\N	2025-09-19 22:38:43.031454
1103	Liberty Shoes Limited	LIBERTSHOE	\N	2025-09-19 22:38:43.031454
1104	LIC Housing Finance Limited	LICHSGFIN	\N	2025-09-19 22:38:43.031454
1105	Life Insurance Corporation Of India	LICI	\N	2025-09-19 22:38:43.031454
1106	Likhitha Infrastructure Limited	LIKHITHA	\N	2025-09-19 22:38:43.031454
1107	Linc Limited	LINC	\N	2025-09-19 22:38:43.031454
1108	Lincoln Pharmaceuticals Limited	LINCOLN	\N	2025-09-19 22:38:43.031454
1109	Linde India Limited	LINDEINDIA	\N	2025-09-19 22:38:43.031454
1110	LLOYDS ENGINEERING WORKS LIMITED	LLOYDSENGG	\N	2025-09-19 22:38:43.031454
1111	Lloyds Enterprises Limited	LLOYDSENT	\N	2025-09-19 22:38:43.031454
1112	Lloyds Metals And Energy Limited	LLOYDSME	\N	2025-09-19 22:38:43.031454
1113	LMW Limited	LMW	\N	2025-09-19 22:38:43.031454
1114	Lodha Developers Limited	LODHA	\N	2025-09-19 22:38:43.031454
1115	Lokesh Machines Limited	LOKESHMACH	\N	2025-09-19 22:38:43.031454
1116	Lords Chloro Alkali Limited	LORDSCHLO	\N	2025-09-19 22:38:43.031454
1117	Sri Lotus Developers and Realty Limited	LOTUSDEV	\N	2025-09-19 22:38:43.031454
1118	Lotus Eye Hospital and Institute Limited	LOTUSEYE	\N	2025-09-19 22:38:43.031454
1119	Lovable Lingerie Limited	LOVABLE	\N	2025-09-19 22:38:43.031454
1120	Loyal Textile Mills Limited	LOYALTEX	\N	2025-09-19 22:38:43.031454
1121	Landmark Property Development Company Limited	LPDC	\N	2025-09-19 22:38:43.031454
1122	Larsen & Toubro Limited	LT	\N	2025-09-19 22:38:43.031454
1123	L&T Finance Limited	LTF	\N	2025-09-19 22:38:43.031454
1124	LT Foods Limited	LTFOODS	\N	2025-09-19 22:38:43.031454
1125	LTIMindtree Limited	LTIM	\N	2025-09-19 22:38:43.031454
1126	L&T Technology Services Limited	LTTS	\N	2025-09-19 22:38:43.031454
1127	Lumax Industries Limited	LUMAXIND	\N	2025-09-19 22:38:43.031454
1128	Lumax Auto Technologies Limited	LUMAXTECH	\N	2025-09-19 22:38:43.031454
1129	Lupin Limited	LUPIN	\N	2025-09-19 22:38:43.031454
1130	Lux Industries Limited	LUXIND	\N	2025-09-19 22:38:43.031454
1131	Laxmi Organic Industries Limited	LXCHEM	\N	2025-09-19 22:38:43.031454
1132	Lyka Labs Limited	LYKALABS	\N	2025-09-19 22:38:43.031454
1133	Lypsa Gems & Jewellery Limited	LYPSAGEMS	\N	2025-09-19 22:38:43.031454
1134	Mahindra & Mahindra Limited	M&M	\N	2025-09-19 22:38:43.031454
1135	Mahindra & Mahindra Financial Services Limited	M&MFIN	\N	2025-09-19 22:38:43.031454
1136	Maan Aluminium Limited	MAANALU	\N	2025-09-19 22:38:43.031454
1137	Macpower CNC Machines Limited	MACPOWER	\N	2025-09-19 22:38:43.031454
1138	Madhav Marbles and Granites Limited	MADHAV	\N	2025-09-19 22:38:43.031454
1139	Madhucon Projects Limited	MADHUCON	\N	2025-09-19 22:38:43.031454
1140	Madras Fertilizers Limited	MADRASFERT	\N	2025-09-19 22:38:43.031454
1141	Magadh Sugar & Energy Limited	MAGADSUGAR	\N	2025-09-19 22:38:43.031454
1142	Magnum Ventures Limited	MAGNUM	\N	2025-09-19 22:38:43.031454
1143	Bank of Maharashtra	MAHABANK	\N	2025-09-19 22:38:43.031454
1144	Maha Rashtra Apex Corporation Limited	MAHAPEXLTD	\N	2025-09-19 22:38:43.031454
1145	Mahamaya Steel Industries Limited	MAHASTEEL	\N	2025-09-19 22:38:43.031454
1146	Mahindra EPC Irrigation Limited	MAHEPC	\N	2025-09-19 22:38:43.031454
1147	Maheshwari Logistics Limited	MAHESHWARI	\N	2025-09-19 22:38:43.031454
1148	Mahindra Lifespace Developers Limited	MAHLIFE	\N	2025-09-19 22:38:43.031454
1149	Mahindra Logistics Limited	MAHLOG	\N	2025-09-19 22:38:43.031454
1150	Maharashtra Scooters Limited	MAHSCOOTER	\N	2025-09-19 22:38:43.031454
1151	Maharashtra Seamless Limited	MAHSEAMLES	\N	2025-09-19 22:38:43.031454
1152	Maithan Alloys Limited	MAITHANALL	\N	2025-09-19 22:38:43.031454
1153	Mallcom (India) Limited	MALLCOM	\N	2025-09-19 22:38:43.031454
1154	Malu Paper Mills Limited	MALUPAPER	\N	2025-09-19 22:38:43.031454
1155	Mamata Machinery Limited	MAMATA	\N	2025-09-19 22:38:43.031454
1156	Manaksia Aluminium Company Limited	MANAKALUCO	\N	2025-09-19 22:38:43.031454
1157	Manaksia Coated Metals & Industries Limited	MANAKCOAT	\N	2025-09-19 22:38:43.031454
1158	Manaksia Limited	MANAKSIA	\N	2025-09-19 22:38:43.031454
1159	Manaksia Steels Limited	MANAKSTEEL	\N	2025-09-19 22:38:43.031454
1160	Manali Petrochemicals Limited	MANALIPETC	\N	2025-09-19 22:38:43.031454
1161	Manappuram Finance Limited	MANAPPURAM	\N	2025-09-19 22:38:43.031454
1162	Manba Finance Limited	MANBA	\N	2025-09-19 22:38:43.031454
1163	Mangal Credit and Fincorp Limited	MANCREDIT	\N	2025-09-19 22:38:43.031454
1164	Mangalam Drugs And Organics Limited	MANGALAM	\N	2025-09-19 22:38:43.031454
1165	Mangalore Chemicals & Fertilizers Limited	MANGCHEFER	\N	2025-09-19 22:38:43.031454
1166	Mangalam Cement Limited	MANGLMCEM	\N	2025-09-19 22:38:43.031454
1167	Man Industries (India) Limited	MANINDS	\N	2025-09-19 22:38:43.031454
1168	Man Infraconstruction Limited	MANINFRA	\N	2025-09-19 22:38:43.031454
1169	Mankind Pharma Limited	MANKIND	\N	2025-09-19 22:38:43.031454
1170	Manomay Tex India Limited	MANOMAY	\N	2025-09-19 22:38:43.031454
1171	Manorama Industries Limited	MANORAMA	\N	2025-09-19 22:38:43.031454
1172	Mangalam Organics Limited	MANORG	\N	2025-09-19 22:38:43.031454
1173	Manugraph India Limited	MANUGRAPH	\N	2025-09-19 22:38:43.031454
1174	Vedant Fashions Limited	MANYAVAR	\N	2025-09-19 22:38:43.031454
1175	C.E. Info Systems Limited	MAPMYINDIA	\N	2025-09-19 22:38:43.031454
1176	Maral Overseas Limited	MARALOVER	\N	2025-09-19 22:38:43.031454
1177	Marathon Nextgen Realty Limited	MARATHON	\N	2025-09-19 22:38:43.031454
1178	Marico Limited	MARICO	\N	2025-09-19 22:38:43.031454
1179	Marine Electricals (India) Limited	MARINE	\N	2025-09-19 22:38:43.031454
1180	Marksans Pharma Limited	MARKSANS	\N	2025-09-19 22:38:43.031454
1181	Maruti Suzuki India Limited	MARUTI	\N	2025-09-19 22:38:43.031454
1182	MAS Financial Services Limited	MASFIN	\N	2025-09-19 22:38:43.031454
1183	Mask Investments Limited	MASKINVEST	\N	2025-09-19 22:38:43.031454
1184	Mastek Limited	MASTEK	\N	2025-09-19 22:38:43.031454
1185	Master Trust Limited	MASTERTR	\N	2025-09-19 22:38:43.031454
1186	Matrimony.Com Limited	MATRIMONY	\N	2025-09-19 22:38:43.031454
1187	Mawana Sugars Limited	MAWANASUG	\N	2025-09-19 22:38:43.031454
1188	Max Estates Limited	MAXESTATES	\N	2025-09-19 22:38:43.031454
1189	Max Healthcare Institute Limited	MAXHEALTH	\N	2025-09-19 22:38:43.031454
1190	Max India Limited	MAXIND	\N	2025-09-19 22:38:43.031454
1191	Mayur Uniquoters Ltd	MAYURUNIQ	\N	2025-09-19 22:38:43.031454
1192	Mazda Limited	MAZDA	\N	2025-09-19 22:38:43.031454
1193	Mazagon Dock Shipbuilders Limited	MAZDOCK	\N	2025-09-19 22:38:43.031454
1194	Madhya Bharat Agro Products Limited	MBAPL	\N	2025-09-19 22:38:43.031454
1195	M & B Engineering Limited	MBEL	\N	2025-09-19 22:38:43.031454
1196	MBL Infrastructure Limited	MBLINFRA	\N	2025-09-19 22:38:43.031454
1197	Madhav Copper Limited	MCL	\N	2025-09-19 22:38:43.031454
1198	Mcleod Russel India Limited	MCLEODRUSS	\N	2025-09-19 22:38:43.031454
1199	Magellanic Cloud Limited	MCLOUD	\N	2025-09-19 22:38:43.031454
1200	Multi Commodity Exchange of India Limited	MCX	\N	2025-09-19 22:38:43.031454
1201	Global Health Limited	MEDANTA	\N	2025-09-19 22:38:43.031454
1202	Medi Assist Healthcare Services Limited	MEDIASSIST	\N	2025-09-19 22:38:43.031454
1203	Medicamen Biotech Limited	MEDICAMEQ	\N	2025-09-19 22:38:43.031454
1204	Medico Remedies Limited	MEDICO	\N	2025-09-19 22:38:43.031454
1205	Medplus Health Services Limited	MEDPLUS	\N	2025-09-19 22:38:43.031454
1206	Megasoft Limited	MEGASOFT	\N	2025-09-19 22:38:43.031454
1207	Megastar Foods Limited	MEGASTAR	\N	2025-09-19 22:38:43.031454
1208	Mangal Electrical Industries Limited	MEIL	\N	2025-09-19 22:38:43.031454
1209	Menon Bearings Limited	MENONBE	\N	2025-09-19 22:38:43.031454
1210	MEP Infrastructure Developers Limited	MEP	\N	2025-09-19 22:38:43.031454
1211	Metro Brands Limited	METROBRAND	\N	2025-09-19 22:38:43.031454
1212	Metropolis Healthcare Limited	METROPOLIS	\N	2025-09-19 22:38:43.031454
1213	Mahalaxmi Fabric Mills Limited	MFML	\N	2025-09-19 22:38:43.031454
1214	Max Financial Services Limited	MFSL	\N	2025-09-19 22:38:43.031454
1215	Mangalam Global Enterprise Limited	MGEL	\N	2025-09-19 22:38:43.031454
1216	Mahanagar Gas Limited	MGL	\N	2025-09-19 22:38:43.031454
1217	Mahalaxmi Rubtech Limited	MHLXMIRU	\N	2025-09-19 22:38:43.031454
1218	Mahindra Holidays & Resorts India Limited	MHRIL	\N	2025-09-19 22:38:43.031454
1219	MIC Electronics Limited	MICEL	\N	2025-09-19 22:38:43.031454
1220	Mishra Dhatu Nigam Limited	MIDHANI	\N	2025-09-19 22:38:43.031454
1221	Minda Corporation Limited	MINDACORP	\N	2025-09-19 22:38:43.031454
1222	Mindteck (India) Limited	MINDTECK	\N	2025-09-19 22:38:43.031454
1223	MIRC Electronics Limited	MIRCELECTR	\N	2025-09-19 22:38:43.031454
1224	Mirza International Limited	MIRZAINT	\N	2025-09-19 22:38:43.031454
1225	MITCON Consultancy & Engineering Services Limited	MITCON	\N	2025-09-19 22:38:43.031454
1226	Mittal Life Style Limited	MITTAL	\N	2025-09-19 22:38:43.031454
1227	M K Proteins Limited	MKPL	\N	2025-09-19 22:38:43.031454
1228	MM Forgings Limited	MMFL	\N	2025-09-19 22:38:43.031454
1229	MMP Industries Limited	MMP	\N	2025-09-19 22:38:43.031454
1230	MMTC Limited	MMTC	\N	2025-09-19 22:38:43.031454
1231	One Mobikwik Systems Limited	MOBIKWIK	\N	2025-09-19 22:38:43.031454
1232	Modi Rubber Limited	MODIRUBBER	\N	2025-09-19 22:38:43.031454
1234	Modern Threads (India) Limited	MODTHREAD	\N	2025-09-19 22:38:43.031454
1235	Mohit Industries Limited	MOHITIND	\N	2025-09-19 22:38:43.031454
1236	MOIL Limited	MOIL	\N	2025-09-19 22:38:43.031454
1237	Moksh Ornaments Limited	MOKSH	\N	2025-09-19 22:38:43.031454
1238	Meghmani Organics Limited	MOL	\N	2025-09-19 22:38:43.031454
1239	Mold-Tek Technologies Limited	MOLDTECH	\N	2025-09-19 22:38:43.031454
1240	Mold-Tek Packaging Limited	MOLDTKPAC	\N	2025-09-19 22:38:43.031454
1241	Monarch Networth Capital Limited	MONARCH	\N	2025-09-19 22:38:43.031454
1242	Monte Carlo Fashions Limited	MONTECARLO	\N	2025-09-19 22:38:43.031454
1243	Morarjee Textiles Limited	MORARJEE	\N	2025-09-19 22:38:43.031454
1244	Morepen Laboratories Limited	MOREPENLAB	\N	2025-09-19 22:38:43.031454
1245	Moschip Technologies Limited	MOSCHIP	\N	2025-09-19 22:38:43.031454
1246	Samvardhana Motherson International Limited	MOTHERSON	\N	2025-09-19 22:38:43.031454
1247	Motilal Oswal Financial Services Limited	MOTILALOFS	\N	2025-09-19 22:38:43.031454
1248	Motisons Jewellers Limited	MOTISONS	\N	2025-09-19 22:38:43.031454
1249	The Motor & General Finance Limited	MOTOGENFIN	\N	2025-09-19 22:38:43.031454
1250	MphasiS Limited	MPHASIS	\N	2025-09-19 22:38:43.031454
1251	MPS Limited	MPSLTD	\N	2025-09-19 22:38:43.031454
1252	MRF Limited	MRF	\N	2025-09-19 22:38:43.031454
1253	Mangalore Refinery and Petrochemicals Limited	MRPL	\N	2025-09-19 22:38:43.031454
1254	MSP Steel & Power Limited	MSPL	\N	2025-09-19 22:38:43.031454
1255	Mstc Limited	MSTCLTD	\N	2025-09-19 22:38:43.031454
1256	Motherson Sumi Wiring India Limited	MSUMI	\N	2025-09-19 22:38:43.031454
1257	Mtar Technologies Limited	MTARTECH	\N	2025-09-19 22:38:43.031454
1258	MT Educare Limited	MTEDUCARE	\N	2025-09-19 22:38:43.031454
1259	Mahanagar Telephone Nigam Limited	MTNL	\N	2025-09-19 22:38:43.031454
1260	Mufin Green Finance Limited	MUFIN	\N	2025-09-19 22:38:43.031454
1261	Credo Brands Marketing Limited	MUFTI	\N	2025-09-19 22:38:43.031454
1262	Mukand Limited	MUKANDLTD	\N	2025-09-19 22:38:43.031454
1263	Mukka Proteins Limited	MUKKA	\N	2025-09-19 22:38:43.031454
1264	Mukta Arts Limited	MUKTAARTS	\N	2025-09-19 22:38:43.031454
1265	Munjal Auto Industries Limited	MUNJALAU	\N	2025-09-19 22:38:43.031454
1266	Munjal Showa Limited	MUNJALSHOW	\N	2025-09-19 22:38:43.031454
1267	Murudeshwar Ceramics Limited	MURUDCERA	\N	2025-09-19 22:38:43.031454
1268	Muthoot Capital Services Limited	MUTHOOTCAP	\N	2025-09-19 22:38:43.031454
1269	Muthoot Finance Limited	MUTHOOTFIN	\N	2025-09-19 22:38:43.031454
1270	Muthoot Microfin Limited	MUTHOOTMF	\N	2025-09-19 22:38:43.031454
1271	Manoj Vaibhav Gems N Jewellers Limited	MVGJL	\N	2025-09-19 22:38:43.031454
1272	Mangalam Worldwide Limited	MWL	\N	2025-09-19 22:38:43.031454
1273	NACL Industries Limited	NACLIND	\N	2025-09-19 22:38:43.031454
1274	Nagarjuna Fertilizers and Chemicals Limited	NAGAFERT	\N	2025-09-19 22:38:43.031454
1275	Nagreeka Capital & Infrastructure Limited	NAGREEKCAP	\N	2025-09-19 22:38:43.031454
1276	Nagreeka Exports Limited	NAGREEKEXP	\N	2025-09-19 22:38:43.031454
1277	Nahar Capital and Financial Services Limited	NAHARCAP	\N	2025-09-19 22:38:43.031454
1278	Nahar Industrial Enterprises Limited	NAHARINDUS	\N	2025-09-19 22:38:43.031454
1279	Nahar Poly Films Limited	NAHARPOLY	\N	2025-09-19 22:38:43.031454
1280	Nahar Spinning Mills Limited	NAHARSPING	\N	2025-09-19 22:38:43.031454
1281	Nippon Life India Asset Management Limited	NAM-INDIA	\N	2025-09-19 22:38:43.031454
1282	Narmada Agrobase Limited	NARMADA	\N	2025-09-19 22:38:43.031454
1283	Natural Capsules Limited	NATCAPSUQ	\N	2025-09-19 22:38:43.031454
1284	Natco Pharma Limited	NATCOPHARM	\N	2025-09-19 22:38:43.031454
1285	Nath Bio-Genes (India) Limited	NATHBIOGEN	\N	2025-09-19 22:38:43.031454
1286	National Aluminium Company Limited	NATIONALUM	\N	2025-09-19 22:38:43.031454
1287	Info Edge (India) Limited	NAUKRI	\N	2025-09-19 22:38:43.031454
1288	NAVA LIMITED	NAVA	\N	2025-09-19 22:38:43.031454
1289	Navin Fluorine International Limited	NAVINFLUOR	\N	2025-09-19 22:38:43.031454
1290	Navkar Corporation Limited	NAVKARCORP	\N	2025-09-19 22:38:43.031454
1291	Navkar Urbanstructure Limited	NAVKARURB	\N	2025-09-19 22:38:43.031454
1292	Navneet Education Limited	NAVNETEDUL	\N	2025-09-19 22:38:43.031454
1293	Nazara Technologies Limited	NAZARA	\N	2025-09-19 22:38:43.031454
1294	NBCC (India) Limited	NBCC	\N	2025-09-19 22:38:43.031454
1295	N. B. I. Industrial Finance Company Limited	NBIFIN	\N	2025-09-19 22:38:43.031454
1296	NCC Limited	NCC	\N	2025-09-19 22:38:43.031454
1297	NCL Industries Limited	NCLIND	\N	2025-09-19 22:38:43.031454
1298	Naga Dhunseri Group Limited	NDGL	\N	2025-09-19 22:38:43.031454
1299	Nandan Denim Limited	NDL	\N	2025-09-19 22:38:43.031454
1300	NDL Ventures Limited	NDLVENTURE	\N	2025-09-19 22:38:43.031454
1301	Ndr Auto Components Limited	NDRAUTO	\N	2025-09-19 22:38:43.031454
1302	New Delhi Television Limited	NDTV	\N	2025-09-19 22:38:43.031454
1303	North Eastern Carrying Corporation Limited	NECCLTD	\N	2025-09-19 22:38:43.031454
1304	Nectar Lifesciences Limited	NECLIFE	\N	2025-09-19 22:38:43.031454
1305	Nelcast Limited	NELCAST	\N	2025-09-19 22:38:43.031454
1306	NELCO Limited	NELCO	\N	2025-09-19 22:38:43.031454
1307	Neogen Chemicals Limited	NEOGEN	\N	2025-09-19 22:38:43.031454
1308	Nesco Limited	NESCO	\N	2025-09-19 22:38:43.031454
1309	Nestle India Limited	NESTLEIND	\N	2025-09-19 22:38:43.031454
1310	Netweb Technologies India Limited	NETWEB	\N	2025-09-19 22:38:43.031454
1311	Network18 Media & Investments Limited	NETWORK18	\N	2025-09-19 22:38:43.031454
1312	Neuland Laboratories Limited	NEULANDLAB	\N	2025-09-19 22:38:43.031454
1313	Newgen Software Technologies Limited	NEWGEN	\N	2025-09-19 22:38:43.031454
1314	Next Mediaworks Limited	NEXTMEDIA	\N	2025-09-19 22:38:43.031454
1315	National Fertilizers Limited	NFL	\N	2025-09-19 22:38:43.031454
1316	Nakoda Group of Industries Limited	NGIL	\N	2025-09-19 22:38:43.031454
1317	NGL Fine-Chem Limited	NGLFINE	\N	2025-09-19 22:38:43.031454
1318	Narayana Hrudayalaya Ltd.	NH	\N	2025-09-19 22:38:43.031454
1319	NHPC Limited	NHPC	\N	2025-09-19 22:38:43.031454
1320	The New India Assurance Company Limited	NIACL	\N	2025-09-19 22:38:43.031454
1321	NIBE Limited	NIBE	\N	2025-09-19 22:38:43.031454
1322	NRB Industrial Bearings Limited	NIBL	\N	2025-09-19 22:38:43.031454
1323	NIIT Limited	NIITLTD	\N	2025-09-19 22:38:43.031454
1324	NIIT Learning Systems Limited	NIITMTS	\N	2025-09-19 22:38:43.031454
1325	Nila Infrastructures Limited	NILAINFRA	\N	2025-09-19 22:38:43.031454
1326	Nila Spaces Limited	NILASPACES	\N	2025-09-19 22:38:43.031454
1327	Nilkamal Limited	NILKAMAL	\N	2025-09-19 22:38:43.031454
1328	NINtec Systems Limited	NINSYS	\N	2025-09-19 22:38:43.031454
1329	Indo-National Limited	NIPPOBATRY	\N	2025-09-19 22:38:43.031454
1330	Niraj Cement Structurals Limited	NIRAJ	\N	2025-09-19 22:38:43.031454
1331	Niraj Ispat Industries Limited	NIRAJISPAT	\N	2025-09-19 22:38:43.031454
1332	Nitco Limited	NITCO	\N	2025-09-19 22:38:43.031454
1333	Nitin Spinners Limited	NITINSPIN	\N	2025-09-19 22:38:43.031454
1334	Nitiraj Engineers Limited	NITIRAJ	\N	2025-09-19 22:38:43.031454
1335	Niva Bupa Health Insurance Company Limited	NIVABUPA	\N	2025-09-19 22:38:43.031454
1336	NK Industries Limited	NKIND	\N	2025-09-19 22:38:43.031454
1338	NMDC Limited	NMDC	\N	2025-09-19 22:38:43.031454
1339	NOCIL Limited	NOCIL	\N	2025-09-19 22:38:43.031454
1340	Noida Toll Bridge Company Limited	NOIDATOLL	\N	2025-09-19 22:38:43.031454
1341	Norben Tea & Exports Limited	NORBTEAEXP	\N	2025-09-19 22:38:43.031454
1342	Northern Arc Capital Limited	NORTHARC	\N	2025-09-19 22:38:43.031454
1343	Nova Agritech Limited	NOVAAGRI	\N	2025-09-19 22:38:43.031454
1344	Network People Services Technologies Limited	NPST	\N	2025-09-19 22:38:43.031454
1345	N R Agarwal Industries Limited	NRAIL	\N	2025-09-19 22:38:43.031454
1346	NRB Bearing Limited	NRBBEARING	\N	2025-09-19 22:38:43.031454
1347	Nupur Recyclers Limited	NRL	\N	2025-09-19 22:38:43.031454
1348	Nalwa Sons Investments Limited	NSIL	\N	2025-09-19 22:38:43.031454
1349	NMDC Steel Limited	NSLNISP	\N	2025-09-19 22:38:43.031454
1350	NTPC Limited	NTPC	\N	2025-09-19 22:38:43.031454
1351	NTPC Green Energy Limited	NTPCGREEN	\N	2025-09-19 22:38:43.031454
1352	Nucleus Software Exports Limited	NUCLEUS	\N	2025-09-19 22:38:43.031454
1353	Nureca Limited	NURECA	\N	2025-09-19 22:38:43.031454
1354	Nuvama Wealth Management Limited	NUVAMA	\N	2025-09-19 22:38:43.031454
1355	Nuvoco Vistas Corporation Limited	NUVOCO	\N	2025-09-19 22:38:43.031454
1356	FSN E-Commerce Ventures Limited	NYKAA	\N	2025-09-19 22:38:43.031454
1357	Oriental Aromatics Limited	OAL	\N	2025-09-19 22:38:43.031454
1358	Orissa Bengal Carrier Limited	OBCL	\N	2025-09-19 22:38:43.031454
1359	Oberoi Realty Limited	OBEROIRLTY	\N	2025-09-19 22:38:43.031454
1360	OCCL Limited	OCCLLTD	\N	2025-09-19 22:38:43.031454
1361	Odigma Consultancy Solutions Limited	ODIGMA	\N	2025-09-19 22:38:43.031454
1362	Oracle Financial Services Software Limited	OFSS	\N	2025-09-19 22:38:43.031454
1363	Oil India Limited	OIL	\N	2025-09-19 22:38:43.031454
1364	Oil Country Tubular Limited	OILCOUNTUB	\N	2025-09-19 22:38:43.031454
1365	Ola Electric Mobility Limited	OLAELEC	\N	2025-09-19 22:38:43.031454
1366	Olectra Greentech Limited	OLECTRA	\N	2025-09-19 22:38:43.031454
1367	Omax Autos Limited	OMAXAUTO	\N	2025-09-19 22:38:43.031454
1368	Omaxe Limited	OMAXE	\N	2025-09-19 22:38:43.031454
1369	OM INFRA LIMITED	OMINFRAL	\N	2025-09-19 22:38:43.031454
1370	Omkar Speciality Chemicals Limited	OMKARCHEM	\N	2025-09-19 22:38:43.031454
1371	Onelife Capital Advisors Limited	ONELIFECAP	\N	2025-09-19 22:38:43.031454
1372	One Point One Solutions Limited	ONEPOINT	\N	2025-09-19 22:38:43.031454
1373	Onesource Specialty Pharma Limited	ONESOURCE	\N	2025-09-19 22:38:43.031454
1374	Oil & Natural Gas Corporation Limited	ONGC	\N	2025-09-19 22:38:43.031454
1375	OnMobile Global Limited	ONMOBILE	\N	2025-09-19 22:38:43.031454
1376	Onward Technologies Limited	ONWARDTEC	\N	2025-09-19 22:38:43.031454
1377	Optiemus Infracom Limited	OPTIEMUS	\N	2025-09-19 22:38:43.031454
1378	Orbit Exports Limited	ORBTEXP	\N	2025-09-19 22:38:43.031454
1379	Orchasp Limited	ORCHASP	\N	2025-09-19 22:38:43.031454
1380	Orchid Pharma Limited	ORCHPHARMA	\N	2025-09-19 22:38:43.031454
1381	Oricon Enterprises Limited	ORICONENT	\N	2025-09-19 22:38:43.031454
1382	Oriental Trimex Limited	ORIENTALTL	\N	2025-09-19 22:38:43.031454
1383	Orient Bell Limited	ORIENTBELL	\N	2025-09-19 22:38:43.031454
1384	Orient Cement Limited	ORIENTCEM	\N	2025-09-19 22:38:43.031454
1385	ORIENT CERATECH LIMITED	ORIENTCER	\N	2025-09-19 22:38:43.031454
1386	Orient Electric Limited	ORIENTELEC	\N	2025-09-19 22:38:43.031454
1387	Oriental Hotels Limited	ORIENTHOT	\N	2025-09-19 22:38:43.031454
1388	Orient Press Limited	ORIENTLTD	\N	2025-09-19 22:38:43.031454
1389	Orient Paper & Industries Limited	ORIENTPPR	\N	2025-09-19 22:38:43.031454
1390	Orient Technologies Limited	ORIENTTECH	\N	2025-09-19 22:38:43.031454
1391	The Orissa Minerals Development Company Limited	ORISSAMINE	\N	2025-09-19 22:38:43.031454
1392	Ortel Communications Limited	ORTEL	\N	2025-09-19 22:38:43.031454
1393	ORTIN GLOBAL LIMITED	ORTINGLOBE	\N	2025-09-19 22:38:43.031454
1394	Osia Hyper Retail Limited	OSIAHYPER	\N	2025-09-19 22:38:43.031454
1395	Oswal Agro Mills Limited	OSWALAGRO	\N	2025-09-19 22:38:43.031454
1396	Oswal Greentech Limited	OSWALGREEN	\N	2025-09-19 22:38:43.031454
1397	Oswal Pumps Limited	OSWALPUMPS	\N	2025-09-19 22:38:43.031454
1398	ShreeOswal Seeds And Chemicals Limited	OSWALSEEDS	\N	2025-09-19 22:38:43.031454
1399	Page Industries Limited	PAGEIND	\N	2025-09-19 22:38:43.031454
1400	Paisalo Digital Limited	PAISALO	\N	2025-09-19 22:38:43.031454
1401	PAKKA LIMITED	PAKKA	\N	2025-09-19 22:38:43.031454
1402	Palash Securities Limited	PALASHSECU	\N	2025-09-19 22:38:43.031454
1403	Palred Technologies Limited	PALREDTEC	\N	2025-09-19 22:38:43.031454
1404	Panacea Biotec Limited	PANACEABIO	\N	2025-09-19 22:38:43.031454
1405	Panache Digilife Limited	PANACHE	\N	2025-09-19 22:38:43.031454
1406	Panama Petrochem Limited	PANAMAPET	\N	2025-09-19 22:38:43.031454
1407	Pansari Developers Limited	PANSARI	\N	2025-09-19 22:38:43.031454
1408	Par Drugs And Chemicals Limited	PAR	\N	2025-09-19 22:38:43.031454
1409	Paramount Communications Limited	PARACABLES	\N	2025-09-19 22:38:43.031454
1410	Paradeep Phosphates Limited	PARADEEP	\N	2025-09-19 22:38:43.031454
1411	Parag Milk Foods Limited	PARAGMILK	\N	2025-09-19 22:38:43.031454
1412	Paras Defence and Space Technologies Limited	PARAS	\N	2025-09-19 22:38:43.031454
1413	Paras Petrofils Limited	PARASPETRO	\N	2025-09-19 22:38:43.031454
1414	Apeejay Surrendra Park Hotels Limited	PARKHOTELS	\N	2025-09-19 22:38:43.031454
1415	Parsvnath Developers Limited	PARSVNATH	\N	2025-09-19 22:38:43.031454
1416	Pashupati Cotspin Limited	PASHUPATI	\N	2025-09-19 22:38:43.031454
1417	Pasupati Acrylon Limited	PASUPTAC	\N	2025-09-19 22:38:43.031454
1418	Patanjali Foods Limited	PATANJALI	\N	2025-09-19 22:38:43.031454
1419	Patel Engineering Limited	PATELENG	\N	2025-09-19 22:38:43.031454
1420	Patel Retail Limited	PATELRMART	\N	2025-09-19 22:38:43.031454
1421	Patel Integrated Logistics Limited	PATINTLOG	\N	2025-09-19 22:38:43.031454
1422	Pavna Industries Limited	PAVNAIND	\N	2025-09-19 22:38:43.031454
1423	One 97 Communications Limited	PAYTM	\N	2025-09-19 22:38:43.031454
1424	PCBL Chemical Limited	PCBL	\N	2025-09-19 22:38:43.031454
1425	PC Jeweller Limited	PCJEWELLER	\N	2025-09-19 22:38:43.031454
1426	Pudumjee Paper Products Limited	PDMJEPAPER	\N	2025-09-19 22:38:43.031454
1427	PDS Limited	PDSL	\N	2025-09-19 22:38:43.031454
1428	Pearl Polymers Limited	PEARLPOLY	\N	2025-09-19 22:38:43.031454
1429	Piramal Enterprises Limited	PEL	\N	2025-09-19 22:38:43.031454
1430	Pennar Industries Limited	PENIND	\N	2025-09-19 22:38:43.031454
1431	Peninsula Land Limited	PENINLAND	\N	2025-09-19 22:38:43.031454
1432	Persistent Systems Limited	PERSISTENT	\N	2025-09-19 22:38:43.031454
1433	Petronet LNG Limited	PETRONET	\N	2025-09-19 22:38:43.031454
1434	Power Finance Corporation Limited	PFC	\N	2025-09-19 22:38:43.031454
1435	Pfizer Limited	PFIZER	\N	2025-09-19 22:38:43.031454
1436	Prime Focus Limited	PFOCUS	\N	2025-09-19 22:38:43.031454
1437	PTC India Financial Services Limited	PFS	\N	2025-09-19 22:38:43.031454
1438	PG Electroplast Limited	PGEL	\N	2025-09-19 22:38:43.031454
1439	Procter & Gamble Hygiene and Health Care Limited	PGHH	\N	2025-09-19 22:38:43.031454
1440	Procter & Gamble Health Limited	PGHL	\N	2025-09-19 22:38:43.031454
1441	Pearl Global Industries Limited	PGIL	\N	2025-09-19 22:38:43.031454
1442	The Phoenix Mills Limited	PHOENIXLTD	\N	2025-09-19 22:38:43.031454
1443	Piccadily Agro Industries Limited	PICCADIL	\N	2025-09-19 22:38:43.031454
1444	Pidilite Industries Limited	PIDILITIND	\N	2025-09-19 22:38:43.031454
1445	Power & Instrumentation (Gujarat) Limited	PIGL	\N	2025-09-19 22:38:43.031454
1446	PI Industries Limited	PIIND	\N	2025-09-19 22:38:43.031454
1447	Pilani Investment and Industries Corporation Limited	PILANIINVS	\N	2025-09-19 22:38:43.031454
1448	PIL ITALICA LIFESTYLE LIMITED	PILITA	\N	2025-09-19 22:38:43.031454
1449	Pioneer Embroideries Limited	PIONEEREMB	\N	2025-09-19 22:38:43.031454
1450	Pitti Engineering Limited	PITTIENG	\N	2025-09-19 22:38:43.031454
1451	Pix Transmissions Limited	PIXTRANS	\N	2025-09-19 22:38:43.031454
1452	The Peria Karamalai Tea & Produce Company Limited	PKTEA	\N	2025-09-19 22:38:43.031454
1453	Plastiblends India Limited	PLASTIBLEN	\N	2025-09-19 22:38:43.031454
1454	Platinum Industries Limited	PLATIND	\N	2025-09-19 22:38:43.031454
1455	Plaza Wires Limited	PLAZACABLE	\N	2025-09-19 22:38:43.031454
1456	Punjab National Bank	PNB	\N	2025-09-19 22:38:43.031454
1457	PNB Gilts Limited	PNBGILTS	\N	2025-09-19 22:38:43.031454
1458	PNB Housing Finance Limited	PNBHOUSING	\N	2025-09-19 22:38:43.031454
1459	Pritish Nandy Communications Limited	PNC	\N	2025-09-19 22:38:43.031454
1460	PNC Infratech Limited	PNCINFRA	\N	2025-09-19 22:38:43.031454
1461	P N Gadgil Jewellers Limited	PNGJL	\N	2025-09-19 22:38:43.031454
1462	Pondy Oxides & Chemicals Limited	POCL	\N	2025-09-19 22:38:43.031454
1463	Poddar Pigments Limited	PODDARMENT	\N	2025-09-19 22:38:43.031454
1464	Pokarna Limited	POKARNA	\N	2025-09-19 22:38:43.031454
1465	PB Fintech Limited	POLICYBZR	\N	2025-09-19 22:38:43.031454
1466	Polycab India Limited	POLYCAB	\N	2025-09-19 22:38:43.031454
1467	Poly Medicure Limited	POLYMED	\N	2025-09-19 22:38:43.031454
1468	Polyplex Corporation Limited	POLYPLEX	\N	2025-09-19 22:38:43.031454
1469	Ponni Sugars (Erode) Limited	PONNIERODE	\N	2025-09-19 22:38:43.031454
1470	Poonawalla Fincorp Limited	POONAWALLA	\N	2025-09-19 22:38:43.031454
1471	Power Grid Corporation of India Limited	POWERGRID	\N	2025-09-19 22:38:43.031454
1472	Hitachi Energy India Limited	POWERINDIA	\N	2025-09-19 22:38:43.031454
1473	Power Mech Projects Limited	POWERMECH	\N	2025-09-19 22:38:43.031454
1474	PPAP Automotive Limited	PPAP	\N	2025-09-19 22:38:43.031454
1475	Prakash Pipes Limited	PPL	\N	2025-09-19 22:38:43.031454
1476	Piramal Pharma Limited	PPLPHARMA	\N	2025-09-19 22:38:43.031454
1477	Prabha Energy Limited	PRABHA	\N	2025-09-19 22:38:43.031454
1478	Prajay Engineers Syndicate Limited	PRAENG	\N	2025-09-19 22:38:43.031454
1479	Praj Industries Limited	PRAJIND	\N	2025-09-19 22:38:43.031454
1480	Prakash Industries Limited	PRAKASH	\N	2025-09-19 22:38:43.031454
1481	Prakash Steelage Limited	PRAKASHSTL	\N	2025-09-19 22:38:43.031454
1482	Praxis Home Retail Limited	PRAXIS	\N	2025-09-19 22:38:43.031454
1483	Precision Camshafts Limited	PRECAM	\N	2025-09-19 22:38:43.031454
1484	Precot Limited	PRECOT	\N	2025-09-19 22:38:43.031454
1485	Precision Wires India Limited	PRECWIRE	\N	2025-09-19 22:38:43.031454
1486	Premier Explosives Limited	PREMEXPLN	\N	2025-09-19 22:38:43.031454
1487	Premier Limited	PREMIER	\N	2025-09-19 22:38:43.031454
1488	Premier Energies Limited	PREMIERENE	\N	2025-09-19 22:38:43.031454
1489	Premier Polyfilm Limited	PREMIERPOL	\N	2025-09-19 22:38:43.031454
1490	Prestige Estates Projects Limited	PRESTIGE	\N	2025-09-19 22:38:43.031454
1491	Pricol Limited	PRICOLLTD	\N	2025-09-19 22:38:43.031454
1492	Prime Securities Limited	PRIMESECU	\N	2025-09-19 22:38:43.031454
1493	Primo Chemicals Limited	PRIMO	\N	2025-09-19 22:38:43.031454
1494	Prince Pipes And Fittings Limited	PRINCEPIPE	\N	2025-09-19 22:38:43.031454
1495	Priti International Limited	PRITI	\N	2025-09-19 22:38:43.031454
1496	Pritika Auto Industries Limited	PRITIKAUTO	\N	2025-09-19 22:38:43.031454
1497	Privi Speciality Chemicals Limited	PRIVISCL	\N	2025-09-19 22:38:43.031454
1498	Prostarm Info Systems Limited	PROSTARM	\N	2025-09-19 22:38:43.031454
1499	Protean eGov Technologies Limited	PROTEAN	\N	2025-09-19 22:38:43.031454
1500	Prozone Realty Limited	PROZONER	\N	2025-09-19 22:38:43.031454
1501	Prism Johnson Limited	PRSMJOHNSN	\N	2025-09-19 22:38:43.031454
1502	Prudent Corporate Advisory Services Limited	PRUDENT	\N	2025-09-19 22:38:43.031454
1503	Prudential Sugar Corporation Limited	PRUDMOULI	\N	2025-09-19 22:38:43.031454
1504	Punjab & Sind Bank	PSB	\N	2025-09-19 22:38:43.031454
1505	PSP Projects Limited	PSPPROJECT	\N	2025-09-19 22:38:43.031454
1506	PTC India Limited	PTC	\N	2025-09-19 22:38:43.031454
1507	PTC Industries Limited	PTCIL	\N	2025-09-19 22:38:43.031454
1508	PTL Enterprises Limited	PTL	\N	2025-09-19 22:38:43.031454
1509	Punjab Chemicals & Crop Protection Limited	PUNJABCHEM	\N	2025-09-19 22:38:43.031454
1510	Puravankara Limited	PURVA	\N	2025-09-19 22:38:43.031454
1511	PVP Ventures Limited	PVP	\N	2025-09-19 22:38:43.031454
1512	PVR INOX Limited	PVRINOX	\N	2025-09-19 22:38:43.031454
1513	Popular Vehicles and Services Limited	PVSL	\N	2025-09-19 22:38:43.031454
1514	Pyramid Technoplast Limited	PYRAMID	\N	2025-09-19 22:38:43.031454
1515	Quality Power Electrical Equipments Limited	QPOWER	\N	2025-09-19 22:38:43.031454
1516	Quadrant Future Tek Limited	QUADFUTURE	\N	2025-09-19 22:38:43.031454
1517	Quess Corp Limited	QUESS	\N	2025-09-19 22:38:43.031454
1518	Quick Heal Technologies Limited	QUICKHEAL	\N	2025-09-19 22:38:43.031454
1519	Race Eco Chain Limited	RACE	\N	2025-09-19 22:38:43.031454
1520	RACL Geartech Limited	RACLGEAR	\N	2025-09-19 22:38:43.031454
1521	Radaan Mediaworks India Limited	RADAAN	\N	2025-09-19 22:38:43.031454
1522	Radhika Jeweltech Limited	RADHIKAJWE	\N	2025-09-19 22:38:43.031454
1523	Radiant Cash Management Services Limited	RADIANTCMS	\N	2025-09-19 22:38:43.031454
1524	Radico Khaitan Limited	RADICO	\N	2025-09-19 22:38:43.031454
1525	Music Broadcast Limited	RADIOCITY	\N	2025-09-19 22:38:43.031454
1526	Railtel Corporation Of India Limited	RAILTEL	\N	2025-09-19 22:38:43.031454
1527	Rain Industries Limited	RAIN	\N	2025-09-19 22:38:43.031454
1528	Rainbow Childrens Medicare Limited	RAINBOW	\N	2025-09-19 22:38:43.031454
1529	Rajesh Exports Limited	RAJESHEXPO	\N	2025-09-19 22:38:43.031454
1530	Rajnandini Metal Limited	RAJMET	\N	2025-09-19 22:38:43.031454
1531	Rajoo Engineers Limited	RAJOOENG	\N	2025-09-19 22:38:43.031454
1532	Rajratan Global Wire Limited	RAJRATAN	\N	2025-09-19 22:38:43.031454
1533	Raj Rayon Industries Limited	RAJRILTD	\N	2025-09-19 22:38:43.031454
1534	Rajshree Sugars & Chemicals Limited	RAJSREESUG	\N	2025-09-19 22:38:43.031454
1535	Raj Television Network Limited	RAJTV	\N	2025-09-19 22:38:43.031454
1536	Rallis India Limited	RALLIS	\N	2025-09-19 22:38:43.031454
1537	Shree Rama Newsprint Limited	RAMANEWS	\N	2025-09-19 22:38:43.031454
1538	Rama Phosphates Limited	RAMAPHO	\N	2025-09-19 22:38:43.031454
1539	Rama Steel Tubes Limited	RAMASTEEL	\N	2025-09-19 22:38:43.031454
1540	The Ramco Cements Limited	RAMCOCEM	\N	2025-09-19 22:38:43.031454
1541	Ramco Industries Limited	RAMCOIND	\N	2025-09-19 22:38:43.031454
1542	Ramco Systems Limited	RAMCOSYS	\N	2025-09-19 22:38:43.031454
1543	Ramky Infrastructure Limited	RAMKY	\N	2025-09-19 22:38:43.031454
1544	Ram Ratna Wires Limited	RAMRAT	\N	2025-09-19 22:38:43.031454
1545	Rana Sugars Limited	RANASUG	\N	2025-09-19 22:38:43.031454
1546	Rane Holdings Limited	RANEHOLDIN	\N	2025-09-19 22:38:43.031454
1547	Rategain Travel Technologies Limited	RATEGAIN	\N	2025-09-19 22:38:43.031454
1548	Ratnamani Metals & Tubes Limited	RATNAMANI	\N	2025-09-19 22:38:43.031454
1549	Ratnaveer Precision Engineering Limited	RATNAVEER	\N	2025-09-19 22:38:43.031454
1550	Raymond Limited	RAYMOND	\N	2025-09-19 22:38:43.031454
1551	Raymond Lifestyle Limited	RAYMONDLSL	\N	2025-09-19 22:38:43.031454
1552	Raymond Realty Limited	RAYMONDREL	\N	2025-09-19 22:38:43.031454
1553	Restaurant Brands Asia Limited	RBA	\N	2025-09-19 22:38:43.031454
1554	RBL Bank Limited	RBLBANK	\N	2025-09-19 22:38:43.031454
1555	RBZ Jewellers Limited	RBZJEWEL	\N	2025-09-19 22:38:43.031454
1556	Rashtriya Chemicals and Fertilizers Limited	RCF	\N	2025-09-19 22:38:43.031454
1557	Reliance Communications Limited	RCOM	\N	2025-09-19 22:38:43.031454
1558	REC Limited	RECLTD	\N	2025-09-19 22:38:43.031454
1559	Redington Limited	REDINGTON	\N	2025-09-19 22:38:43.031454
1560	Redtape Limited	REDTAPE	\N	2025-09-19 22:38:43.031454
1561	Refex Industries Limited	REFEX	\N	2025-09-19 22:38:43.031454
1562	Regaal Resources Limited	REGAAL	\N	2025-09-19 22:38:43.031454
1563	Regency Ceramics Limited	REGENCERAM	\N	2025-09-19 22:38:43.031454
1564	Relaxo Footwears Limited	RELAXO	\N	2025-09-19 22:38:43.031454
1565	Reliance Chemotex Industries Limited	RELCHEMQ	\N	2025-09-19 22:38:43.031454
1566	Reliable Data Services Limited	RELIABLE	\N	2025-09-19 22:38:43.031454
1567	Reliance Industries Limited	RELIANCE	\N	2025-09-19 22:38:43.031454
1568	Religare Enterprises Limited	RELIGARE	\N	2025-09-19 22:38:43.031454
1569	Reliance Infrastructure Limited	RELINFRA	\N	2025-09-19 22:38:43.031454
1570	Ravindra Energy Limited	RELTD	\N	2025-09-19 22:38:43.031454
1571	Remsons Industries Limited	REMSONSIND	\N	2025-09-19 22:38:43.031454
1572	Shree Renuka Sugars Limited	RENUKA	\N	2025-09-19 22:38:43.031454
1573	Repco Home Finance Limited	REPCOHOME	\N	2025-09-19 22:38:43.031454
1574	Rudrabhishek Enterprises Limited	REPL	\N	2025-09-19 22:38:43.031454
1575	Repro India Limited	REPRO	\N	2025-09-19 22:38:43.031454
1576	Responsive Industries Limited	RESPONIND	\N	2025-09-19 22:38:43.031454
1577	JHS Svendgaard Retail Ventures Limited	RETAIL	\N	2025-09-19 22:38:43.031454
1578	Renaissance Global Limited	RGL	\N	2025-09-19 22:38:43.031454
1579	Reliance Home Finance Limited	RHFL	\N	2025-09-19 22:38:43.031454
1580	RHI MAGNESITA INDIA LIMITED	RHIM	\N	2025-09-19 22:38:43.031454
1581	Robust Hotels Limited	RHL	\N	2025-09-19 22:38:43.031454
1582	Rico Auto Industries Limited	RICOAUTO	\N	2025-09-19 22:38:43.031454
1583	Reliance Industrial Infrastructure Limited	RIIL	\N	2025-09-19 22:38:43.031454
1584	Rishabh Instruments Limited	RISHABH	\N	2025-09-19 22:38:43.031454
1585	Ritco Logistics Limited	RITCO	\N	2025-09-19 22:38:43.031454
1586	RITES Limited	RITES	\N	2025-09-19 22:38:43.031454
1587	Ravi Kumar Distilleries Limited	RKDL	\N	2025-09-19 22:38:43.031454
1588	RKEC Projects Limited	RKEC	\N	2025-09-19 22:38:43.031454
1589	Ramkrishna Forgings Limited	RKFORGE	\N	2025-09-19 22:38:43.031454
1590	R K Swamy Limited	RKSWAMY	\N	2025-09-19 22:38:43.031454
1591	R M Drip and Sprinklers Systems Limited	RMDRIP	\N	2025-09-19 22:38:43.031454
1592	Rane (Madras) Limited	RML	\N	2025-09-19 22:38:43.031454
1593	R&B Denims Limited	RNBDENIMS	\N	2025-09-19 22:38:43.031454
1594	Royal Orchid Hotels Limited	ROHLTD	\N	2025-09-19 22:38:43.031454
1595	Rolex Rings Limited	ROLEXRINGS	\N	2025-09-19 22:38:43.031454
1596	Rollatainers Limited	ROLLT	\N	2025-09-19 22:38:43.031454
1597	Rolta India Limited	ROLTA	\N	2025-09-19 22:38:43.031454
1598	Raj Oil Mills Limited	ROML	\N	2025-09-19 22:38:43.031454
1599	Rossari Biotech Limited	ROSSARI	\N	2025-09-19 22:38:43.031454
1600	Rossell India Limited	ROSSELLIND	\N	2025-09-19 22:38:43.031454
1601	Rossell Techsys Limited	ROSSTECH	\N	2025-09-19 22:38:43.031454
1602	Roto Pumps Limited	ROTO	\N	2025-09-19 22:38:43.031454
1603	ROUTE MOBILE LIMITED	ROUTE	\N	2025-09-19 22:38:43.031454
1604	Raghav Productivity Enhancers Limited	RPEL	\N	2025-09-19 22:38:43.031454
1605	RPG Life Sciences Limited	RPGLIFE	\N	2025-09-19 22:38:43.031454
1606	Reliance Power Limited	RPOWER	\N	2025-09-19 22:38:43.031454
1607	R.P.P. Infra Projects Limited	RPPINFRA	\N	2025-09-19 22:38:43.031454
1608	Rajshree Polypack Limited	RPPL	\N	2025-09-19 22:38:43.031454
1609	RPSG VENTURES LIMITED	RPSGVENT	\N	2025-09-19 22:38:43.031454
1610	Rashi Peripherals Limited	RPTECH	\N	2025-09-19 22:38:43.031454
1611	R R Kabel Limited	RRKABEL	\N	2025-09-19 22:38:43.031454
1612	R. S. Software (India) Limited	RSSOFTWARE	\N	2025-09-19 22:38:43.031454
1613	RSWM Limited	RSWM	\N	2025-09-19 22:38:43.031454
1614	R Systems International Limited	RSYSTEMS	\N	2025-09-19 22:38:43.031454
1615	RattanIndia Enterprises Limited	RTNINDIA	\N	2025-09-19 22:38:43.031454
1616	RattanIndia Power Limited	RTNPOWER	\N	2025-09-19 22:38:43.031454
1617	Rubfila International Limited	RUBFILA	\N	2025-09-19 22:38:43.031454
1618	The Ruby Mills Limited	RUBYMILLS	\N	2025-09-19 22:38:43.031454
1619	Ruchi Infrastructure Limited	RUCHINFRA	\N	2025-09-19 22:38:43.031454
1620	Ruchira Papers Limited	RUCHIRA	\N	2025-09-19 22:38:43.031454
1621	Rupa & Company Limited	RUPA	\N	2025-09-19 22:38:43.031454
1622	Rushil Decor Limited	RUSHIL	\N	2025-09-19 22:38:43.031454
1623	Keystone Realtors Limited	RUSTOMJEE	\N	2025-09-19 22:38:43.031454
1624	Ravinder Heights Limited	RVHL	\N	2025-09-19 22:38:43.031454
1625	Rail Vikas Nigam Limited	RVNL	\N	2025-09-19 22:38:43.031454
1626	Revathi Equipment India Limited	RVTH	\N	2025-09-19 22:38:43.031454
1627	S&S Power Switchgears Limited	S&SPOWER	\N	2025-09-19 22:38:43.031454
1628	Sab Events & Governance Now Media Limited	SABEVENTS	\N	2025-09-19 22:38:43.031454
1629	Sri Adhikari Brothers Television Network Limited	SABTNL	\N	2025-09-19 22:38:43.031454
1630	Sadbhav Engineering Limited	SADBHAV	\N	2025-09-19 22:38:43.031454
1631	Sadbhav Infrastructure Project Limited	SADBHIN	\N	2025-09-19 22:38:43.031454
1632	Sadhana Nitrochem Limited	SADHNANIQ	\N	2025-09-19 22:38:43.031454
1633	Safari Industries (India) Limited	SAFARI	\N	2025-09-19 22:38:43.031454
1634	Sagardeep Alloys Limited	SAGARDEEP	\N	2025-09-19 22:38:43.031454
1635	Sagar Cements Limited	SAGCEM	\N	2025-09-19 22:38:43.031454
1636	Sagility India Limited	SAGILITY	\N	2025-09-19 22:38:43.031454
1637	Sahyadri Industries Limited	SAHYADRI	\N	2025-09-19 22:38:43.031454
1638	Steel Authority of India Limited	SAIL	\N	2025-09-19 22:38:43.031454
1639	Sai Life Sciences Limited	SAILIFE	\N	2025-09-19 22:38:43.031454
1640	Sakar Healthcare Limited	SAKAR	\N	2025-09-19 22:38:43.031454
1641	Sakthi Sugars Limited	SAKHTISUG	\N	2025-09-19 22:38:43.031454
1642	Saksoft Limited	SAKSOFT	\N	2025-09-19 22:38:43.031454
1643	Sakuma Exports Limited	SAKUMA	\N	2025-09-19 22:38:43.031454
1644	Salasar Techno Engineering Limited	SALASAR	\N	2025-09-19 22:38:43.031454
1645	Salona Cotspin Limited	SALONA	\N	2025-09-19 22:38:43.031454
1646	S.A.L. Steel Limited	SALSTEEL	\N	2025-09-19 22:38:43.031454
1647	Salzer Electronics Limited	SALZERELEC	\N	2025-09-19 22:38:43.031454
1648	Sambhaav Media Limited	SAMBHAAV	\N	2025-09-19 22:38:43.031454
1649	Sambhv Steel Tubes Limited	SAMBHV	\N	2025-09-19 22:38:43.031454
1650	Samhi Hotels Limited	SAMHI	\N	2025-09-19 22:38:43.031454
1651	Sammaan Capital Limited	SAMMAANCAP	\N	2025-09-19 22:38:43.031454
1652	Sampann Utpadan India Limited	SAMPANN	\N	2025-09-19 22:38:43.031454
1653	Sanathan Textiles Limited	SANATHAN	\N	2025-09-19 22:38:43.031454
1654	Sanco Industries Limited	SANCO	\N	2025-09-19 22:38:43.031454
1655	The Sandesh Limited	SANDESH	\N	2025-09-19 22:38:43.031454
1656	Sandhar Technologies Limited	SANDHAR	\N	2025-09-19 22:38:43.031454
1657	Sandur Manganese & Iron Ores Limited	SANDUMA	\N	2025-09-19 22:38:43.031454
1658	Sangam (India) Limited	SANGAMIND	\N	2025-09-19 22:38:43.031454
1659	Sanghi Industries Limited	SANGHIIND	\N	2025-09-19 22:38:43.031454
1660	Sanghvi Movers Limited	SANGHVIMOV	\N	2025-09-19 22:38:43.031454
1661	Sanginita Chemicals Limited	SANGINITA	\N	2025-09-19 22:38:43.031454
1662	Sanofi India Limited	SANOFI	\N	2025-09-19 22:38:43.031454
1663	Sanofi Consumer Healthcare India Limited	SANOFICONR	\N	2025-09-19 22:38:43.031454
1664	Sansera Engineering Limited	SANSERA	\N	2025-09-19 22:38:43.031454
1665	Sanstar Limited	SANSTAR	\N	2025-09-19 22:38:43.031454
1666	Sanwaria Consumer Limited	SANWARIA	\N	2025-09-19 22:38:43.031454
1667	Sapphire Foods India Limited	SAPPHIRE	\N	2025-09-19 22:38:43.031454
1668	Sarda Energy & Minerals Limited	SARDAEN	\N	2025-09-19 22:38:43.031454
1669	Saregama India Limited	SAREGAMA	\N	2025-09-19 22:38:43.031454
1670	Sarla Performance Fibers Limited	SARLAPOLY	\N	2025-09-19 22:38:43.031454
1671	Sarveshwar Foods Limited	SARVESHWAR	\N	2025-09-19 22:38:43.031454
1672	Sasken Technologies Limited	SASKEN	\N	2025-09-19 22:38:43.031454
1673	Sastasundar Ventures Limited	SASTASUNDR	\N	2025-09-19 22:38:43.031454
1674	Satia Industries Limited	SATIA	\N	2025-09-19 22:38:43.031454
1675	Satin Creditcare Network Limited	SATIN	\N	2025-09-19 22:38:43.031454
1676	Saurashtra Cement Limited	SAURASHCEM	\N	2025-09-19 22:38:43.031454
1677	SBC Exports Limited	SBC	\N	2025-09-19 22:38:43.031454
1678	Shivalik Bimetal Controls Limited	SBCL	\N	2025-09-19 22:38:43.031454
1679	SBFC Finance Limited	SBFC	\N	2025-09-19 22:38:43.031454
1680	Suratwwala Business Group Limited	SBGLP	\N	2025-09-19 22:38:43.031454
1681	SBI Cards and Payment Services Limited	SBICARD	\N	2025-09-19 22:38:43.031454
1682	SBI Life Insurance Company Limited	SBILIFE	\N	2025-09-19 22:38:43.031454
1683	State Bank of India	SBIN	\N	2025-09-19 22:38:43.031454
1684	Schaeffler India Limited	SCHAEFFLER	\N	2025-09-19 22:38:43.031454
1685	S Chand And Company Limited	SCHAND	\N	2025-09-19 22:38:43.031454
1686	Schneider Electric Infrastructure Limited	SCHNEIDER	\N	2025-09-19 22:38:43.031454
1687	Shipping Corporation Of India Limited	SCI	\N	2025-09-19 22:38:43.031454
1688	Shipping Corporation of India Land and Assets Limited	SCILAL	\N	2025-09-19 22:38:43.031454
1689	Scoda Tubes Limited	SCODATUBES	\N	2025-09-19 22:38:43.031454
1690	Sheetal Cool Products Limited	SCPL	\N	2025-09-19 22:38:43.031454
1691	Som Distilleries & Breweries Limited	SDBL	\N	2025-09-19 22:38:43.031454
1692	Seamec Limited	SEAMECLTD	\N	2025-09-19 22:38:43.031454
1693	SecMark Consultancy Limited	SECMARK	\N	2025-09-19 22:38:43.031454
1694	SECUREKLOUD TECHNOLOGIES LIMITED	SECURKLOUD	\N	2025-09-19 22:38:43.031454
1695	Sejal Glass Limited	SEJALLTD	\N	2025-09-19 22:38:43.031454
1696	Selan Exploration Technology Limited	SELAN	\N	2025-09-19 22:38:43.031454
1697	SEL Manufacturing Company Limited	SELMC	\N	2025-09-19 22:38:43.031454
1698	Semac Construction Limited	SEMAC	\N	2025-09-19 22:38:43.031454
1699	Senco Gold Limited	SENCO	\N	2025-09-19 22:38:43.031454
1700	Senores Pharmaceuticals Limited	SENORES	\N	2025-09-19 22:38:43.031454
1701	SEPC Limited	SEPC	\N	2025-09-19 22:38:43.031454
1702	Sequent Scientific Limited	SEQUENT	\N	2025-09-19 22:38:43.031454
1703	Servotech Renewable Power System Limited	SERVOTECH	\N	2025-09-19 22:38:43.031454
1704	Seshasayee Paper and Boards Limited	SESHAPAPER	\N	2025-09-19 22:38:43.031454
1705	Setco Automotive Limited	SETCO	\N	2025-09-19 22:38:43.031454
1706	Seya Industries Limited	SEYAIND	\N	2025-09-19 22:38:43.031454
1707	Sheela Foam Limited	SFL	\N	2025-09-19 22:38:43.031454
1708	SG Finserve Limited	SGFIN	\N	2025-09-19 22:38:43.031454
1709	Synergy Green Industries Limited	SGIL	\N	2025-09-19 22:38:43.031454
1710	STL Global Limited	SGL	\N	2025-09-19 22:38:43.031454
1711	Standard Glass Lining Technology Limited	SGLTL	\N	2025-09-19 22:38:43.031454
1712	SG Mart Limited	SGMART	\N	2025-09-19 22:38:43.031454
1713	Shah Metacorp Limited	SHAH	\N	2025-09-19 22:38:43.031454
1714	Shah Alloys Limited	SHAHALLOYS	\N	2025-09-19 22:38:43.031454
1715	Shaily Engineering Plastics Limited	SHAILY	\N	2025-09-19 22:38:43.031454
1716	Shakti Pumps (India) Limited	SHAKTIPUMP	\N	2025-09-19 22:38:43.031454
1717	Shalby Limited	SHALBY	\N	2025-09-19 22:38:43.031454
1718	Shalimar Paints Limited	SHALPAINTS	\N	2025-09-19 22:38:43.031454
1719	Shankara Building Products Limited	SHANKARA	\N	2025-09-19 22:38:43.031454
1720	Shanti Overseas (India) Limited	SHANTI	\N	2025-09-19 22:38:43.031454
1721	Shanthi Gears Limited	SHANTIGEAR	\N	2025-09-19 22:38:43.031454
1722	Shanti Gold International Limited	SHANTIGOLD	\N	2025-09-19 22:38:43.031454
1723	Sharda Cropchem Limited	SHARDACROP	\N	2025-09-19 22:38:43.031454
1724	Sharda Motor Industries Limited	SHARDAMOTR	\N	2025-09-19 22:38:43.031454
1725	Share India Securities Limited	SHAREINDIA	\N	2025-09-19 22:38:43.031454
1726	Shekhawati Industries Limited	SHEKHAWATI	\N	2025-09-19 22:38:43.031454
1727	Shemaroo Entertainment Limited	SHEMAROO	\N	2025-09-19 22:38:43.031454
1728	Shilpa Medicare Limited	SHILPAMED	\N	2025-09-19 22:38:43.031454
1729	Shivalik Rasayan Limited	SHIVALIK	\N	2025-09-19 22:38:43.031454
1730	Shivam Autotech Limited	SHIVAMAUTO	\N	2025-09-19 22:38:43.031454
1731	Shiva Mills Limited	SHIVAMILLS	\N	2025-09-19 22:38:43.031454
1732	Shiva Texyarn Limited	SHIVATEX	\N	2025-09-19 22:38:43.031454
1733	S H Kelkar and Company Limited	SHK	\N	2025-09-19 22:38:43.031454
1734	Shoppers Stop Limited	SHOPERSTOP	\N	2025-09-19 22:38:43.031454
1735	Shradha Infraprojects Limited	SHRADHA	\N	2025-09-19 22:38:43.031454
1736	Shree Digvijay Cement Co.Ltd	SHREDIGCEM	\N	2025-09-19 22:38:43.031454
1737	SHREE CEMENT LIMITED	SHREECEM	\N	2025-09-19 22:38:43.031454
1738	Shreeji Shipping Global Limited	SHREEJISPG	\N	2025-09-19 22:38:43.031454
1739	Shree Pushkar Chemicals & Fertilisers Limited	SHREEPUSHK	\N	2025-09-19 22:38:43.031454
1740	Shree Rama Multi-Tech Limited	SHREERAMA	\N	2025-09-19 22:38:43.031454
1741	Shrenik Limited	SHRENIK	\N	2025-09-19 22:38:43.031454
1742	Shreyans Industries Limited	SHREYANIND	\N	2025-09-19 22:38:43.031454
1743	Shringar House of Mangalsutra Limited	SHRINGARMS	\N	2025-09-19 22:38:43.031454
1744	Shriram Pistons & Rings Limited	SHRIPISTON	\N	2025-09-19 22:38:43.031454
1745	Shriram Finance Limited	SHRIRAMFIN	\N	2025-09-19 22:38:43.031454
1746	Shriram Properties Limited	SHRIRAMPPS	\N	2025-09-19 22:38:43.031454
1747	Shyam Century Ferrous Limited	SHYAMCENT	\N	2025-09-19 22:38:43.031454
1748	Shyam Metalics and Energy Limited	SHYAMMETL	\N	2025-09-19 22:38:43.031454
1749	Shyam Telecom Limited	SHYAMTEL	\N	2025-09-19 22:38:43.031454
1750	Sical Logistics Limited	SICALLOG	\N	2025-09-19 22:38:43.031454
1751	Siemens Limited	SIEMENS	\N	2025-09-19 22:38:43.031454
1752	Sigachi Industries Limited	SIGACHI	\N	2025-09-19 22:38:43.031454
1753	Signet Industries Limited	SIGIND	\N	2025-09-19 22:38:43.031454
1754	Sigma Solve Limited	SIGMA	\N	2025-09-19 22:38:43.031454
1755	Signatureglobal (India) Limited	SIGNATURE	\N	2025-09-19 22:38:43.031454
1756	Signpost India Limited	SIGNPOST	\N	2025-09-19 22:38:43.031454
1757	Sikko Industries Limited	SIKKO	\N	2025-09-19 22:38:43.031454
1758	Standard Industries Limited	SIL	\N	2025-09-19 22:38:43.031454
1759	Silgo Retail Limited	SILGO	\N	2025-09-19 22:38:43.031454
1760	SIL Investments Limited	SILINV	\N	2025-09-19 22:38:43.031454
1761	Silly Monks Entertainment Limited	SILLYMONKS	\N	2025-09-19 22:38:43.031454
1762	Silver Touch Technologies Limited	SILVERTUC	\N	2025-09-19 22:38:43.031454
1763	Simbhaoli Sugars Limited	SIMBHALS	\N	2025-09-19 22:38:43.031454
1764	Simplex Infrastructures Limited	SIMPLEXINF	\N	2025-09-19 22:38:43.031454
1765	Sinclairs Hotels Limited	SINCLAIR	\N	2025-09-19 22:38:43.031454
1766	Sindhu Trade Links Limited	SINDHUTRAD	\N	2025-09-19 22:38:43.031454
1767	Sintercom India Limited	SINTERCOM	\N	2025-09-19 22:38:43.031454
1768	Sirca Paints India Limited	SIRCA	\N	2025-09-19 22:38:43.031454
1769	SIS LIMITED	SIS	\N	2025-09-19 22:38:43.031454
1770	Siti Networks Limited	SITINET	\N	2025-09-19 22:38:43.031454
1771	Siyaram Silk Mills Limited	SIYSIL	\N	2025-09-19 22:38:43.031454
1772	S.J.S. Enterprises Limited	SJS	\N	2025-09-19 22:38:43.031454
1773	SJVN Limited	SJVN	\N	2025-09-19 22:38:43.031454
1774	SKF India Limited	SKFINDIA	\N	2025-09-19 22:38:43.031454
1775	Skipper Limited	SKIPPER	\N	2025-09-19 22:38:43.031454
1776	SKM Egg Products Export (India) Limited	SKMEGGPROD	\N	2025-09-19 22:38:43.031454
1777	SKY GOLD AND DIAMONDS LIMITED	SKYGOLD	\N	2025-09-19 22:38:43.031454
1778	Smartlink Holdings Limited	SMARTLINK	\N	2025-09-19 22:38:43.031454
1779	Smartworks Coworking Spaces Limited	SMARTWORKS	\N	2025-09-19 22:38:43.031454
1780	SMC Global Securities Limited	SMCGLOBAL	\N	2025-09-19 22:38:43.031454
1781	SML Isuzu Limited	SMLISUZU	\N	2025-09-19 22:38:43.031454
1782	Sarthak Metals Limited	SMLT	\N	2025-09-19 22:38:43.031454
1783	SMS Lifesciences India Limited	SMSLIFE	\N	2025-09-19 22:38:43.031454
1784	SMS Pharmaceuticals Limited	SMSPHARMA	\N	2025-09-19 22:38:43.031454
1785	Snowman Logistics Limited	SNOWMAN	\N	2025-09-19 22:38:43.031454
1786	Sobha Limited	SOBHA	\N	2025-09-19 22:38:43.031454
1787	Softtech Engineers Limited	SOFTTECH	\N	2025-09-19 22:38:43.031454
1788	Solara Active Pharma Sciences Limited	SOLARA	\N	2025-09-19 22:38:43.031454
1789	Solar Industries India Limited	SOLARINDS	\N	2025-09-19 22:38:43.031454
1790	Somany Ceramics Limited	SOMANYCERA	\N	2025-09-19 22:38:43.031454
1791	Soma Textiles & Industries Limited	SOMATEX	\N	2025-09-19 22:38:43.031454
1792	Somi Conveyor Beltings Limited	SOMICONVEY	\N	2025-09-19 22:38:43.031454
1793	Sona BLW Precision Forgings Limited	SONACOMS	\N	2025-09-19 22:38:43.031454
1794	SONAM LIMITED	SONAMLTD	\N	2025-09-19 22:38:43.031454
1795	Sonata Software Limited	SONATSOFTW	\N	2025-09-19 22:38:43.031454
1796	Savita Oil Technologies Limited	SOTL	\N	2025-09-19 22:38:43.031454
1797	The South Indian Bank Limited	SOUTHBANK	\N	2025-09-19 22:38:43.031454
1798	South West Pinnacle Exploration Limited	SOUTHWEST	\N	2025-09-19 22:38:43.031454
1799	S. P. Apparels Limited	SPAL	\N	2025-09-19 22:38:43.031454
1800	Spandana Sphoorty Financial Limited	SPANDANA	\N	2025-09-19 22:38:43.031454
1801	Sun Pharma Advanced Research Company Limited	SPARC	\N	2025-09-19 22:38:43.031454
1802	Spacenet Enterprises India Limited	SPCENET	\N	2025-09-19 22:38:43.031454
1803	Speciality Restaurants Limited	SPECIALITY	\N	2025-09-19 22:38:43.031454
1804	Spectrum Electrical Industries Limited	SPECTRUM	\N	2025-09-19 22:38:43.031454
1805	Spencer's Retail Limited	SPENCERS	\N	2025-09-19 22:38:43.031454
1806	Southern Petrochemicals Industries Corporation  Limited	SPIC	\N	2025-09-19 22:38:43.031454
1807	SPL Industries Limited	SPLIL	\N	2025-09-19 22:38:43.031454
1808	Supreme Petrochem Limited	SPLPETRO	\N	2025-09-19 22:38:43.031454
1809	SPML Infra Limited	SPMLINFRA	\N	2025-09-19 22:38:43.031454
1810	Sportking India Limited	SPORTKING	\N	2025-09-19 22:38:43.031454
1811	Shankar Lal Rampal Dye-Chem Limited	SRD	\N	2025-09-19 22:38:43.031454
1812	Sreeleathers Limited	SREEL	\N	2025-09-19 22:38:43.031454
1813	SRF Limited	SRF	\N	2025-09-19 22:38:43.031454
1814	SRG Housing Finance Limited	SRGHFL	\N	2025-09-19 22:38:43.031454
1815	Sree Rayalaseema Hi-Strength Hypo Limited	SRHHYPOLTD	\N	2025-09-19 22:38:43.031454
1816	SRM Contractors Limited	SRM	\N	2025-09-19 22:38:43.031454
1817	Shree Ram Proteins Limited	SRPL	\N	2025-09-19 22:38:43.031454
1818	Saraswati Saree Depot Limited	SSDL	\N	2025-09-19 22:38:43.031454
1819	Steel Strips Wheels Limited	SSWL	\N	2025-09-19 22:38:43.031454
1820	Stallion India Fluorochemicals Limited	STALLION	\N	2025-09-19 22:38:43.031454
1821	Stanley Lifestyles Limited	STANLEY	\N	2025-09-19 22:38:43.031454
1822	Strides Pharma Science Limited	STAR	\N	2025-09-19 22:38:43.031454
1823	Star Cement Limited	STARCEMENT	\N	2025-09-19 22:38:43.031454
1824	Star Health and Allied Insurance Company Limited	STARHEALTH	\N	2025-09-19 22:38:43.031454
1825	Star Paper Mills Limited	STARPAPER	\N	2025-09-19 22:38:43.031454
1826	Starteck Finance Limited	STARTECK	\N	2025-09-19 22:38:43.031454
1827	The State Trading Corporation of India Limited	STCINDIA	\N	2025-09-19 22:38:43.031454
1828	Steelcast Limited	STEELCAS	\N	2025-09-19 22:38:43.031454
1829	Steel City Securities Limited	STEELCITY	\N	2025-09-19 22:38:43.031454
1830	STEEL EXCHANGE INDIA LIMITED	STEELXIND	\N	2025-09-19 22:38:43.031454
1831	Stel Holdings Limited	STEL	\N	2025-09-19 22:38:43.031454
1832	Sterling Tools Limited	STERTOOLS	\N	2025-09-19 22:38:43.031454
1833	STL Networks Limited	STLNETWORK	\N	2025-09-19 22:38:43.031454
1834	Sterlite Technologies Limited	STLTECH	\N	2025-09-19 22:38:43.031454
1835	Stove Kraft Limited	STOVEKRAFT	\N	2025-09-19 22:38:43.031454
1836	Stylam Industries Limited	STYLAMIND	\N	2025-09-19 22:38:43.031454
1837	Baazar Style Retail Limited	STYLEBAAZA	\N	2025-09-19 22:38:43.031454
1838	Styrenix Performance Materials Limited	STYRENIX	\N	2025-09-19 22:38:43.031454
1839	Subex Limited	SUBEXLTD	\N	2025-09-19 22:38:43.031454
1840	Subros Limited	SUBROS	\N	2025-09-19 22:38:43.031454
1841	Sudarshan Chemical Industries Limited	SUDARSCHEM	\N	2025-09-19 22:38:43.031454
1842	Sukhjit Starch & Chemicals Limited	SUKHJITS	\N	2025-09-19 22:38:43.031454
1843	Sula Vineyards Limited	SULA	\N	2025-09-19 22:38:43.031454
1844	Sumeet Industries Limited	SUMEETINDS	\N	2025-09-19 22:38:43.031454
1845	Sumitomo Chemical India Limited	SUMICHEM	\N	2025-09-19 22:38:43.031454
1846	Sumit Woods Limited	SUMIT	\N	2025-09-19 22:38:43.031454
1847	Summit Securities Limited	SUMMITSEC	\N	2025-09-19 22:38:43.031454
1848	Sundaram Clayton Limited	SUNCLAY	\N	2025-09-19 22:38:43.031454
1849	Sundaram Multi Pap Limited	SUNDARAM	\N	2025-09-19 22:38:43.031454
1850	Sundaram Finance Limited	SUNDARMFIN	\N	2025-09-19 22:38:43.031454
1851	Sundaram Finance Holdings Limited	SUNDARMHLD	\N	2025-09-19 22:38:43.031454
1852	Sundaram Brake Linings Limited	SUNDRMBRAK	\N	2025-09-19 22:38:43.031454
1853	Sundram Fasteners Limited	SUNDRMFAST	\N	2025-09-19 22:38:43.031454
1854	Sundrop Brands Limited	SUNDROP	\N	2025-09-19 22:38:43.031454
1855	Sunflag Iron And Steel Company Limited	SUNFLAG	\N	2025-09-19 22:38:43.031454
1856	Sun Pharmaceutical Industries Limited	SUNPHARMA	\N	2025-09-19 22:38:43.031454
1857	Sunteck Realty Limited	SUNTECK	\N	2025-09-19 22:38:43.031454
1858	Sun TV Network Limited	SUNTV	\N	2025-09-19 22:38:43.031454
1859	Superhouse Limited	SUPERHOUSE	\N	2025-09-19 22:38:43.031454
1860	Super Spinning Mills Limited	SUPERSPIN	\N	2025-09-19 22:38:43.031454
1861	Suprajit Engineering Limited	SUPRAJIT	\N	2025-09-19 22:38:43.031454
1862	Supreme Holdings & Hospitality (India) Limited	SUPREME	\N	2025-09-19 22:38:43.031454
1863	Supreme Industries Limited	SUPREMEIND	\N	2025-09-19 22:38:43.031454
1864	Supreme Infrastructure India Limited	SUPREMEINF	\N	2025-09-19 22:38:43.031454
1865	Supriya Lifescience Limited	SUPRIYA	\N	2025-09-19 22:38:43.031454
1866	Suraj Estate Developers Limited	SURAJEST	\N	2025-09-19 22:38:43.031454
1867	Suraj Limited	SURAJLTD	\N	2025-09-19 22:38:43.031454
1868	Suraksha Diagnostic Limited	SURAKSHA	\N	2025-09-19 22:38:43.031454
1869	Surana Solar Limited	SURANASOL	\N	2025-09-19 22:38:43.031454
1870	Surana Telecom and Power Limited	SURANAT&P	\N	2025-09-19 22:38:43.031454
1871	Suryalakshmi Cotton Mills Limited	SURYALAXMI	\N	2025-09-19 22:38:43.031454
1872	Surya Roshni Limited	SURYAROSNI	\N	2025-09-19 22:38:43.031454
1873	Suryoday Small Finance Bank Limited	SURYODAY	\N	2025-09-19 22:38:43.031454
1874	Sutlej Textiles and Industries Limited	SUTLEJTEX	\N	2025-09-19 22:38:43.031454
1875	Suven Life Sciences Limited	SUVEN	\N	2025-09-19 22:38:43.031454
1876	Suvidhaa Infoserve Limited	SUVIDHAA	\N	2025-09-19 22:38:43.031454
1877	Suyog Telematics Limited	SUYOG	\N	2025-09-19 22:38:43.031454
1878	Suzlon Energy Limited	SUZLON	\N	2025-09-19 22:38:43.031454
1879	Shree Vasu Logistics Limited	SVLL	\N	2025-09-19 22:38:43.031454
1880	SVP GLOBAL TEXTILES LIMITED	SVPGLOB	\N	2025-09-19 22:38:43.031454
1881	SWAN CORP LIMITED	SWANCORP	\N	2025-09-19 22:38:43.031454
1882	Swaraj Engines Limited	SWARAJENG	\N	2025-09-19 22:38:43.031454
1883	Swelect Energy Systems Limited	SWELECTES	\N	2025-09-19 22:38:43.031454
1884	Swiggy Limited	SWIGGY	\N	2025-09-19 22:38:43.031454
1885	Sterling and Wilson Renewable Energy Limited	SWSOLAR	\N	2025-09-19 22:38:43.031454
1886	Symphony Limited	SYMPHONY	\N	2025-09-19 22:38:43.031454
1887	Syncom Formulations (India) Limited	SYNCOMF	\N	2025-09-19 22:38:43.031454
1888	Syngene International Limited	SYNGENE	\N	2025-09-19 22:38:43.031454
1889	Syrma SGS Technology Limited	SYRMA	\N	2025-09-19 22:38:43.031454
1890	Tainwala Chemical and Plastic (I) Limited	TAINWALCHM	\N	2025-09-19 22:38:43.031454
1891	Taj GVK Hotels & Resorts Limited	TAJGVK	\N	2025-09-19 22:38:43.031454
1892	Take Solutions Limited	TAKE	\N	2025-09-19 22:38:43.031454
1893	Talbros Automotive Components Limited	TALBROAUTO	\N	2025-09-19 22:38:43.031454
1894	Tanla Platforms Limited	TANLA	\N	2025-09-19 22:38:43.031454
1895	Tara Chand InfraLogistic Solutions Limited	TARACHAND	\N	2025-09-19 22:38:43.031454
1896	Tarapur Transformers Limited	TARAPUR	\N	2025-09-19 22:38:43.031454
1897	TARC Limited	TARC	\N	2025-09-19 22:38:43.031454
1898	Transformers And Rectifiers (India) Limited	TARIL	\N	2025-09-19 22:38:43.031454
1899	Tarmat Limited	TARMAT	\N	2025-09-19 22:38:43.031454
1900	Tarsons Products Limited	TARSONS	\N	2025-09-19 22:38:43.031454
1901	Tasty Bite Eatables Limited	TASTYBITE	\N	2025-09-19 22:38:43.031454
1902	Tata Chemicals Limited	TATACHEM	\N	2025-09-19 22:38:43.031454
1903	Tata Communications Limited	TATACOMM	\N	2025-09-19 22:38:43.031454
1904	TATA CONSUMER PRODUCTS LIMITED	TATACONSUM	\N	2025-09-19 22:38:43.031454
1905	Tata Elxsi Limited	TATAELXSI	\N	2025-09-19 22:38:43.031454
1906	Tata Investment Corporation Limited	TATAINVEST	\N	2025-09-19 22:38:43.031454
1907	Tata Motors Limited	TATAMOTORS	\N	2025-09-19 22:38:43.031454
1908	Tata Power Company Limited	TATAPOWER	\N	2025-09-19 22:38:43.031454
1909	Tata Steel Limited	TATASTEEL	\N	2025-09-19 22:38:43.031454
1910	Tata Technologies Limited	TATATECH	\N	2025-09-19 22:38:43.031454
1911	Tatva Chintan Pharma Chem Limited	TATVA	\N	2025-09-19 22:38:43.031454
1912	TBO Tek Limited	TBOTEK	\N	2025-09-19 22:38:43.031454
1913	Tribhovandas Bhimji Zaveri Limited	TBZ	\N	2025-09-19 22:38:43.031454
1914	Transport Corporation of India Limited	TCI	\N	2025-09-19 22:38:43.031454
1915	TCI Express Limited	TCIEXP	\N	2025-09-19 22:38:43.031454
1916	TCI Finance Limited	TCIFINANCE	\N	2025-09-19 22:38:43.031454
1917	TCPL Packaging Limited	TCPLPACK	\N	2025-09-19 22:38:43.031454
1918	Tata Consultancy Services Limited	TCS	\N	2025-09-19 22:38:43.031454
1919	TD Power Systems Limited	TDPOWERSYS	\N	2025-09-19 22:38:43.031454
1920	Team India Guaranty Limited	TEAMGTY	\N	2025-09-19 22:38:43.031454
1921	Teamlease Services Limited	TEAMLEASE	\N	2025-09-19 22:38:43.031454
1922	Tech Mahindra Limited	TECHM	\N	2025-09-19 22:38:43.031454
1923	Techno Electric & Engineering Company Limited	TECHNOE	\N	2025-09-19 22:38:43.031454
1924	TECIL Chemicals and Hydro Power Limited	TECILCHEM	\N	2025-09-19 22:38:43.031454
1925	Tega Industries Limited	TEGA	\N	2025-09-19 22:38:43.031454
1926	Tejas Networks Limited	TEJASNET	\N	2025-09-19 22:38:43.031454
1927	Tembo Global Industries Limited	TEMBO	\N	2025-09-19 22:38:43.031454
1928	Tera Software Limited	TERASOFT	\N	2025-09-19 22:38:43.031454
1929	Texmaco Infrastructure & Holdings Limited	TEXINFRA	\N	2025-09-19 22:38:43.031454
1930	Texmo Pipes and Products Limited	TEXMOPIPES	\N	2025-09-19 22:38:43.031454
1931	Texmaco Rail & Engineering Limited	TEXRAIL	\N	2025-09-19 22:38:43.031454
1932	Tourism Finance Corporation of India Limited	TFCILTD	\N	2025-09-19 22:38:43.031454
1933	Transwarranty Finance Limited	TFL	\N	2025-09-19 22:38:43.031454
1934	TGB Banquets And Hotels Limited	TGBHOTELS	\N	2025-09-19 22:38:43.031454
1935	Thangamayil Jewellery Limited	THANGAMAYL	\N	2025-09-19 22:38:43.031454
1936	The Investment Trust Of India Limited	THEINVEST	\N	2025-09-19 22:38:43.031454
1937	Thejo Engineering Limited	THEJO	\N	2025-09-19 22:38:43.031454
1938	Schloss Bangalore Limited	THELEELA	\N	2025-09-19 22:38:43.031454
1939	Themis Medicare Limited	THEMISMED	\N	2025-09-19 22:38:43.031454
1940	Thermax Limited	THERMAX	\N	2025-09-19 22:38:43.031454
1941	Thomas Cook  (India)  Limited	THOMASCOOK	\N	2025-09-19 22:38:43.031454
1942	Thomas Scott (India) Limited	THOMASCOTT	\N	2025-09-19 22:38:43.031454
1943	Thyrocare Technologies Limited	THYROCARE	\N	2025-09-19 22:38:43.031454
1944	Tilaknagar Industries Limited	TI	\N	2025-09-19 22:38:43.031454
1945	Twamev Construction and Infrastructure Limited	TICL	\N	2025-09-19 22:38:43.031454
1946	Tiger Logistics (India) Limited	TIGERLOGS	\N	2025-09-19 22:38:43.031454
1947	Technocraft Industries (India) Limited	TIIL	\N	2025-09-19 22:38:43.031454
1948	Tube Investments of India Limited	TIINDIA	\N	2025-09-19 22:38:43.031454
1949	Tijaria Polypipes Limited	TIJARIA	\N	2025-09-19 22:38:43.031454
1950	TIL Limited	TIL	\N	2025-09-19 22:38:43.031454
1951	Time Technoplast Limited	TIMETECHNO	\N	2025-09-19 22:38:43.031454
1952	Timken India Limited	TIMKEN	\N	2025-09-19 22:38:43.031454
1953	Tinna Rubber and Infrastructure Limited	TINNARUBR	\N	2025-09-19 22:38:43.031454
1954	Tips Films Limited	TIPSFILMS	\N	2025-09-19 22:38:43.031454
1955	Tips Music Limited	TIPSMUSIC	\N	2025-09-19 22:38:43.031454
1956	Thirumalai Chemicals Limited	TIRUMALCHM	\N	2025-09-19 22:38:43.031454
1957	Tirupati Forge Limited	TIRUPATIFL	\N	2025-09-19 22:38:43.031454
1958	TITAGARH RAIL SYSTEMS LIMITED	TITAGARH	\N	2025-09-19 22:38:43.031454
1959	Titan Company Limited	TITAN	\N	2025-09-19 22:38:43.031454
1960	Tamilnad Mercantile Bank Limited	TMB	\N	2025-09-19 22:38:43.031454
1961	Tamilnadu PetroProducts Limited	TNPETRO	\N	2025-09-19 22:38:43.031454
1962	Tamil Nadu Newsprint & Papers Limited	TNPL	\N	2025-09-19 22:38:43.031454
1963	Tamilnadu Telecommunication Limited	TNTELE	\N	2025-09-19 22:38:43.031454
1964	Tokyo Plast International Limited	TOKYOPLAST	\N	2025-09-19 22:38:43.031454
1965	Tolins Tyres Limited	TOLINS	\N	2025-09-19 22:38:43.031454
1966	Torrent Pharmaceuticals Limited	TORNTPHARM	\N	2025-09-19 22:38:43.031454
1967	Torrent Power Limited	TORNTPOWER	\N	2025-09-19 22:38:43.031454
1968	Total Transport Systems Limited	TOTAL	\N	2025-09-19 22:38:43.031454
1969	Touchwood Entertainment Limited	TOUCHWOOD	\N	2025-09-19 22:38:43.031454
1970	Teamo Productions HQ Limited	TPHQ	\N	2025-09-19 22:38:43.031454
1971	TPL Plastech Limited	TPLPLASTEH	\N	2025-09-19 22:38:43.031454
1972	Tracxn Technologies Limited	TRACXN	\N	2025-09-19 22:38:43.031454
1973	Transrail Lighting Limited	TRANSRAILL	\N	2025-09-19 22:38:43.031454
1974	TRANSWORLD SHIPPING LINES LIMITED	TRANSWORLD	\N	2025-09-19 22:38:43.031454
1975	Travel Food Services Limited	TRAVELFOOD	\N	2025-09-19 22:38:43.031454
1976	Tree House Education & Accessories Limited	TREEHOUSE	\N	2025-09-19 22:38:43.031454
1977	TREJHARA SOLUTIONS LIMITED	TREJHARA	\N	2025-09-19 22:38:43.031454
1978	Transindia Real Estate Limited	TREL	\N	2025-09-19 22:38:43.031454
1979	Trent Limited	TRENT	\N	2025-09-19 22:38:43.031454
1980	TRF Limited	TRF	\N	2025-09-19 22:38:43.031454
1981	Trident Limited	TRIDENT	\N	2025-09-19 22:38:43.031454
1982	Trigyn Technologies Limited	TRIGYN	\N	2025-09-19 22:38:43.031454
1983	Triveni Turbine Limited	TRITURBINE	\N	2025-09-19 22:38:43.031454
1984	Triveni Engineering & Industries Limited	TRIVENI	\N	2025-09-19 22:38:43.031454
1985	TruCap Finance Limited	TRU	\N	2025-09-19 22:38:43.031454
1986	TTK Healthcare Limited	TTKHLTCARE	\N	2025-09-19 22:38:43.031454
1987	TTK Prestige Limited	TTKPRESTIG	\N	2025-09-19 22:38:43.031454
1988	T T Limited	TTL	\N	2025-09-19 22:38:43.031454
1989	Tata Teleservices (Maharashtra) Limited	TTML	\N	2025-09-19 22:38:43.031454
1990	TVS Electronics Limited	TVSELECT	\N	2025-09-19 22:38:43.031454
1991	TVS Holdings Limited	TVSHLTD	\N	2025-09-19 22:38:43.031454
1992	TVS Motor Company Limited	TVSMOTOR	\N	2025-09-19 22:38:43.031454
1993	TVS Supply Chain Solutions Limited	TVSSCS	\N	2025-09-19 22:38:43.031454
1994	TVS Srichakra Limited	TVSSRICHAK	\N	2025-09-19 22:38:43.031454
1995	TV Today Network Limited	TVTODAY	\N	2025-09-19 22:38:43.031454
1996	TV Vision Limited	TVVISION	\N	2025-09-19 22:38:43.031454
1997	United Breweries Limited	UBL	\N	2025-09-19 22:38:43.031454
1998	UCAL LIMITED	UCAL	\N	2025-09-19 22:38:43.031454
1999	UCO Bank	UCOBANK	\N	2025-09-19 22:38:43.031454
2000	Updater Services Limited	UDS	\N	2025-09-19 22:38:43.031454
2001	UFLEX Limited	UFLEX	\N	2025-09-19 22:38:43.031454
2002	UFO Moviez India Limited	UFO	\N	2025-09-19 22:38:43.031454
2003	The Ugar Sugar Works Limited	UGARSUGAR	\N	2025-09-19 22:38:43.031454
2004	Ugro Capital Limited	UGROCAP	\N	2025-09-19 22:38:43.031454
2005	Ujjivan Small Finance Bank Limited	UJJIVANSFB	\N	2025-09-19 22:38:43.031454
2006	UltraTech Cement Limited	ULTRACEMCO	\N	2025-09-19 22:38:43.031454
2007	Uma Exports Limited	UMAEXPORTS	\N	2025-09-19 22:38:43.031454
2008	Usha Martin Education & Solutions Limited	UMESLTD	\N	2025-09-19 22:38:43.031454
2009	UMIYA BUILDCON LIMITED	UMIYA-MRO	\N	2025-09-19 22:38:43.031454
2010	Unichem Laboratories Limited	UNICHEMLAB	\N	2025-09-19 22:38:43.031454
2011	United Drilling Tools Limited	UNIDT	\N	2025-09-19 22:38:43.031454
2012	Unicommerce Esolutions Limited	UNIECOM	\N	2025-09-19 22:38:43.031454
2013	Uniphos Enterprises Limited	UNIENTER	\N	2025-09-19 22:38:43.031454
2014	Uniinfo Telecom Services Limited	UNIINFO	\N	2025-09-19 22:38:43.031454
2015	Unimech Aerospace and Manufacturing Limited	UNIMECH	\N	2025-09-19 22:38:43.031454
2016	Union Bank of India	UNIONBANK	\N	2025-09-19 22:38:43.031454
2017	Uniparts India Limited	UNIPARTS	\N	2025-09-19 22:38:43.031454
2018	United Spirits Limited	UNITDSPR	\N	2025-09-19 22:38:43.031454
2019	Unitech Limited	UNITECH	\N	2025-09-19 22:38:43.031454
2020	United Polyfab Gujarat Limited	UNITEDPOLY	\N	2025-09-19 22:38:43.031454
2021	The United Nilgiri Tea Estates Company Limited	UNITEDTEA	\N	2025-09-19 22:38:43.031454
2022	Univastu India Limited	UNIVASTU	\N	2025-09-19 22:38:43.031454
2023	Universal Cables Limited	UNIVCABLES	\N	2025-09-19 22:38:43.031454
2024	Universus Photo Imagings Limited	UNIVPHOTO	\N	2025-09-19 22:38:43.031454
2025	UNO Minda Limited	UNOMINDA	\N	2025-09-19 22:38:43.031454
2026	UPL Limited	UPL	\N	2025-09-19 22:38:43.031454
2027	Uravi Defence and Technology Limited	URAVIDEF	\N	2025-09-19 22:38:43.031454
2028	Urban Company Limited	URBANCO	\N	2025-09-19 22:38:43.031454
2029	Urja Global Limited	URJA	\N	2025-09-19 22:38:43.031454
2030	Usha Martin Limited	USHAMART	\N	2025-09-19 22:38:43.031454
2031	Udayshivakumar Infra Limited	USK	\N	2025-09-19 22:38:43.031454
2032	UTI Asset Management Company Limited	UTIAMC	\N	2025-09-19 22:38:43.031454
2033	Utkarsh Small Finance Bank Limited	UTKARSHBNK	\N	2025-09-19 22:38:43.031454
2034	Uttam Sugar Mills Limited	UTTAMSUGAR	\N	2025-09-19 22:38:43.031454
2035	U. Y. Fincorp Limited	UYFINCORP	\N	2025-09-19 22:38:43.031454
2036	V2 Retail Limited	V2RETAIL	\N	2025-09-19 22:38:43.031454
2037	Vadilal Industries Limited	VADILALIND	\N	2025-09-19 22:38:43.031454
2038	Vaibhav Global Limited	VAIBHAVGBL	\N	2025-09-19 22:38:43.031454
2039	Vaishali Pharma Limited	VAISHALI	\N	2025-09-19 22:38:43.031454
2040	Vakrangee Limited	VAKRANGEE	\N	2025-09-19 22:38:43.031454
2041	Valiant Laboratories Limited	VALIANTLAB	\N	2025-09-19 22:38:43.031454
2042	Valiant Organics Limited	VALIANTORG	\N	2025-09-19 22:38:43.031454
2043	Vardhman Acrylics Limited	VARDHACRLC	\N	2025-09-19 22:38:43.031454
2044	Vardhman Polytex Limited	VARDMNPOLY	\N	2025-09-19 22:38:43.031454
2045	Varroc Engineering Limited	VARROC	\N	2025-09-19 22:38:43.031454
2046	Vascon Engineers Limited	VASCONEQ	\N	2025-09-19 22:38:43.031454
2047	Vaswani Industries Limited	VASWANI	\N	2025-09-19 22:38:43.031454
2048	Varun Beverages Limited	VBL	\N	2025-09-19 22:38:43.031454
2049	Vaxtex Cotfab Limited	VCL	\N	2025-09-19 22:38:43.031454
2050	Vedanta Limited	VEDL	\N	2025-09-19 22:38:43.031454
2051	Veedol Corporation Limited	VEEDOL	\N	2025-09-19 22:38:43.031454
2052	Venky's (India) Limited	VENKEYS	\N	2025-09-19 22:38:43.031454
2053	Ventive Hospitality Limited	VENTIVE	\N	2025-09-19 22:38:43.031454
2054	Venus Pipes & Tubes Limited	VENUSPIPES	\N	2025-09-19 22:38:43.031454
2055	Venus Remedies Limited	VENUSREM	\N	2025-09-19 22:38:43.031454
2056	Veranda Learning Solutions Limited	VERANDA	\N	2025-09-19 22:38:43.031454
2057	Vertoz Limited	VERTOZ	\N	2025-09-19 22:38:43.031454
2058	Vesuvius India Limited	VESUVIUS	\N	2025-09-19 22:38:43.031454
2059	Veto Switchgears And Cables Limited	VETO	\N	2025-09-19 22:38:43.031454
2060	V-Guard Industries Limited	VGUARD	\N	2025-09-19 22:38:43.031454
2061	Vardhman Holdings Limited	VHL	\N	2025-09-19 22:38:43.031454
2062	Viceroy Hotels Limited	VHLTD	\N	2025-09-19 22:38:43.031454
2063	Vidhi Specialty Food Ingredients Limited	VIDHIING	\N	2025-09-19 22:38:43.031454
2064	Vijaya Diagnostic Centre Limited	VIJAYA	\N	2025-09-19 22:38:43.031454
2065	Viji Finance Limited	VIJIFIN	\N	2025-09-19 22:38:43.031454
2066	Vikas EcoTech Limited	VIKASECO	\N	2025-09-19 22:38:43.031454
2067	Vikas Lifecare Limited	VIKASLIFE	\N	2025-09-19 22:38:43.031454
2068	Vikram Solar Limited	VIKRAMSOLR	\N	2025-09-19 22:38:43.031454
2069	Vikran Engineering Limited	VIKRAN	\N	2025-09-19 22:38:43.031454
2070	Vimta Labs Limited	VIMTALABS	\N	2025-09-19 22:38:43.031454
2071	Vinati Organics Limited	VINATIORGA	\N	2025-09-19 22:38:43.031454
2072	Vintage Coffee And Beverages Limited	VINCOFE	\N	2025-09-19 22:38:43.031454
2073	Vindhya Telelinks Limited	VINDHYATEL	\N	2025-09-19 22:38:43.031454
2074	Vineet Laboratories Limited	VINEETLAB	\N	2025-09-19 22:38:43.031454
2075	Vinny Overseas Limited	VINNY	\N	2025-09-19 22:38:43.031454
2076	Vinyl Chemicals (India) Limited	VINYLINDIA	\N	2025-09-19 22:38:43.031454
2077	VIP Clothing Limited	VIPCLOTHNG	\N	2025-09-19 22:38:43.031454
2078	VIP Industries Limited	VIPIND	\N	2025-09-19 22:38:43.031454
2079	Vipul Limited	VIPULLTD	\N	2025-09-19 22:38:43.031454
2080	Virinchi Limited	VIRINCHI	\N	2025-09-19 22:38:43.031454
2081	Visaka Industries Limited	VISAKAIND	\N	2025-09-19 22:38:43.031454
2082	Vishnu Chemicals Limited	VISHNU	\N	2025-09-19 22:38:43.031454
2083	Vishwaraj Sugar Industries Limited	VISHWARAJ	\N	2025-09-19 22:38:43.031454
2084	Visagar Polytex Limited	VIVIDHA	\N	2025-09-19 22:38:43.031454
2085	VL E-Governance & IT Solutions Limited	VLEGOV	\N	2025-09-19 22:38:43.031454
2086	VLS Finance Limited	VLSFINANCE	\N	2025-09-19 22:38:43.031454
2087	V-Mart Retail Limited	VMART	\N	2025-09-19 22:38:43.031454
2088	Vishal Mega Mart Limited	VMM	\N	2025-09-19 22:38:43.031454
2089	Voltamp Transformers Limited	VOLTAMP	\N	2025-09-19 22:38:43.031454
2090	Voltas Limited	VOLTAS	\N	2025-09-19 22:38:43.031454
2091	Vishnu Prakash R Punglia Limited	VPRPL	\N	2025-09-19 22:38:43.031454
2092	Vraj Iron and Steel Limited	VRAJ	\N	2025-09-19 22:38:43.031454
2093	VRL Logistics Limited	VRLLOG	\N	2025-09-19 22:38:43.031454
2094	Vardhman Special Steels Limited	VSSL	\N	2025-09-19 22:38:43.031454
2095	VST Industries Limited	VSTIND	\N	2025-09-19 22:38:43.031454
2096	Vibhor Steel Tubes Limited	VSTL	\N	2025-09-19 22:38:43.031454
2097	V.S.T Tillers Tractors Limited	VSTTILLERS	\N	2025-09-19 22:38:43.031454
2098	Vardhman Textiles Limited	VTL	\N	2025-09-19 22:38:43.031454
2099	Waaree Energies Limited	WAAREEENER	\N	2025-09-19 22:38:43.031454
2100	Waaree Renewable Technologies Limited	WAAREERTL	\N	2025-09-19 22:38:43.031454
2101	VA Tech Wabag Limited	WABAG	\N	2025-09-19 22:38:43.031454
2102	Walchandnagar Industries Limited	WALCHANNAG	\N	2025-09-19 22:38:43.031454
2103	Wanbury Limited	WANBURY	\N	2025-09-19 22:38:43.031454
2104	Western Carriers (India) Limited	WCIL	\N	2025-09-19 22:38:43.031454
2105	Wealth First Portfolio Managers Limited	WEALTH	\N	2025-09-19 22:38:43.031454
2106	Websol Energy System Limited	WEBELSOLAR	\N	2025-09-19 22:38:43.031454
2107	Weizmann Limited	WEIZMANIND	\N	2025-09-19 22:38:43.031454
2108	Wonder Electricals Limited	WEL	\N	2025-09-19 22:38:43.031454
2109	Welspun Corp Limited	WELCORP	\N	2025-09-19 22:38:43.031454
2110	Welspun Enterprises Limited	WELENT	\N	2025-09-19 22:38:43.031454
2111	Welspun Investments and Commercials Limited	WELINV	\N	2025-09-19 22:38:43.031454
2112	Welspun Living Limited	WELSPUNLIV	\N	2025-09-19 22:38:43.031454
2113	Wendt (India) Limited	WENDT	\N	2025-09-19 22:38:43.031454
2114	WESTLIFE FOODWORLD LIMITED	WESTLIFE	\N	2025-09-19 22:38:43.031454
2115	WE WIN LIMITED	WEWIN	\N	2025-09-19 22:38:43.031454
2116	Wheels India Limited	WHEELS	\N	2025-09-19 22:38:43.031454
2117	Whirlpool of India Limited	WHIRLPOOL	\N	2025-09-19 22:38:43.031454
2118	Williamson Magor & Company Limited	WILLAMAGOR	\N	2025-09-19 22:38:43.031454
2119	Windlas Biotech Limited	WINDLAS	\N	2025-09-19 22:38:43.031454
2120	Windsor Machines Limited	WINDMACHIN	\N	2025-09-19 22:38:43.031454
2121	Winsome Yarns Limited	WINSOME	\N	2025-09-19 22:38:43.031454
2122	The Western India Plywoods Limited	WIPL	\N	2025-09-19 22:38:43.031454
2123	Wipro Limited	WIPRO	\N	2025-09-19 22:38:43.031454
2124	Wockhardt Limited	WOCKPHARMA	\N	2025-09-19 22:38:43.031454
2125	Wonderla Holidays Limited	WONDERLA	\N	2025-09-19 22:38:43.031454
2126	Worth Peripherals Limited	WORTH	\N	2025-09-19 22:38:43.031454
2127	W S Industries (I) Limited	WSI	\N	2025-09-19 22:38:43.031454
2128	West Coast Paper Mills Limited	WSTCSTPAPR	\N	2025-09-19 22:38:43.031454
2129	Xchanging Solutions Limited	XCHANGING	\N	2025-09-19 22:38:43.031454
2130	Xelpmoc Design And Tech Limited	XELPMOC	\N	2025-09-19 22:38:43.031454
2131	Xpro India Limited	XPROINDIA	\N	2025-09-19 22:38:43.031454
2132	Xtglobal Infotech Limited	XTGLOBAL	\N	2025-09-19 22:38:43.031454
2133	Yasho Industries Limited	YASHO	\N	2025-09-19 22:38:43.031454
2134	Yatharth Hospital & Trauma Care Services Limited	YATHARTH	\N	2025-09-19 22:38:43.031454
2135	Yatra Online Limited	YATRA	\N	2025-09-19 22:38:43.031454
2136	Yes Bank Limited	YESBANK	\N	2025-09-19 22:38:43.031454
2137	Yuken India Limited	YUKEN	\N	2025-09-19 22:38:43.031454
2138	Zaggle Prepaid Ocean Services Limited	ZAGGLE	\N	2025-09-19 22:38:43.031454
2139	Zee Entertainment Enterprises Limited	ZEEL	\N	2025-09-19 22:38:43.031454
2140	Zee Learn Limited	ZEELEARN	\N	2025-09-19 22:38:43.031454
2141	Zee Media Corporation Limited	ZEEMEDIA	\N	2025-09-19 22:38:43.031454
2142	Zenith Exports Limited	ZENITHEXPO	\N	2025-09-19 22:38:43.031454
2143	Zenith Steel Pipes & Industries Limited	ZENITHSTL	\N	2025-09-19 22:38:43.031454
2144	Zensar Technologies Limited	ZENSARTECH	\N	2025-09-19 22:38:43.031454
2145	Zen Technologies Limited	ZENTEC	\N	2025-09-19 22:38:43.031454
2146	ZF Commercial Vehicle Control Systems India Limited	ZFCVINDIA	\N	2025-09-19 22:38:43.031454
2147	Zim Laboratories Limited	ZIMLAB	\N	2025-09-19 22:38:43.031454
2148	Zodiac Energy Limited	ZODIAC	\N	2025-09-19 22:38:43.031454
2149	Zodiac Clothing Company Limited	ZODIACLOTH	\N	2025-09-19 22:38:43.031454
2150	Zota Health Care LImited	ZOTA	\N	2025-09-19 22:38:43.031454
2151	Zuari Agro Chemicals Limited	ZUARI	\N	2025-09-19 22:38:43.031454
2152	ZUARI INDUSTRIES LIMITED	ZUARIIND	\N	2025-09-19 22:38:43.031454
2153	Zydus Lifesciences Limited	ZYDUSLIFE	\N	2025-09-19 22:38:43.031454
2154	Zydus Wellness Limited	ZYDUSWELL	\N	2025-09-19 22:38:43.031454
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.users (id, username, password_hash, email, created_at) FROM stdin;
\.


--
-- Name: portfolio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.portfolio_id_seq', 1, false);


--
-- Name: stocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.stocks_id_seq', 2154, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: portfolio portfolio_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_pkey PRIMARY KEY (id);


--
-- Name: portfolio portfolio_user_id_stock_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_user_id_stock_id_key UNIQUE (user_id, stock_id);


--
-- Name: stocks stocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_pkey PRIMARY KEY (id);


--
-- Name: stocks stocks_ticker_symbol_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.stocks
    ADD CONSTRAINT stocks_ticker_symbol_key UNIQUE (ticker_symbol);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: portfolio portfolio_stock_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_stock_id_fkey FOREIGN KEY (stock_id) REFERENCES public.stocks(id) ON DELETE CASCADE;


--
-- Name: portfolio portfolio_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portfolio
    ADD CONSTRAINT portfolio_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

