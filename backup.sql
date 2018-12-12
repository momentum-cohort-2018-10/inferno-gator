--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_core_user_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.core_user_user_permissions DROP CONSTRAINT IF EXISTS core_user_user_permissions_user_id_085123d3_fk_core_user_id;
ALTER TABLE IF EXISTS ONLY public.core_user_user_permissions DROP CONSTRAINT IF EXISTS core_user_user_permi_permission_id_35ccf601_fk_auth_perm;
ALTER TABLE IF EXISTS ONLY public.core_user_groups DROP CONSTRAINT IF EXISTS core_user_groups_user_id_70b4d9b8_fk_core_user_id;
ALTER TABLE IF EXISTS ONLY public.core_user_groups DROP CONSTRAINT IF EXISTS core_user_groups_group_id_fe8c697f_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.core_booknote DROP CONSTRAINT IF EXISTS core_booknote_book_id_6f5fc48e_fk_core_book_id;
ALTER TABLE IF EXISTS ONLY public.core_book DROP CONSTRAINT IF EXISTS core_book_owner_id_44c99754_fk_core_user_id;
ALTER TABLE IF EXISTS ONLY public.core_book_authors DROP CONSTRAINT IF EXISTS core_book_authors_book_id_d8814d03_fk_core_book_id;
ALTER TABLE IF EXISTS ONLY public.core_book_authors DROP CONSTRAINT IF EXISTS core_book_authors_author_id_de742869_fk_core_author_id;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX IF EXISTS public.django_session_session_key_c0390e0f_like;
DROP INDEX IF EXISTS public.django_session_expire_date_a5c62663;
DROP INDEX IF EXISTS public.django_admin_log_user_id_c564eba6;
DROP INDEX IF EXISTS public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX IF EXISTS public.core_user_username_36e4f7f7_like;
DROP INDEX IF EXISTS public.core_user_user_permissions_user_id_085123d3;
DROP INDEX IF EXISTS public.core_user_user_permissions_permission_id_35ccf601;
DROP INDEX IF EXISTS public.core_user_groups_user_id_70b4d9b8;
DROP INDEX IF EXISTS public.core_user_groups_group_id_fe8c697f;
DROP INDEX IF EXISTS public.core_booknote_book_id_6f5fc48e;
DROP INDEX IF EXISTS public.core_book_owner_id_44c99754;
DROP INDEX IF EXISTS public.core_book_authors_book_id_d8814d03;
DROP INDEX IF EXISTS public.core_book_authors_author_id_de742869;
DROP INDEX IF EXISTS public.auth_permission_content_type_id_2f476e4b;
DROP INDEX IF EXISTS public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX IF EXISTS public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX IF EXISTS public.auth_group_name_a6ea08ec_like;
ALTER TABLE IF EXISTS ONLY public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
ALTER TABLE IF EXISTS ONLY public.core_user DROP CONSTRAINT IF EXISTS core_user_username_key;
ALTER TABLE IF EXISTS ONLY public.core_user_user_permissions DROP CONSTRAINT IF EXISTS core_user_user_permissions_user_id_permission_id_73ea0daa_uniq;
ALTER TABLE IF EXISTS ONLY public.core_user_user_permissions DROP CONSTRAINT IF EXISTS core_user_user_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.core_user DROP CONSTRAINT IF EXISTS core_user_pkey;
ALTER TABLE IF EXISTS ONLY public.core_user_groups DROP CONSTRAINT IF EXISTS core_user_groups_user_id_group_id_c82fcad1_uniq;
ALTER TABLE IF EXISTS ONLY public.core_user_groups DROP CONSTRAINT IF EXISTS core_user_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.core_booknote DROP CONSTRAINT IF EXISTS core_booknote_pkey;
ALTER TABLE IF EXISTS ONLY public.core_book DROP CONSTRAINT IF EXISTS core_book_pkey;
ALTER TABLE IF EXISTS ONLY public.core_book_authors DROP CONSTRAINT IF EXISTS core_book_authors_pkey;
ALTER TABLE IF EXISTS ONLY public.core_book_authors DROP CONSTRAINT IF EXISTS core_book_authors_book_id_author_id_e39270c2_uniq;
ALTER TABLE IF EXISTS ONLY public.core_author DROP CONSTRAINT IF EXISTS core_author_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
ALTER TABLE IF EXISTS public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_booknote ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_book_authors ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_book ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.core_author ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.django_session;
DROP SEQUENCE IF EXISTS public.django_migrations_id_seq;
DROP TABLE IF EXISTS public.django_migrations;
DROP SEQUENCE IF EXISTS public.django_content_type_id_seq;
DROP TABLE IF EXISTS public.django_content_type;
DROP SEQUENCE IF EXISTS public.django_admin_log_id_seq;
DROP TABLE IF EXISTS public.django_admin_log;
DROP SEQUENCE IF EXISTS public.core_user_user_permissions_id_seq;
DROP TABLE IF EXISTS public.core_user_user_permissions;
DROP SEQUENCE IF EXISTS public.core_user_id_seq;
DROP SEQUENCE IF EXISTS public.core_user_groups_id_seq;
DROP TABLE IF EXISTS public.core_user_groups;
DROP TABLE IF EXISTS public.core_user;
DROP SEQUENCE IF EXISTS public.core_booknote_id_seq;
DROP TABLE IF EXISTS public.core_booknote;
DROP SEQUENCE IF EXISTS public.core_book_id_seq;
DROP SEQUENCE IF EXISTS public.core_book_authors_id_seq;
DROP TABLE IF EXISTS public.core_book_authors;
DROP TABLE IF EXISTS public.core_book;
DROP SEQUENCE IF EXISTS public.core_author_id_seq;
DROP TABLE IF EXISTS public.core_author;
DROP SEQUENCE IF EXISTS public.auth_permission_id_seq;
DROP TABLE IF EXISTS public.auth_permission;
DROP SEQUENCE IF EXISTS public.auth_group_permissions_id_seq;
DROP TABLE IF EXISTS public.auth_group_permissions;
DROP SEQUENCE IF EXISTS public.auth_group_id_seq;
DROP TABLE IF EXISTS public.auth_group;
SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: core_author; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_author (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);


--
-- Name: core_author_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_author_id_seq OWNED BY public.core_author.id;


--
-- Name: core_book; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_book (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    status character varying(20) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    owner_id integer NOT NULL
);


--
-- Name: core_book_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_book_authors (
    id integer NOT NULL,
    book_id integer NOT NULL,
    author_id integer NOT NULL
);


--
-- Name: core_book_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_book_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_book_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_book_authors_id_seq OWNED BY public.core_book_authors.id;


--
-- Name: core_book_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_book_id_seq OWNED BY public.core_book.id;


--
-- Name: core_booknote; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_booknote (
    id integer NOT NULL,
    body text NOT NULL,
    page_number integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    book_id integer NOT NULL,
    CONSTRAINT core_booknote_page_number_check CHECK ((page_number >= 0))
);


--
-- Name: core_booknote_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_booknote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_booknote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_booknote_id_seq OWNED BY public.core_booknote.id;


--
-- Name: core_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: core_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: core_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_user_groups_id_seq OWNED BY public.core_user_groups.id;


--
-- Name: core_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_user_id_seq OWNED BY public.core_user.id;


--
-- Name: core_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.core_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.core_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.core_user_user_permissions_id_seq OWNED BY public.core_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: core_author id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_author ALTER COLUMN id SET DEFAULT nextval('public.core_author_id_seq'::regclass);


--
-- Name: core_book id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book ALTER COLUMN id SET DEFAULT nextval('public.core_book_id_seq'::regclass);


--
-- Name: core_book_authors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book_authors ALTER COLUMN id SET DEFAULT nextval('public.core_book_authors_id_seq'::regclass);


--
-- Name: core_booknote id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_booknote ALTER COLUMN id SET DEFAULT nextval('public.core_booknote_id_seq'::regclass);


--
-- Name: core_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user ALTER COLUMN id SET DEFAULT nextval('public.core_user_id_seq'::regclass);


--
-- Name: core_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_groups ALTER COLUMN id SET DEFAULT nextval('public.core_user_groups_id_seq'::regclass);


--
-- Name: core_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.core_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add book	7	add_book
26	Can change book	7	change_book
27	Can delete book	7	delete_book
28	Can view book	7	view_book
29	Can add book note	8	add_booknote
30	Can change book note	8	change_booknote
31	Can delete book note	8	delete_booknote
32	Can view book note	8	view_booknote
33	Can add author	9	add_author
34	Can change author	9	change_author
35	Can delete author	9	delete_author
36	Can view author	9	view_author
\.


--
-- Data for Name: core_author; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_author (id, name) FROM stdin;
1	Ursula K. LeGuin
2	Andy Hunt
3	Dave Thomas
\.


--
-- Data for Name: core_book; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_book (id, title, status, created_at, updated_at, owner_id) FROM stdin;
1	Catwings Return	read	2018-12-12 10:16:37.761862-05	2018-12-12 10:16:42.541983-05	1
2	The Pragmatic Programmer	read	2018-12-12 10:17:28.656323-05	2018-12-12 10:17:28.656348-05	1
\.


--
-- Data for Name: core_book_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_book_authors (id, book_id, author_id) FROM stdin;
1	1	1
2	2	2
3	2	3
\.


--
-- Data for Name: core_booknote; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_booknote (id, body, page_number, created_at, updated_at, book_id) FROM stdin;
\.


--
-- Data for Name: core_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$xHl635w0f2eN$9TDbQyWuSqN8i3GSR0RlcRMv97JUy5uIO1qtjn0xMLE=	2018-12-12 10:40:13.407104-05	t	clinton				t	t	2018-12-12 10:15:58.069694-05
\.


--
-- Data for Name: core_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: core_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.core_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-12-12 10:16:37.769765-05	1	Catwings Return	1	[{"added": {}}]	7	1
2	2018-12-12 10:16:42.54551-05	1	Catwings Return	2	[]	7	1
3	2018-12-12 10:17:28.658354-05	2	The Pragmatic Programmer	1	[{"added": {}}]	7	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	core	user
7	core	book
8	core	booknote
9	core	author
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-12-12 10:11:54.069614-05
2	contenttypes	0002_remove_content_type_name	2018-12-12 10:11:54.130249-05
3	auth	0001_initial	2018-12-12 10:12:04.628588-05
4	auth	0002_alter_permission_name_max_length	2018-12-12 10:12:04.651354-05
5	auth	0003_alter_user_email_max_length	2018-12-12 10:12:04.664182-05
6	auth	0004_alter_user_username_opts	2018-12-12 10:12:04.68018-05
7	auth	0005_alter_user_last_login_null	2018-12-12 10:12:04.69121-05
8	auth	0006_require_contenttypes_0002	2018-12-12 10:12:04.862853-05
9	auth	0007_alter_validators_add_error_messages	2018-12-12 10:12:04.932792-05
10	auth	0008_alter_user_username_max_length	2018-12-12 10:12:05.068933-05
11	auth	0009_alter_user_last_name_max_length	2018-12-12 10:12:05.089954-05
12	core	0001_initial	2018-12-12 10:12:05.26254-05
13	admin	0001_initial	2018-12-12 10:12:05.346274-05
14	admin	0002_logentry_remove_auto_add	2018-12-12 10:12:05.393625-05
15	admin	0003_logentry_add_action_flag_choices	2018-12-12 10:12:05.4928-05
16	core	0002_book_booknote	2018-12-12 10:12:05.671317-05
17	sessions	0001_initial	2018-12-12 10:12:05.698831-05
18	core	0003_auto_20181212_1523	2018-12-12 10:23:52.808494-05
19	core	0004_auto_20181212_1527	2018-12-12 10:27:15.660563-05
20	core	0005_convert_author_string_to_authors	2018-12-12 10:39:53.979956-05
21	core	0006_remove_book_author_string	2018-12-12 10:41:43.298815-05
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
562qwm3o71ytas3auzvb39pguxgruh46	ZWJkMTNkMDU1NDk3Yjc2NTQ0YTA2MzQ0MmIxODZlZThhNGRjMDhmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzQ4MWVkYjFlNzhiMDNjODM4Nzk4NGEyM2UyMTM2ZTFlZGJiYWE5In0=	2018-12-26 10:16:05.432606-05
z7cghz2fo2ekjzk25gjlqmrd8a6rhahl	ZWJkMTNkMDU1NDk3Yjc2NTQ0YTA2MzQ0MmIxODZlZThhNGRjMDhmNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4NzQ4MWVkYjFlNzhiMDNjODM4Nzk4NGEyM2UyMTM2ZTFlZGJiYWE5In0=	2018-12-26 10:40:13.410765-05
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: core_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_author_id_seq', 3, true);


--
-- Name: core_book_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_book_authors_id_seq', 3, true);


--
-- Name: core_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_book_id_seq', 2, true);


--
-- Name: core_booknote_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_booknote_id_seq', 1, false);


--
-- Name: core_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_user_groups_id_seq', 1, false);


--
-- Name: core_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_user_id_seq', 1, true);


--
-- Name: core_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.core_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 3, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: core_author core_author_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_author
    ADD CONSTRAINT core_author_pkey PRIMARY KEY (id);


--
-- Name: core_book_authors core_book_authors_book_id_author_id_e39270c2_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book_authors
    ADD CONSTRAINT core_book_authors_book_id_author_id_e39270c2_uniq UNIQUE (book_id, author_id);


--
-- Name: core_book_authors core_book_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book_authors
    ADD CONSTRAINT core_book_authors_pkey PRIMARY KEY (id);


--
-- Name: core_book core_book_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book
    ADD CONSTRAINT core_book_pkey PRIMARY KEY (id);


--
-- Name: core_booknote core_booknote_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_booknote
    ADD CONSTRAINT core_booknote_pkey PRIMARY KEY (id);


--
-- Name: core_user_groups core_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_pkey PRIMARY KEY (id);


--
-- Name: core_user_groups core_user_groups_user_id_group_id_c82fcad1_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq UNIQUE (user_id, group_id);


--
-- Name: core_user core_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions core_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: core_user_user_permissions core_user_user_permissions_user_id_permission_id_73ea0daa_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq UNIQUE (user_id, permission_id);


--
-- Name: core_user core_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: core_book_authors_author_id_de742869; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_book_authors_author_id_de742869 ON public.core_book_authors USING btree (author_id);


--
-- Name: core_book_authors_book_id_d8814d03; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_book_authors_book_id_d8814d03 ON public.core_book_authors USING btree (book_id);


--
-- Name: core_book_owner_id_44c99754; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_book_owner_id_44c99754 ON public.core_book USING btree (owner_id);


--
-- Name: core_booknote_book_id_6f5fc48e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_booknote_book_id_6f5fc48e ON public.core_booknote USING btree (book_id);


--
-- Name: core_user_groups_group_id_fe8c697f; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_user_groups_group_id_fe8c697f ON public.core_user_groups USING btree (group_id);


--
-- Name: core_user_groups_user_id_70b4d9b8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_user_groups_user_id_70b4d9b8 ON public.core_user_groups USING btree (user_id);


--
-- Name: core_user_user_permissions_permission_id_35ccf601; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_user_user_permissions_permission_id_35ccf601 ON public.core_user_user_permissions USING btree (permission_id);


--
-- Name: core_user_user_permissions_user_id_085123d3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_user_user_permissions_user_id_085123d3 ON public.core_user_user_permissions USING btree (user_id);


--
-- Name: core_user_username_36e4f7f7_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX core_user_username_36e4f7f7_like ON public.core_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_book_authors core_book_authors_author_id_de742869_fk_core_author_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book_authors
    ADD CONSTRAINT core_book_authors_author_id_de742869_fk_core_author_id FOREIGN KEY (author_id) REFERENCES public.core_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_book_authors core_book_authors_book_id_d8814d03_fk_core_book_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book_authors
    ADD CONSTRAINT core_book_authors_book_id_d8814d03_fk_core_book_id FOREIGN KEY (book_id) REFERENCES public.core_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_book core_book_owner_id_44c99754_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_book
    ADD CONSTRAINT core_book_owner_id_44c99754_fk_core_user_id FOREIGN KEY (owner_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_booknote core_booknote_book_id_6f5fc48e_fk_core_book_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_booknote
    ADD CONSTRAINT core_booknote_book_id_6f5fc48e_fk_core_book_id FOREIGN KEY (book_id) REFERENCES public.core_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups core_user_groups_group_id_fe8c697f_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_groups core_user_groups_user_id_70b4d9b8_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions core_user_user_permi_permission_id_35ccf601_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_user_user_permissions core_user_user_permissions_user_id_085123d3_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_core_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

