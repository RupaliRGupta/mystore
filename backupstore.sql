PGDMP     #                    x            store    13.1    13.1 �    u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            x           1262    16580    store    DATABASE     a   CREATE DATABASE store WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_India.1252';
    DROP DATABASE store;
                postgres    false            �            1259    16612 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16610    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    207            y           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    206            �            1259    16622    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16620    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    209            z           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    208            �            1259    16604    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16602    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    205            {           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    204            �            1259    16630 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16640    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16638    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    213            |           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    212            �            1259    16628    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    211            }           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    210            �            1259    16648    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16646 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    215            ~           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    214            �            1259    16708    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16706    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    217                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    216            �            1259    16594    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16592    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    203            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    202            �            1259    16583    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16581    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    201            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    200            �            1259    16747    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    24578 	   tbl_order    TABLE     �   CREATE TABLE public.tbl_order (
    id integer NOT NULL,
    emailfk character varying(254) NOT NULL,
    date character varying(30) NOT NULL,
    amount double precision NOT NULL
);
    DROP TABLE public.tbl_order;
       public         heap    postgres    false            �            1259    24576    tb_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tb_order_id_seq;
       public          postgres    false    226            �           0    0    tb_order_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE public.tb_order_id_seq OWNED BY public.tbl_order.id;
          public          postgres    false    225            �            1259    32771 	   tbl_admin    TABLE     �   CREATE TABLE public.tbl_admin (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    password character varying(30) NOT NULL,
    role character varying(7) NOT NULL
);
    DROP TABLE public.tbl_admin;
       public         heap    postgres    false            �            1259    32769    tbl_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_admin_id_seq;
       public          postgres    false    228            �           0    0    tbl_admin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_admin_id_seq OWNED BY public.tbl_admin.id;
          public          postgres    false    227            �            1259    16778    tbl_cart    TABLE     �   CREATE TABLE public.tbl_cart (
    id integer NOT NULL,
    productquantity integer NOT NULL,
    productfk integer NOT NULL,
    emailfk character varying(254) NOT NULL
);
    DROP TABLE public.tbl_cart;
       public         heap    postgres    false            �            1259    16776    tbl_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_cart_id_seq;
       public          postgres    false    224            �           0    0    tbl_cart_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_cart_id_seq OWNED BY public.tbl_cart.id;
          public          postgres    false    223            �            1259    16759    tbl_customer    TABLE     j  CREATE TABLE public.tbl_customer (
    id integer NOT NULL,
    fname character varying(30) NOT NULL,
    addresss character varying(70) NOT NULL,
    email character varying(30) NOT NULL,
    contact character varying(30) NOT NULL,
    lname character varying(30) NOT NULL,
    password character varying(30) NOT NULL,
    role character varying(7) NOT NULL
);
     DROP TABLE public.tbl_customer;
       public         heap    postgres    false            �            1259    16757    tbl_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_customer_id_seq;
       public          postgres    false    222            �           0    0    tbl_customer_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_customer_id_seq OWNED BY public.tbl_customer.id;
          public          postgres    false    221            �            1259    16741    tbl_product    TABLE     3  CREATE TABLE public.tbl_product (
    id integer NOT NULL,
    img character varying(100) NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(300) NOT NULL,
    price double precision NOT NULL,
    discount double precision NOT NULL,
    totalp double precision NOT NULL
);
    DROP TABLE public.tbl_product;
       public         heap    postgres    false            �            1259    16739    tbl_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_product_id_seq;
       public          postgres    false    219            �           0    0    tbl_product_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_product_id_seq OWNED BY public.tbl_product.id;
          public          postgres    false    218            �            1259    32779 	   tbl_staff    TABLE     �   CREATE TABLE public.tbl_staff (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    email character varying(30) NOT NULL,
    password character varying(30) NOT NULL,
    role character varying(7) NOT NULL
);
    DROP TABLE public.tbl_staff;
       public         heap    postgres    false            �            1259    32777    tbl_staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_staff_id_seq;
       public          postgres    false    230            �           0    0    tbl_staff_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_staff_id_seq OWNED BY public.tbl_staff.id;
          public          postgres    false    229            �           2604    16615    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            �           2604    16625    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �           2604    16607    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �           2604    16633    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �           2604    16643    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            �           2604    16651    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16711    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    16597    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            ~           2604    16586    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            �           2604    32774    tbl_admin id    DEFAULT     l   ALTER TABLE ONLY public.tbl_admin ALTER COLUMN id SET DEFAULT nextval('public.tbl_admin_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_admin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16781    tbl_cart id    DEFAULT     j   ALTER TABLE ONLY public.tbl_cart ALTER COLUMN id SET DEFAULT nextval('public.tbl_cart_id_seq'::regclass);
 :   ALTER TABLE public.tbl_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16762    tbl_customer id    DEFAULT     r   ALTER TABLE ONLY public.tbl_customer ALTER COLUMN id SET DEFAULT nextval('public.tbl_customer_id_seq'::regclass);
 >   ALTER TABLE public.tbl_customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    24581    tbl_order id    DEFAULT     k   ALTER TABLE ONLY public.tbl_order ALTER COLUMN id SET DEFAULT nextval('public.tb_order_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    16744    tbl_product id    DEFAULT     p   ALTER TABLE ONLY public.tbl_product ALTER COLUMN id SET DEFAULT nextval('public.tbl_product_id_seq'::regclass);
 =   ALTER TABLE public.tbl_product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    32782    tbl_staff id    DEFAULT     l   ALTER TABLE ONLY public.tbl_staff ALTER COLUMN id SET DEFAULT nextval('public.tbl_staff_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            [          0    16612 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    207   ��       ]          0    16622    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    209   ��       Y          0    16604    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    205   ޲       _          0    16630 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    211   Ҵ       a          0    16640    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    213   �       c          0    16648    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    215   �       e          0    16708    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    217   )�       W          0    16594    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    203   F�       U          0    16583    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    201   �       h          0    16747    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ��       p          0    32771 	   tbl_admin 
   TABLE DATA           A   COPY public.tbl_admin (id, username, password, role) FROM stdin;
    public          postgres    false    228   j�       l          0    16778    tbl_cart 
   TABLE DATA           K   COPY public.tbl_cart (id, productquantity, productfk, emailfk) FROM stdin;
    public          postgres    false    224   ��       j          0    16759    tbl_customer 
   TABLE DATA           b   COPY public.tbl_customer (id, fname, addresss, email, contact, lname, password, role) FROM stdin;
    public          postgres    false    222   �       n          0    24578 	   tbl_order 
   TABLE DATA           >   COPY public.tbl_order (id, emailfk, date, amount) FROM stdin;
    public          postgres    false    226   Q�       g          0    16741    tbl_product 
   TABLE DATA           Z   COPY public.tbl_product (id, img, name, description, price, discount, totalp) FROM stdin;
    public          postgres    false    219   !�       r          0    32779 	   tbl_staff 
   TABLE DATA           D   COPY public.tbl_staff (id, name, email, password, role) FROM stdin;
    public          postgres    false    230   �       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    206            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    208            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);
          public          postgres    false    204            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    212            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    210            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    214            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    216            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);
          public          postgres    false    202            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 33, true);
          public          postgres    false    200            �           0    0    tb_order_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tb_order_id_seq', 65, true);
          public          postgres    false    225            �           0    0    tbl_admin_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbl_admin_id_seq', 1, false);
          public          postgres    false    227            �           0    0    tbl_cart_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbl_cart_id_seq', 67, true);
          public          postgres    false    223            �           0    0    tbl_customer_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_customer_id_seq', 4, true);
          public          postgres    false    221            �           0    0    tbl_product_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_product_id_seq', 21, true);
          public          postgres    false    218            �           0    0    tbl_staff_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbl_staff_id_seq', 1, true);
          public          postgres    false    229            �           2606    16737    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    207            �           2606    16674 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    209    209            �           2606    16627 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    209            �           2606    16617    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    207            �           2606    16660 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    205    205            �           2606    16609 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    205            �           2606    16645 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    213            �           2606    16689 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    213    213            �           2606    16635    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    211            �           2606    16653 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    215            �           2606    16703 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    215    215            �           2606    16731     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    211            �           2606    16717 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    217            �           2606    16601 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    203    203            �           2606    16599 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    203            �           2606    16591 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    201            �           2606    16754 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           2606    24583    tbl_order tb_order_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.tbl_order
    ADD CONSTRAINT tb_order_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.tbl_order DROP CONSTRAINT tb_order_pkey;
       public            postgres    false    226            �           2606    32776    tbl_admin tbl_admin_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_admin
    ADD CONSTRAINT tbl_admin_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_admin DROP CONSTRAINT tbl_admin_pkey;
       public            postgres    false    228            �           2606    16783    tbl_cart tbl_cart_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_cart
    ADD CONSTRAINT tbl_cart_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_cart DROP CONSTRAINT tbl_cart_pkey;
       public            postgres    false    224            �           2606    16764    tbl_customer tbl_customer_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_customer
    ADD CONSTRAINT tbl_customer_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_customer DROP CONSTRAINT tbl_customer_pkey;
       public            postgres    false    222            �           2606    16746    tbl_product tbl_product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_product
    ADD CONSTRAINT tbl_product_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_product DROP CONSTRAINT tbl_product_pkey;
       public            postgres    false    219            �           2606    32784    tbl_staff tbl_staff_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_staff
    ADD CONSTRAINT tbl_staff_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_staff DROP CONSTRAINT tbl_staff_pkey;
       public            postgres    false    230            �           1259    16738    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    207            �           1259    16675 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    209            �           1259    16676 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    209            �           1259    16661 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    205            �           1259    16691 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    213            �           1259    16690 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    213            �           1259    16705 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    215            �           1259    16704 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    215            �           1259    16732     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    211            �           1259    16728 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    217            �           1259    16729 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    217            �           1259    16756 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            �           1259    16755 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            �           2606    16668 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2968    205    209            �           2606    16663 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2973    207            �           2606    16654 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    203    2963            �           2606    16683 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    207    213    2973            �           2606    16678 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2981    211    213            �           2606    16697 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    205    215    2968            �           2606    16692 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2981    215    211            �           2606    16718 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    217    2963    203            �           2606    16723 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    217    2981    211            [      x������ � �      ]      x������ � �      Y   �  x�e��n�0�����	�r��z�1iB�vH�T6�����]�|n>��P��v*ھ/�^�i	/S�m���ai+@��v�;Ea����=ܢA,1� �;�?��������8���'S��I�)��{�~�%A�^XQ��(�k���>M��ۖ)�ɋ�R:E�t�X%`A�u2XgL�O[6�|ڥ�8��	��8�ٴG��9���i��Z������J{Ŗ)��$�����x�|u`͌]Ŗ�zv�VO L+[�yg�<���1�K��u��*!b҃��n)F���9�cJ����q�U����#�ꐳ��8���t����/8TD�V�xk���{TF�z�<����	�s��6���l�T�͙U�Rl4fV�L�h�'·>=�v��P"P.cIU�*oN�oD�2�%�ik�q�"��(�R��d,q��'c��f0K��8/��I��@�@Ō����U3<^!�`�<�����p�c      _      x������ � �      a      x������ � �      c      x������ � �      e      x������ � �      W   �   x�M�K�0�p��I�w�ƲI)6�En��NԮ��t�B��<R2Y�W��$N�'�43
��׶%�xN��ْI���Rm���,�7����_�8�l��-{�wR+�l�;Kh�v݁��Mקv��t���'D\�4X�      U   �  x����n�0�ӧ�(ό�ϲ�e%4E��r�o�6$$ڬ�#�|�3cGd��<�a�j�> ��s9���^����X;490���`^0���\!Yia���p���3��ـH�	�W�)��}����������]���$��1�ƈ:Cٜ�[N��ޔ���]����Rfᵚ����s��]�I/��Pt�-����TQ��:|��8��vI��PB�E���GQ��zJa 1Ym
�S�c*�i�}w�RqBX�Q�~HΗqgc���6�b���ퟱ�s'�}��	�֚�R�G��c����/���|]�}8}��A�'-0����-[M8�x!��e������\H������0zjB���c�)|�5�_w͸cNd$���:���xB�>��(D��=��/.K<�� ��z6;����E���18�j�!lu�_�ͱ�|�0����ᜌd�)bK��}���֧�q N�h�uV� ��$�҃؅ �l=Җ!�e��3=���!t?f'�19T9���e��"�,�@�^��Ȥ�A	�ա�h��	":d'8W�%����aab�"�c�P�Z�i�Ѭ�@��!�Ԃ���_vX����$n �R:�؆hi�a30�a�|�=#Aʱ��i;�=��ڴa�Tw��S�d.�e3C0����}�LJ'Lnla�n�V�u���?zE����J�<������)�C|      h   �   x��I�0  ��~ ҖH�+�C!�4�b%�֖E%����dfD�j-���|���i}�z��p�����LZ�*'��Ib(��0�������_���TkF6'������N� y������#?��PvEYbdCd#�CA�a=gk���0 W ��E2F      p   "   x�3�LL���sH�M���K�υ�!$W� �n
�      l   8   x�3��4��,*-H���+�K/-(It�/-�����K���2��4�44��$F��� d�3      j   ]   x�3��ML,�L��M�,K��s�s3s���s9--��ML��9�KJ!�K�S��L8�9��F�cidhniab�S V����� �i#�      n   �   x��ҽ� ��پ���Ra�An!7s�����nh�
��A��e[��v\e���j}�g�B���H� 9�a�Rڼ�e��&�!�IV��H���^I"y�d'�~���0�'�h�m���5��_ۗ5�{J�x)sNm�h�F��'oO4ݞh�=�u���[W4ݞغ��ޛ[W���mZ���^����mV      g   �  x��V�r�6>CO��N2�(� (Q3=�Ǒ�Z�I�;�M�&������'���{�O��\7��X��߷��O�1xPŐ9�e�J=�:-2��� )��AV��0VưT�ʃR��:-U��O��\�����1.�#��&TEarx5��`����)�Ҁp\X�>��CR];�:��c����t��(��>�Z.p���:R&�h��^��ϭ�ed�x����\E����h�~��x9��T}���ܥt���<E�>�	H�.g�A���Z���љDG�+�R��n�Ch�O`� /��$g�����>a��yD�q�іo�u��&|����g��G5�u��0�|0�.=�r6d����݀��sK����fw=|�Z`������:��D`�c�]⎥'!z��09�`��6I���u
?��~�K�tJm�"8F�\�!R;t����v����������O�w��Y�QQ�{NGb �e�&	G�h��-*!Dk��ʔ�Θ�_M<A��~��7��cvB��V��("|�#�'���x�FV517��T��hT)`Z�
��g��ɭ��a:�x�=w� �f��<����ۦ;�+X_�sv��'⎄�H%qň�-���ʒꚵ����������\��Rh��*�p�$L�s_��^��AYwVu`g+,
X��c���$�������Y�h=�^k�����9j_	��{�{7J��e���&4|k�8	����a�2�g������yTw�Ɂ�����[�o�ٰI=�;+���i��HI��D}�?�d�>�*�]�+${�X���k�����$��JΙ��8�4}N��H�ּKm���r��B�P����?��qӒ�;� 6',����By�D�+"m��P$�>�a}���*�K����u��,��砽����{����8��0ǘ&����$%�4��wč�<��	�.�� �� ��3�	�J#��v��^��V/�Z�L#�����f�L�,��Xa�K���S� Lb[���}���u�F��F�q�_�7�
Z9�t��;�uV`K��ĺ1e��;c�� �c�B`���U;3هY|6�Uʩ;`}cG��gR���8�bF�(�Q�>��l�X���W�Gq1T���n�R���x�4���U�W�ub,,�}(��v5��t��n�l�F����lng㝍w6��Dg��Mv6��y�mT�����Z}z�:�^�����      r   $   x�3�LL"��������\��$1-�+F��� �n	     