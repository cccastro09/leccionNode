PGDMP         0                w            leccion #   10.6 (Ubuntu 10.6-0ubuntu0.18.04.1) #   10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    24635    leccion    DATABASE     y   CREATE DATABASE leccion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_EC.UTF-8' LC_CTYPE = 'es_EC.UTF-8';
    DROP DATABASE leccion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24638 	   productos    TABLE     �   CREATE TABLE public.productos (
    id integer NOT NULL,
    tipo character varying,
    nombre character varying,
    fechacaducidad date,
    fechaproduccion date,
    precio double precision
);
    DROP TABLE public.productos;
       public         postgres    false    3            �            1259    24636    productos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.productos_id_seq;
       public       postgres    false    197    3            �           0    0    productos_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;
            public       postgres    false    196                       2604    24641    productos id    DEFAULT     l   ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);
 ;   ALTER TABLE public.productos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �          0    24638 	   productos 
   TABLE DATA               ^   COPY public.productos (id, tipo, nombre, fechacaducidad, fechaproduccion, precio) FROM stdin;
    public       postgres    false    197   �       �           0    0    productos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.productos_id_seq', 2, true);
            public       postgres    false    196                       2606    24646    productos id_producto_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.productos
    ADD CONSTRAINT id_producto_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.productos DROP CONSTRAINT id_producto_pk;
       public         postgres    false    197            �   3   x�3�tO��I-I��/J��4202�50�522-u����@ϔ+F��� V	�     