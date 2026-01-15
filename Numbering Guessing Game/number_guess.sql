--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: number_guess_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.number_guess_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.number_guess_user_id_seq OWNER TO freecodecamp;

--
-- Name: number_guess_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.number_guess_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.number_guess_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (34760, 160, 13);
INSERT INTO public.games VALUES (34761, 161, 589);
INSERT INTO public.games VALUES (34762, 161, 865);
INSERT INTO public.games VALUES (34763, 162, 655);
INSERT INTO public.games VALUES (34764, 162, 19);
INSERT INTO public.games VALUES (34765, 161, 382);
INSERT INTO public.games VALUES (34766, 161, 141);
INSERT INTO public.games VALUES (34767, 161, 278);
INSERT INTO public.games VALUES (34768, 163, 105);
INSERT INTO public.games VALUES (34769, 163, 468);
INSERT INTO public.games VALUES (34770, 164, 94);
INSERT INTO public.games VALUES (34771, 164, 188);
INSERT INTO public.games VALUES (34772, 163, 94);
INSERT INTO public.games VALUES (34773, 163, 158);
INSERT INTO public.games VALUES (34774, 163, 431);
INSERT INTO public.games VALUES (34775, 165, 630);
INSERT INTO public.games VALUES (34776, 165, 843);
INSERT INTO public.games VALUES (34777, 166, 456);
INSERT INTO public.games VALUES (34778, 166, 958);
INSERT INTO public.games VALUES (34779, 165, 857);
INSERT INTO public.games VALUES (34780, 165, 481);
INSERT INTO public.games VALUES (34781, 165, 129);
INSERT INTO public.games VALUES (34782, 167, 324);
INSERT INTO public.games VALUES (34783, 167, 911);
INSERT INTO public.games VALUES (34784, 168, 1001);
INSERT INTO public.games VALUES (34785, 168, 745);
INSERT INTO public.games VALUES (34786, 167, 721);
INSERT INTO public.games VALUES (34787, 167, 868);
INSERT INTO public.games VALUES (34788, 167, 909);
INSERT INTO public.games VALUES (34789, 169, 395);
INSERT INTO public.games VALUES (34790, 169, 464);
INSERT INTO public.games VALUES (34791, 170, 858);
INSERT INTO public.games VALUES (34792, 170, 594);
INSERT INTO public.games VALUES (34793, 169, 566);
INSERT INTO public.games VALUES (34794, 169, 593);
INSERT INTO public.games VALUES (34795, 169, 626);
INSERT INTO public.games VALUES (34796, 175, 591);
INSERT INTO public.games VALUES (34797, 175, 239);
INSERT INTO public.games VALUES (34798, 176, 896);
INSERT INTO public.games VALUES (34799, 176, 781);
INSERT INTO public.games VALUES (34800, 175, 157);
INSERT INTO public.games VALUES (34801, 175, 677);
INSERT INTO public.games VALUES (34802, 175, 148);
INSERT INTO public.games VALUES (34803, 177, 883);
INSERT INTO public.games VALUES (34804, 177, 318);
INSERT INTO public.games VALUES (34805, 178, 577);
INSERT INTO public.games VALUES (34806, 178, 587);
INSERT INTO public.games VALUES (34807, 177, 108);
INSERT INTO public.games VALUES (34808, 177, 521);
INSERT INTO public.games VALUES (34809, 177, 452);
INSERT INTO public.games VALUES (34810, 180, 999);
INSERT INTO public.games VALUES (34811, 180, 459);
INSERT INTO public.games VALUES (34812, 181, 317);
INSERT INTO public.games VALUES (34813, 181, 917);
INSERT INTO public.games VALUES (34814, 180, 930);
INSERT INTO public.games VALUES (34815, 180, 251);
INSERT INTO public.games VALUES (34816, 180, 27);
INSERT INTO public.games VALUES (34817, 182, 565);
INSERT INTO public.games VALUES (34818, 182, 303);
INSERT INTO public.games VALUES (34819, 183, 493);
INSERT INTO public.games VALUES (34820, 183, 471);
INSERT INTO public.games VALUES (34821, 182, 55);
INSERT INTO public.games VALUES (34822, 182, 577);
INSERT INTO public.games VALUES (34823, 182, 843);
INSERT INTO public.games VALUES (34824, 184, 146);
INSERT INTO public.games VALUES (34825, 184, 539);
INSERT INTO public.games VALUES (34826, 185, 625);
INSERT INTO public.games VALUES (34827, 185, 46);
INSERT INTO public.games VALUES (34828, 184, 325);
INSERT INTO public.games VALUES (34829, 184, 127);
INSERT INTO public.games VALUES (34830, 184, 289);
INSERT INTO public.games VALUES (34831, 186, 892);
INSERT INTO public.games VALUES (34832, 186, 340);
INSERT INTO public.games VALUES (34833, 187, 458);
INSERT INTO public.games VALUES (34834, 187, 634);
INSERT INTO public.games VALUES (34835, 186, 715);
INSERT INTO public.games VALUES (34836, 186, 64);
INSERT INTO public.games VALUES (34837, 186, 629);
INSERT INTO public.games VALUES (34838, 188, 21);
INSERT INTO public.games VALUES (34839, 188, 966);
INSERT INTO public.games VALUES (34840, 189, 604);
INSERT INTO public.games VALUES (34841, 189, 527);
INSERT INTO public.games VALUES (34842, 188, 858);
INSERT INTO public.games VALUES (34843, 188, 638);
INSERT INTO public.games VALUES (34844, 188, 279);
INSERT INTO public.games VALUES (34845, 190, 967);
INSERT INTO public.games VALUES (34846, 190, 814);
INSERT INTO public.games VALUES (34847, 191, 808);
INSERT INTO public.games VALUES (34848, 191, 119);
INSERT INTO public.games VALUES (34849, 190, 435);
INSERT INTO public.games VALUES (34850, 190, 452);
INSERT INTO public.games VALUES (34851, 190, 628);
INSERT INTO public.games VALUES (34852, 192, 705);
INSERT INTO public.games VALUES (34853, 192, 144);
INSERT INTO public.games VALUES (34854, 193, 186);
INSERT INTO public.games VALUES (34855, 193, 882);
INSERT INTO public.games VALUES (34856, 192, 545);
INSERT INTO public.games VALUES (34857, 192, 338);
INSERT INTO public.games VALUES (34858, 192, 596);
INSERT INTO public.games VALUES (34859, 194, 632);
INSERT INTO public.games VALUES (34860, 194, 403);
INSERT INTO public.games VALUES (34861, 195, 788);
INSERT INTO public.games VALUES (34862, 195, 253);
INSERT INTO public.games VALUES (34863, 194, 309);
INSERT INTO public.games VALUES (34864, 194, 332);
INSERT INTO public.games VALUES (34865, 194, 105);
INSERT INTO public.games VALUES (34866, 196, 432);
INSERT INTO public.games VALUES (34867, 196, 836);
INSERT INTO public.games VALUES (34868, 197, 656);
INSERT INTO public.games VALUES (34869, 197, 576);
INSERT INTO public.games VALUES (34870, 196, 581);
INSERT INTO public.games VALUES (34871, 196, 615);
INSERT INTO public.games VALUES (34872, 196, 745);
INSERT INTO public.games VALUES (34873, 198, 3);
INSERT INTO public.games VALUES (34874, 198, 150);
INSERT INTO public.games VALUES (34875, 199, 462);
INSERT INTO public.games VALUES (34876, 199, 780);
INSERT INTO public.games VALUES (34877, 198, 962);
INSERT INTO public.games VALUES (34878, 198, 16);
INSERT INTO public.games VALUES (34879, 198, 914);
INSERT INTO public.games VALUES (34880, 200, 225);
INSERT INTO public.games VALUES (34881, 200, 379);
INSERT INTO public.games VALUES (34882, 201, 474);
INSERT INTO public.games VALUES (34883, 201, 553);
INSERT INTO public.games VALUES (34884, 200, 538);
INSERT INTO public.games VALUES (34885, 200, 202);
INSERT INTO public.games VALUES (34886, 200, 619);
INSERT INTO public.games VALUES (34887, 202, 898);
INSERT INTO public.games VALUES (34888, 202, 213);
INSERT INTO public.games VALUES (34889, 203, 530);
INSERT INTO public.games VALUES (34890, 203, 694);
INSERT INTO public.games VALUES (34891, 202, 37);
INSERT INTO public.games VALUES (34892, 202, 161);
INSERT INTO public.games VALUES (34893, 202, 90);
INSERT INTO public.games VALUES (34894, 204, 989);
INSERT INTO public.games VALUES (34895, 204, 993);
INSERT INTO public.games VALUES (34896, 205, 462);
INSERT INTO public.games VALUES (34897, 205, 841);
INSERT INTO public.games VALUES (34898, 204, 650);
INSERT INTO public.games VALUES (34899, 204, 79);
INSERT INTO public.games VALUES (34900, 204, 70);
INSERT INTO public.games VALUES (34901, 206, 442);
INSERT INTO public.games VALUES (34902, 206, 544);
INSERT INTO public.games VALUES (34903, 207, 474);
INSERT INTO public.games VALUES (34904, 207, 506);
INSERT INTO public.games VALUES (34905, 206, 950);
INSERT INTO public.games VALUES (34906, 206, 970);
INSERT INTO public.games VALUES (34907, 206, 4);
INSERT INTO public.games VALUES (34908, 208, 924);
INSERT INTO public.games VALUES (34909, 208, 544);
INSERT INTO public.games VALUES (34910, 209, 640);
INSERT INTO public.games VALUES (34911, 209, 774);
INSERT INTO public.games VALUES (34912, 208, 247);
INSERT INTO public.games VALUES (34913, 208, 269);
INSERT INTO public.games VALUES (34914, 208, 371);
INSERT INTO public.games VALUES (34915, 210, 103);
INSERT INTO public.games VALUES (34916, 210, 471);
INSERT INTO public.games VALUES (34917, 211, 750);
INSERT INTO public.games VALUES (34918, 211, 818);
INSERT INTO public.games VALUES (34919, 210, 462);
INSERT INTO public.games VALUES (34920, 210, 28);
INSERT INTO public.games VALUES (34921, 210, 591);
INSERT INTO public.games VALUES (34922, 212, 809);
INSERT INTO public.games VALUES (34923, 212, 578);
INSERT INTO public.games VALUES (34924, 213, 117);
INSERT INTO public.games VALUES (34925, 213, 808);
INSERT INTO public.games VALUES (34926, 212, 5);
INSERT INTO public.games VALUES (34927, 212, 994);
INSERT INTO public.games VALUES (34928, 212, 967);
INSERT INTO public.games VALUES (34929, 214, 905);
INSERT INTO public.games VALUES (34930, 214, 837);
INSERT INTO public.games VALUES (34931, 215, 127);
INSERT INTO public.games VALUES (34932, 215, 791);
INSERT INTO public.games VALUES (34933, 214, 120);
INSERT INTO public.games VALUES (34934, 214, 605);
INSERT INTO public.games VALUES (34935, 214, 766);
INSERT INTO public.games VALUES (34936, 216, 485);
INSERT INTO public.games VALUES (34937, 216, 955);
INSERT INTO public.games VALUES (34938, 217, 716);
INSERT INTO public.games VALUES (34939, 217, 119);
INSERT INTO public.games VALUES (34940, 216, 905);
INSERT INTO public.games VALUES (34941, 216, 745);
INSERT INTO public.games VALUES (34942, 216, 929);
INSERT INTO public.games VALUES (34943, 218, 806);
INSERT INTO public.games VALUES (34944, 218, 711);
INSERT INTO public.games VALUES (34945, 219, 69);
INSERT INTO public.games VALUES (34946, 219, 882);
INSERT INTO public.games VALUES (34947, 218, 799);
INSERT INTO public.games VALUES (34948, 218, 360);
INSERT INTO public.games VALUES (34949, 218, 388);
INSERT INTO public.games VALUES (34950, 220, 136);
INSERT INTO public.games VALUES (34951, 220, 252);
INSERT INTO public.games VALUES (34952, 221, 606);
INSERT INTO public.games VALUES (34953, 221, 844);
INSERT INTO public.games VALUES (34954, 220, 940);
INSERT INTO public.games VALUES (34955, 220, 434);
INSERT INTO public.games VALUES (34956, 220, 87);
INSERT INTO public.games VALUES (34957, 222, 820);
INSERT INTO public.games VALUES (34958, 222, 594);
INSERT INTO public.games VALUES (34959, 223, 453);
INSERT INTO public.games VALUES (34960, 223, 407);
INSERT INTO public.games VALUES (34961, 222, 35);
INSERT INTO public.games VALUES (34962, 222, 461);
INSERT INTO public.games VALUES (34963, 222, 431);
INSERT INTO public.games VALUES (34964, 224, 910);
INSERT INTO public.games VALUES (34965, 224, 653);
INSERT INTO public.games VALUES (34966, 225, 807);
INSERT INTO public.games VALUES (34967, 225, 825);
INSERT INTO public.games VALUES (34968, 224, 757);
INSERT INTO public.games VALUES (34969, 224, 166);
INSERT INTO public.games VALUES (34970, 224, 944);
INSERT INTO public.games VALUES (34971, 226, 938);
INSERT INTO public.games VALUES (34972, 226, 511);
INSERT INTO public.games VALUES (34973, 227, 142);
INSERT INTO public.games VALUES (34974, 227, 920);
INSERT INTO public.games VALUES (34975, 226, 72);
INSERT INTO public.games VALUES (34976, 226, 963);
INSERT INTO public.games VALUES (34977, 226, 674);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (160, 'qwert');
INSERT INTO public.users VALUES (161, 'user_1768454717472');
INSERT INTO public.users VALUES (162, 'user_1768454717471');
INSERT INTO public.users VALUES (163, 'user_1768454769796');
INSERT INTO public.users VALUES (164, 'user_1768454769795');
INSERT INTO public.users VALUES (165, 'user_1768454843878');
INSERT INTO public.users VALUES (166, 'user_1768454843877');
INSERT INTO public.users VALUES (167, 'user_1768454891450');
INSERT INTO public.users VALUES (168, 'user_1768454891449');
INSERT INTO public.users VALUES (169, 'user_1768454913415');
INSERT INTO public.users VALUES (170, 'user_1768454913414');
INSERT INTO public.users VALUES (171, 'user_1768454978757');
INSERT INTO public.users VALUES (172, 'user_1768454978756');
INSERT INTO public.users VALUES (173, 'user_1768454984865');
INSERT INTO public.users VALUES (174, 'user_1768454984864');
INSERT INTO public.users VALUES (175, 'user_1768454995516');
INSERT INTO public.users VALUES (176, 'user_1768454995515');
INSERT INTO public.users VALUES (177, 'user_1768455033841');
INSERT INTO public.users VALUES (178, 'user_1768455033840');
INSERT INTO public.users VALUES (179, 'qw');
INSERT INTO public.users VALUES (180, 'user_1768455197924');
INSERT INTO public.users VALUES (181, 'user_1768455197923');
INSERT INTO public.users VALUES (182, 'user_1768455310106');
INSERT INTO public.users VALUES (183, 'user_1768455310105');
INSERT INTO public.users VALUES (184, 'user_1768455321630');
INSERT INTO public.users VALUES (185, 'user_1768455321629');
INSERT INTO public.users VALUES (186, 'user_1768455405783');
INSERT INTO public.users VALUES (187, 'user_1768455405782');
INSERT INTO public.users VALUES (188, 'user_1768455531823');
INSERT INTO public.users VALUES (189, 'user_1768455531822');
INSERT INTO public.users VALUES (190, 'user_1768455709455');
INSERT INTO public.users VALUES (191, 'user_1768455709454');
INSERT INTO public.users VALUES (192, 'user_1768455793458');
INSERT INTO public.users VALUES (193, 'user_1768455793457');
INSERT INTO public.users VALUES (194, 'user_1768455875857');
INSERT INTO public.users VALUES (195, 'user_1768455875856');
INSERT INTO public.users VALUES (196, 'user_1768455895876');
INSERT INTO public.users VALUES (197, 'user_1768455895875');
INSERT INTO public.users VALUES (198, 'user_1768455924688');
INSERT INTO public.users VALUES (199, 'user_1768455924687');
INSERT INTO public.users VALUES (200, 'user_1768455932606');
INSERT INTO public.users VALUES (201, 'user_1768455932605');
INSERT INTO public.users VALUES (202, 'user_1768455969358');
INSERT INTO public.users VALUES (203, 'user_1768455969357');
INSERT INTO public.users VALUES (204, 'user_1768456046222');
INSERT INTO public.users VALUES (205, 'user_1768456046221');
INSERT INTO public.users VALUES (206, 'user_1768456052895');
INSERT INTO public.users VALUES (207, 'user_1768456052894');
INSERT INTO public.users VALUES (208, 'user_1768456065549');
INSERT INTO public.users VALUES (209, 'user_1768456065548');
INSERT INTO public.users VALUES (210, 'user_1768456072711');
INSERT INTO public.users VALUES (211, 'user_1768456072710');
INSERT INTO public.users VALUES (212, 'user_1768456173420');
INSERT INTO public.users VALUES (213, 'user_1768456173419');
INSERT INTO public.users VALUES (214, 'user_1768456198926');
INSERT INTO public.users VALUES (215, 'user_1768456198925');
INSERT INTO public.users VALUES (216, 'user_1768456217251');
INSERT INTO public.users VALUES (217, 'user_1768456217250');
INSERT INTO public.users VALUES (218, 'user_1768456221732');
INSERT INTO public.users VALUES (219, 'user_1768456221731');
INSERT INTO public.users VALUES (220, 'user_1768456243678');
INSERT INTO public.users VALUES (221, 'user_1768456243677');
INSERT INTO public.users VALUES (222, 'user_1768456300180');
INSERT INTO public.users VALUES (223, 'user_1768456300179');
INSERT INTO public.users VALUES (224, 'user_1768456365562');
INSERT INTO public.users VALUES (225, 'user_1768456365561');
INSERT INTO public.users VALUES (226, 'user_1768456422948');
INSERT INTO public.users VALUES (227, 'user_1768456422947');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 34977, true);


--
-- Name: number_guess_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.number_guess_user_id_seq', 227, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users number_guess_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT number_guess_pkey PRIMARY KEY (user_id);


--
-- Name: users number_guess_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT number_guess_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

