toc.dat                                                                                             0000600 0004000 0002000 00000007161 14766301031 0014445 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP               	            }            postgres    15.1    15.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                     0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                    1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE postgres;
                postgres    false                    0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3330                     2615    16398    store    SCHEMA        CREATE SCHEMA store;
    DROP SCHEMA store;
                postgres    false                    0    0    SCHEMA store    COMMENT     B   COMMENT ON SCHEMA store IS 'schema for managing data in a store';
                   postgres    false    7         �            1259    16405    user    TABLE       CREATE TABLE store."user" (
    code_user integer NOT NULL,
    name_user character varying(30),
    password_user character varying(20),
    create_date timestamp without time zone,
    status boolean,
    CONSTRAINT nn_password CHECK ((password_user IS NOT NULL))
);
    DROP TABLE store."user";
       store         heap    postgres    false    7         �            1259    16404    user_code_user_seq    SEQUENCE     �   CREATE SEQUENCE store.user_code_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE store.user_code_user_seq;
       store          postgres    false    217    7                    0    0    user_code_user_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE store.user_code_user_seq OWNED BY store."user".code_user;
          store          postgres    false    216         g           2604    16408    user code_user    DEFAULT     p   ALTER TABLE ONLY store."user" ALTER COLUMN code_user SET DEFAULT nextval('store.user_code_user_seq'::regclass);
 >   ALTER TABLE store."user" ALTER COLUMN code_user DROP DEFAULT;
       store          postgres    false    216    217    217         �          0    16405    user 
   TABLE DATA           Y   COPY store."user" (code_user, name_user, password_user, create_date, status) FROM stdin;
    store          postgres    false    217       3324.dat            0    0    user_code_user_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('store.user_code_user_seq', 7, true);
          store          postgres    false    216         j           2606    16411    user pk_code_user 
   CONSTRAINT     W   ALTER TABLE ONLY store."user"
    ADD CONSTRAINT pk_code_user PRIMARY KEY (code_user);
 <   ALTER TABLE ONLY store."user" DROP CONSTRAINT pk_code_user;
       store            postgres    false    217         l           2606    16413    user uc_name_user 
   CONSTRAINT     R   ALTER TABLE ONLY store."user"
    ADD CONSTRAINT uc_name_user UNIQUE (name_user);
 <   ALTER TABLE ONLY store."user" DROP CONSTRAINT uc_name_user;
       store            postgres    false    217                                                                                                                                                                                                                                                                                                                                                                                                                       3324.dat                                                                                            0000600 0004000 0002000 00000000415 14766301031 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	FELIPE	12345	2025-03-18 09:00:00	t
2	FELIPEPINTO	12345	2025-03-18 09:00:00	t
4	JEFFERSON	12223	2024-06-18 00:00:00	t
5	ANDREY	12223	2024-06-18 00:00:00	t
6	BAYRON	12223	2024-06-18 00:00:00	t
7	PINTO	12223	2024-06-18 00:00:00	t
3	JUAN	12223	2024-06-18 00:00:00	f
\.


                                                                                                                                                                                                                                                   restore.sql                                                                                         0000600 0004000 0002000 00000006742 14766301031 0015376 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: store; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA store;


ALTER SCHEMA store OWNER TO postgres;

--
-- Name: SCHEMA store; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA store IS 'schema for managing data in a store';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: user; Type: TABLE; Schema: store; Owner: postgres
--

CREATE TABLE store."user" (
    code_user integer NOT NULL,
    name_user character varying(30),
    password_user character varying(20),
    create_date timestamp without time zone,
    status boolean,
    CONSTRAINT nn_password CHECK ((password_user IS NOT NULL))
);


ALTER TABLE store."user" OWNER TO postgres;

--
-- Name: user_code_user_seq; Type: SEQUENCE; Schema: store; Owner: postgres
--

CREATE SEQUENCE store.user_code_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE store.user_code_user_seq OWNER TO postgres;

--
-- Name: user_code_user_seq; Type: SEQUENCE OWNED BY; Schema: store; Owner: postgres
--

ALTER SEQUENCE store.user_code_user_seq OWNED BY store."user".code_user;


--
-- Name: user code_user; Type: DEFAULT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store."user" ALTER COLUMN code_user SET DEFAULT nextval('store.user_code_user_seq'::regclass);


--
-- Data for Name: user; Type: TABLE DATA; Schema: store; Owner: postgres
--

COPY store."user" (code_user, name_user, password_user, create_date, status) FROM stdin;
\.
COPY store."user" (code_user, name_user, password_user, create_date, status) FROM '$$PATH$$/3324.dat';

--
-- Name: user_code_user_seq; Type: SEQUENCE SET; Schema: store; Owner: postgres
--

SELECT pg_catalog.setval('store.user_code_user_seq', 7, true);


--
-- Name: user pk_code_user; Type: CONSTRAINT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store."user"
    ADD CONSTRAINT pk_code_user PRIMARY KEY (code_user);


--
-- Name: user uc_name_user; Type: CONSTRAINT; Schema: store; Owner: postgres
--

ALTER TABLE ONLY store."user"
    ADD CONSTRAINT uc_name_user UNIQUE (name_user);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              