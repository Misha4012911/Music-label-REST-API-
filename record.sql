PGDMP     $                    {            RecordStudio    14.3    14.3     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    58049    RecordStudio    DATABASE     k   CREATE DATABASE "RecordStudio" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "RecordStudio";
                postgres    false            �            1259    58074    Date    TABLE     L   CREATE TABLE public."Date" (
    id integer NOT NULL,
    free_date date
);
    DROP TABLE public."Date";
       public         heap    postgres    false            �            1259    58073    Date_id_seq    SEQUENCE     �   ALTER TABLE public."Date" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Date_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    58059    Reservation    TABLE     �   CREATE TABLE public."Reservation" (
    id integer NOT NULL,
    user_id integer NOT NULL,
    comments text NOT NULL,
    check_sum numeric,
    status_id character varying DEFAULT 1 NOT NULL,
    date date NOT NULL
);
 !   DROP TABLE public."Reservation";
       public         heap    postgres    false            �            1259    58058    Reservation_id_seq    SEQUENCE     �   ALTER TABLE public."Reservation" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Reservation_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    212            �            1259    58082    Status    TABLE     _   CREATE TABLE public."Status" (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public."Status";
       public         heap    postgres    false            �            1259    58081    Status_id_seq    SEQUENCE     �   ALTER TABLE public."Status" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Status_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    58051    User    TABLE     �   CREATE TABLE public."User" (
    id integer NOT NULL,
    login character varying(15) NOT NULL,
    phone numeric,
    email character varying(32),
    telegram character varying(20),
    hash_password character varying NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    58050    Users_id_seq    SEQUENCE     �   ALTER TABLE public."User" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Users_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210                      0    58074    Date 
   TABLE DATA           /   COPY public."Date" (id, free_date) FROM stdin;
    public          postgres    false    214   �                 0    58059    Reservation 
   TABLE DATA           Z   COPY public."Reservation" (id, user_id, comments, check_sum, status_id, date) FROM stdin;
    public          postgres    false    212   �                 0    58082    Status 
   TABLE DATA           ,   COPY public."Status" (id, name) FROM stdin;
    public          postgres    false    216                     0    58051    User 
   TABLE DATA           R   COPY public."User" (id, login, phone, email, telegram, hash_password) FROM stdin;
    public          postgres    false    210   z                  0    0    Date_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."Date_id_seq"', 1, true);
          public          postgres    false    213                       0    0    Reservation_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Reservation_id_seq"', 1, false);
          public          postgres    false    211                       0    0    Status_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Status_id_seq"', 4, true);
          public          postgres    false    215                       0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 1, false);
          public          postgres    false    209            q           2606    58080    Date Date_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."Date"
    ADD CONSTRAINT "Date_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."Date" DROP CONSTRAINT "Date_pkey";
       public            postgres    false    214            o           2606    58066    Reservation Reservation_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Reservation"
    ADD CONSTRAINT "Reservation_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."Reservation" DROP CONSTRAINT "Reservation_pkey";
       public            postgres    false    212            s           2606    58088    Status Status_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT "Status_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Status" DROP CONSTRAINT "Status_pkey";
       public            postgres    false    216            m           2606    58057    User Users_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public."User" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    210                  x�3�4202�54�5������ 1�            x������ � �         Y   x�ʽ	�0��:�N �3���m�!
A���~��8�{��p�t&xj�YQz�ސ��W�/��$��t���I�:K�L���3�9�             x������ � �     