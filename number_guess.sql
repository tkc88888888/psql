--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    guesses integer NOT NULL
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
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 29, 0);
INSERT INTO public.games VALUES (2, 30, 203);
INSERT INTO public.games VALUES (3, 31, 436);
INSERT INTO public.games VALUES (4, 30, 20);
INSERT INTO public.games VALUES (5, 30, 847);
INSERT INTO public.games VALUES (6, 30, 81);
INSERT INTO public.games VALUES (7, 32, 289);
INSERT INTO public.games VALUES (8, 33, 439);
INSERT INTO public.games VALUES (9, 32, 336);
INSERT INTO public.games VALUES (10, 32, 236);
INSERT INTO public.games VALUES (11, 32, 357);
INSERT INTO public.games VALUES (12, 34, 487);
INSERT INTO public.games VALUES (13, 35, 74);
INSERT INTO public.games VALUES (14, 34, 241);
INSERT INTO public.games VALUES (15, 34, 587);
INSERT INTO public.games VALUES (16, 34, 587);
INSERT INTO public.games VALUES (17, 36, 893);
INSERT INTO public.games VALUES (18, 37, 757);
INSERT INTO public.games VALUES (19, 36, 1000);
INSERT INTO public.games VALUES (20, 36, 905);
INSERT INTO public.games VALUES (21, 36, 559);
INSERT INTO public.games VALUES (22, 38, 724);
INSERT INTO public.games VALUES (23, 39, 102);
INSERT INTO public.games VALUES (24, 38, 980);
INSERT INTO public.games VALUES (25, 38, 276);
INSERT INTO public.games VALUES (26, 38, 244);
INSERT INTO public.games VALUES (27, 40, 521);
INSERT INTO public.games VALUES (28, 41, 244);
INSERT INTO public.games VALUES (29, 40, 266);
INSERT INTO public.games VALUES (30, 40, 312);
INSERT INTO public.games VALUES (31, 40, 532);
INSERT INTO public.games VALUES (32, 42, 696);
INSERT INTO public.games VALUES (33, 43, 937);
INSERT INTO public.games VALUES (34, 42, 240);
INSERT INTO public.games VALUES (35, 42, 664);
INSERT INTO public.games VALUES (36, 42, 440);
INSERT INTO public.games VALUES (37, 44, 572);
INSERT INTO public.games VALUES (38, 45, 466);
INSERT INTO public.games VALUES (39, 44, 771);
INSERT INTO public.games VALUES (40, 44, 543);
INSERT INTO public.games VALUES (41, 44, 464);
INSERT INTO public.games VALUES (42, 46, 418);
INSERT INTO public.games VALUES (43, 47, 440);
INSERT INTO public.games VALUES (44, 46, 2);
INSERT INTO public.games VALUES (45, 46, 488);
INSERT INTO public.games VALUES (46, 46, 619);
INSERT INTO public.games VALUES (47, 48, 63);
INSERT INTO public.games VALUES (48, 49, 302);
INSERT INTO public.games VALUES (49, 48, 73);
INSERT INTO public.games VALUES (50, 48, 5);
INSERT INTO public.games VALUES (51, 48, 598);
INSERT INTO public.games VALUES (52, 50, 709);
INSERT INTO public.games VALUES (53, 51, 434);
INSERT INTO public.games VALUES (54, 50, 115);
INSERT INTO public.games VALUES (55, 50, 30);
INSERT INTO public.games VALUES (56, 50, 233);
INSERT INTO public.games VALUES (57, 58, 920);
INSERT INTO public.games VALUES (58, 59, 675);
INSERT INTO public.games VALUES (59, 60, 837);
INSERT INTO public.games VALUES (60, 59, 161);
INSERT INTO public.games VALUES (61, 59, 589);
INSERT INTO public.games VALUES (62, 59, 911);
INSERT INTO public.games VALUES (63, 61, 87);
INSERT INTO public.games VALUES (64, 62, 765);
INSERT INTO public.games VALUES (65, 61, 639);
INSERT INTO public.games VALUES (66, 61, 124);
INSERT INTO public.games VALUES (67, 61, 237);
INSERT INTO public.games VALUES (68, 63, 518);
INSERT INTO public.games VALUES (69, 64, 365);
INSERT INTO public.games VALUES (70, 63, 406);
INSERT INTO public.games VALUES (71, 63, 15);
INSERT INTO public.games VALUES (72, 63, 220);
INSERT INTO public.games VALUES (73, 66, 53);
INSERT INTO public.games VALUES (74, 67, 295);
INSERT INTO public.games VALUES (75, 66, 237);
INSERT INTO public.games VALUES (76, 66, 479);
INSERT INTO public.games VALUES (77, 66, 816);
INSERT INTO public.games VALUES (78, 68, 509);
INSERT INTO public.games VALUES (79, 69, 745);
INSERT INTO public.games VALUES (80, 70, 98);
INSERT INTO public.games VALUES (81, 71, 327);
INSERT INTO public.games VALUES (82, 70, 318);
INSERT INTO public.games VALUES (83, 70, 370);
INSERT INTO public.games VALUES (84, 70, 439);
INSERT INTO public.games VALUES (85, 72, 225);
INSERT INTO public.games VALUES (86, 73, 384);
INSERT INTO public.games VALUES (87, 72, 816);
INSERT INTO public.games VALUES (88, 72, 884);
INSERT INTO public.games VALUES (89, 72, 455);
INSERT INTO public.games VALUES (90, 74, 986);
INSERT INTO public.games VALUES (91, 75, 167);
INSERT INTO public.games VALUES (92, 74, 892);
INSERT INTO public.games VALUES (93, 74, 234);
INSERT INTO public.games VALUES (94, 74, 572);
INSERT INTO public.games VALUES (95, 76, 939);
INSERT INTO public.games VALUES (96, 77, 410);
INSERT INTO public.games VALUES (97, 76, 494);
INSERT INTO public.games VALUES (98, 76, 972);
INSERT INTO public.games VALUES (99, 76, 389);
INSERT INTO public.games VALUES (100, 78, 203);
INSERT INTO public.games VALUES (101, 79, 919);
INSERT INTO public.games VALUES (102, 78, 707);
INSERT INTO public.games VALUES (103, 78, 514);
INSERT INTO public.games VALUES (104, 78, 943);
INSERT INTO public.games VALUES (105, 80, 704);
INSERT INTO public.games VALUES (106, 81, 34);
INSERT INTO public.games VALUES (107, 80, 305);
INSERT INTO public.games VALUES (108, 80, 570);
INSERT INTO public.games VALUES (109, 80, 329);
INSERT INTO public.games VALUES (110, 82, 764);
INSERT INTO public.games VALUES (111, 83, 378);
INSERT INTO public.games VALUES (112, 82, 924);
INSERT INTO public.games VALUES (113, 82, 753);
INSERT INTO public.games VALUES (114, 82, 910);
INSERT INTO public.games VALUES (115, 84, 680);
INSERT INTO public.games VALUES (116, 85, 664);
INSERT INTO public.games VALUES (117, 84, 669);
INSERT INTO public.games VALUES (118, 84, 666);
INSERT INTO public.games VALUES (119, 84, 53);
INSERT INTO public.games VALUES (120, 86, 20);
INSERT INTO public.games VALUES (121, 87, 152);
INSERT INTO public.games VALUES (122, 86, 713);
INSERT INTO public.games VALUES (123, 86, 896);
INSERT INTO public.games VALUES (124, 86, 133);
INSERT INTO public.games VALUES (125, 88, 72);
INSERT INTO public.games VALUES (126, 89, 513);
INSERT INTO public.games VALUES (127, 88, 417);
INSERT INTO public.games VALUES (128, 88, 819);
INSERT INTO public.games VALUES (129, 88, 446);
INSERT INTO public.games VALUES (130, 90, 103);
INSERT INTO public.games VALUES (131, 91, 561);
INSERT INTO public.games VALUES (132, 90, 638);
INSERT INTO public.games VALUES (133, 90, 199);
INSERT INTO public.games VALUES (134, 90, 508);
INSERT INTO public.games VALUES (135, 92, 98);
INSERT INTO public.games VALUES (136, 93, 423);
INSERT INTO public.games VALUES (137, 92, 164);
INSERT INTO public.games VALUES (138, 92, 522);
INSERT INTO public.games VALUES (139, 92, 715);
INSERT INTO public.games VALUES (140, 94, 615);
INSERT INTO public.games VALUES (141, 95, 87);
INSERT INTO public.games VALUES (142, 94, 406);
INSERT INTO public.games VALUES (143, 94, 533);
INSERT INTO public.games VALUES (144, 94, 825);
INSERT INTO public.games VALUES (145, 96, 69);
INSERT INTO public.games VALUES (146, 97, 165);
INSERT INTO public.games VALUES (147, 96, 334);
INSERT INTO public.games VALUES (148, 96, 207);
INSERT INTO public.games VALUES (149, 96, 208);
INSERT INTO public.games VALUES (150, 98, 584);
INSERT INTO public.games VALUES (151, 99, 786);
INSERT INTO public.games VALUES (152, 98, 877);
INSERT INTO public.games VALUES (153, 98, 667);
INSERT INTO public.games VALUES (154, 98, 847);
INSERT INTO public.games VALUES (155, 100, 559);
INSERT INTO public.games VALUES (156, 101, 537);
INSERT INTO public.games VALUES (157, 100, 277);
INSERT INTO public.games VALUES (158, 100, 954);
INSERT INTO public.games VALUES (159, 100, 893);
INSERT INTO public.games VALUES (160, 102, 676);
INSERT INTO public.games VALUES (161, 103, 787);
INSERT INTO public.games VALUES (162, 102, 620);
INSERT INTO public.games VALUES (163, 102, 456);
INSERT INTO public.games VALUES (164, 102, 710);
INSERT INTO public.games VALUES (165, 104, 341);
INSERT INTO public.games VALUES (166, 105, 655);
INSERT INTO public.games VALUES (167, 104, 615);
INSERT INTO public.games VALUES (168, 104, 788);
INSERT INTO public.games VALUES (169, 104, 458);
INSERT INTO public.games VALUES (170, 106, 896);
INSERT INTO public.games VALUES (171, 107, 270);
INSERT INTO public.games VALUES (172, 106, 88);
INSERT INTO public.games VALUES (173, 106, 403);
INSERT INTO public.games VALUES (174, 106, 263);
INSERT INTO public.games VALUES (175, 108, 233);
INSERT INTO public.games VALUES (176, 109, 136);
INSERT INTO public.games VALUES (177, 108, 344);
INSERT INTO public.games VALUES (178, 108, 887);
INSERT INTO public.games VALUES (179, 108, 576);
INSERT INTO public.games VALUES (180, 155, 899);
INSERT INTO public.games VALUES (181, 156, 162);
INSERT INTO public.games VALUES (182, 155, 609);
INSERT INTO public.games VALUES (183, 155, 262);
INSERT INTO public.games VALUES (184, 155, 324);
INSERT INTO public.games VALUES (185, 157, 843);
INSERT INTO public.games VALUES (186, 158, 607);
INSERT INTO public.games VALUES (187, 157, 245);
INSERT INTO public.games VALUES (188, 157, 270);
INSERT INTO public.games VALUES (189, 157, 325);
INSERT INTO public.games VALUES (190, 159, 0);
INSERT INTO public.games VALUES (191, 159, 148);
INSERT INTO public.games VALUES (192, 160, 857);
INSERT INTO public.games VALUES (193, 160, 800);
INSERT INTO public.games VALUES (194, 159, 463);
INSERT INTO public.games VALUES (195, 159, 455);
INSERT INTO public.games VALUES (196, 159, 891);
INSERT INTO public.games VALUES (197, 161, 468);
INSERT INTO public.games VALUES (198, 161, 199);
INSERT INTO public.games VALUES (199, 162, 835);
INSERT INTO public.games VALUES (200, 162, 639);
INSERT INTO public.games VALUES (201, 161, 152);
INSERT INTO public.games VALUES (202, 161, 226);
INSERT INTO public.games VALUES (203, 161, 268);
INSERT INTO public.games VALUES (204, 163, 993);
INSERT INTO public.games VALUES (205, 163, 336);
INSERT INTO public.games VALUES (206, 164, 473);
INSERT INTO public.games VALUES (207, 164, 669);
INSERT INTO public.games VALUES (208, 163, 310);
INSERT INTO public.games VALUES (209, 163, 515);
INSERT INTO public.games VALUES (210, 163, 975);
INSERT INTO public.games VALUES (211, 165, 1);
INSERT INTO public.games VALUES (212, 165, 525);
INSERT INTO public.games VALUES (213, 167, 691);
INSERT INTO public.games VALUES (214, 167, 477);
INSERT INTO public.games VALUES (215, 165, 268);
INSERT INTO public.games VALUES (216, 165, 92);
INSERT INTO public.games VALUES (217, 165, 681);
INSERT INTO public.games VALUES (218, 168, 100);
INSERT INTO public.games VALUES (219, 168, 783);
INSERT INTO public.games VALUES (220, 169, 287);
INSERT INTO public.games VALUES (221, 169, 395);
INSERT INTO public.games VALUES (222, 168, 43);
INSERT INTO public.games VALUES (223, 168, 742);
INSERT INTO public.games VALUES (224, 168, 772);
INSERT INTO public.games VALUES (225, 170, 1);
INSERT INTO public.games VALUES (226, 170, 340);
INSERT INTO public.games VALUES (227, 171, 392);
INSERT INTO public.games VALUES (228, 171, 620);
INSERT INTO public.games VALUES (229, 170, 987);
INSERT INTO public.games VALUES (230, 170, 170);
INSERT INTO public.games VALUES (231, 170, 252);
INSERT INTO public.games VALUES (232, 172, 1);
INSERT INTO public.games VALUES (233, 172, 693);
INSERT INTO public.games VALUES (234, 173, 305);
INSERT INTO public.games VALUES (235, 173, 791);
INSERT INTO public.games VALUES (236, 172, 381);
INSERT INTO public.games VALUES (237, 172, 21);
INSERT INTO public.games VALUES (238, 172, 638);
INSERT INTO public.games VALUES (239, 174, 856);
INSERT INTO public.games VALUES (240, 174, 494);
INSERT INTO public.games VALUES (241, 175, 32);
INSERT INTO public.games VALUES (242, 176, 278);
INSERT INTO public.games VALUES (243, 175, 179);
INSERT INTO public.games VALUES (244, 176, 215);
INSERT INTO public.games VALUES (245, 174, 885);
INSERT INTO public.games VALUES (246, 177, 350);
INSERT INTO public.games VALUES (247, 174, 945);
INSERT INTO public.games VALUES (248, 177, 608);
INSERT INTO public.games VALUES (249, 174, 696);
INSERT INTO public.games VALUES (250, 176, 711);
INSERT INTO public.games VALUES (251, 176, 903);
INSERT INTO public.games VALUES (252, 176, 370);
INSERT INTO public.games VALUES (253, 178, 35);
INSERT INTO public.games VALUES (254, 178, 873);
INSERT INTO public.games VALUES (255, 179, 34);
INSERT INTO public.games VALUES (256, 179, 84);
INSERT INTO public.games VALUES (257, 178, 782);
INSERT INTO public.games VALUES (258, 178, 338);
INSERT INTO public.games VALUES (259, 178, 907);
INSERT INTO public.games VALUES (260, 180, 978);
INSERT INTO public.games VALUES (261, 180, 103);
INSERT INTO public.games VALUES (262, 181, 206);
INSERT INTO public.games VALUES (263, 181, 638);
INSERT INTO public.games VALUES (264, 180, 987);
INSERT INTO public.games VALUES (265, 180, 348);
INSERT INTO public.games VALUES (266, 180, 761);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1683288723701');
INSERT INTO public.users VALUES (3, 'user_1683288723700');
INSERT INTO public.users VALUES (8, 'user_1683288803465');
INSERT INTO public.users VALUES (10, 'user_1683288803464');
INSERT INTO public.users VALUES (15, 'user_1683289404271');
INSERT INTO public.users VALUES (17, 'user_1683289404270');
INSERT INTO public.users VALUES (22, 'user_1683289416307');
INSERT INTO public.users VALUES (24, 'user_1683289416306');
INSERT INTO public.users VALUES (29, 'kc');
INSERT INTO public.users VALUES (30, 'user_1683289511104');
INSERT INTO public.users VALUES (31, 'user_1683289511103');
INSERT INTO public.users VALUES (32, 'user_1683289632444');
INSERT INTO public.users VALUES (33, 'user_1683289632443');
INSERT INTO public.users VALUES (34, 'user_1683289771628');
INSERT INTO public.users VALUES (35, 'user_1683289771627');
INSERT INTO public.users VALUES (36, 'user_1683289800353');
INSERT INTO public.users VALUES (37, 'user_1683289800352');
INSERT INTO public.users VALUES (38, 'user_1683290013558');
INSERT INTO public.users VALUES (39, 'user_1683290013557');
INSERT INTO public.users VALUES (40, 'user_1683290084106');
INSERT INTO public.users VALUES (41, 'user_1683290084105');
INSERT INTO public.users VALUES (42, 'user_1683290249108');
INSERT INTO public.users VALUES (43, 'user_1683290249107');
INSERT INTO public.users VALUES (44, 'user_1683290302125');
INSERT INTO public.users VALUES (45, 'user_1683290302124');
INSERT INTO public.users VALUES (46, 'user_1683290492590');
INSERT INTO public.users VALUES (47, 'user_1683290492589');
INSERT INTO public.users VALUES (48, 'user_1683290566460');
INSERT INTO public.users VALUES (49, 'user_1683290566459');
INSERT INTO public.users VALUES (50, 'user_1683290638943');
INSERT INTO public.users VALUES (51, 'user_1683290638942');
INSERT INTO public.users VALUES (52, 'user_1683290807874');
INSERT INTO public.users VALUES (53, 'user_1683290807873');
INSERT INTO public.users VALUES (54, 'user_1683290869942');
INSERT INTO public.users VALUES (55, 'user_1683290869941');
INSERT INTO public.users VALUES (56, 'user_1683290926826');
INSERT INTO public.users VALUES (57, 'user_1683290926825');
INSERT INTO public.users VALUES (58, 'user_1683290955380');
INSERT INTO public.users VALUES (59, 'user_1683290962755');
INSERT INTO public.users VALUES (60, 'user_1683290962754');
INSERT INTO public.users VALUES (61, 'user_1683291007885');
INSERT INTO public.users VALUES (62, 'user_1683291007884');
INSERT INTO public.users VALUES (63, 'user_1683291167286');
INSERT INTO public.users VALUES (64, 'user_1683291167285');
INSERT INTO public.users VALUES (65, 'sad');
INSERT INTO public.users VALUES (66, 'user_1683291264367');
INSERT INTO public.users VALUES (67, 'user_1683291264366');
INSERT INTO public.users VALUES (68, 'user_1683291309737');
INSERT INTO public.users VALUES (69, 'user_1683291309736');
INSERT INTO public.users VALUES (70, 'user_1683291317509');
INSERT INTO public.users VALUES (71, 'user_1683291317508');
INSERT INTO public.users VALUES (72, 'user_1683291358066');
INSERT INTO public.users VALUES (73, 'user_1683291358065');
INSERT INTO public.users VALUES (74, 'user_1683291407996');
INSERT INTO public.users VALUES (75, 'user_1683291407995');
INSERT INTO public.users VALUES (76, 'user_1683291452077');
INSERT INTO public.users VALUES (77, 'user_1683291452076');
INSERT INTO public.users VALUES (78, 'user_1683291529660');
INSERT INTO public.users VALUES (79, 'user_1683291529659');
INSERT INTO public.users VALUES (80, 'user_1683291549854');
INSERT INTO public.users VALUES (81, 'user_1683291549853');
INSERT INTO public.users VALUES (82, 'user_1683291594982');
INSERT INTO public.users VALUES (83, 'user_1683291594981');
INSERT INTO public.users VALUES (84, 'user_1683291748320');
INSERT INTO public.users VALUES (85, 'user_1683291748319');
INSERT INTO public.users VALUES (86, 'user_1683291757208');
INSERT INTO public.users VALUES (87, 'user_1683291757207');
INSERT INTO public.users VALUES (88, 'user_1683291821718');
INSERT INTO public.users VALUES (89, 'user_1683291821717');
INSERT INTO public.users VALUES (90, 'user_1683292057025');
INSERT INTO public.users VALUES (91, 'user_1683292057024');
INSERT INTO public.users VALUES (92, 'user_1683292437900');
INSERT INTO public.users VALUES (93, 'user_1683292437899');
INSERT INTO public.users VALUES (94, 'user_1683292468446');
INSERT INTO public.users VALUES (95, 'user_1683292468445');
INSERT INTO public.users VALUES (96, 'user_1683292481247');
INSERT INTO public.users VALUES (97, 'user_1683292481246');
INSERT INTO public.users VALUES (98, 'user_1683292522867');
INSERT INTO public.users VALUES (99, 'user_1683292522866');
INSERT INTO public.users VALUES (100, 'user_1683292598707');
INSERT INTO public.users VALUES (101, 'user_1683292598706');
INSERT INTO public.users VALUES (102, 'user_1683292709507');
INSERT INTO public.users VALUES (103, 'user_1683292709506');
INSERT INTO public.users VALUES (104, 'user_1683292798095');
INSERT INTO public.users VALUES (105, 'user_1683292798094');
INSERT INTO public.users VALUES (106, 'user_1683292806768');
INSERT INTO public.users VALUES (107, 'user_1683292806767');
INSERT INTO public.users VALUES (108, 'user_1683292815525');
INSERT INTO public.users VALUES (109, 'user_1683292815524');
INSERT INTO public.users VALUES (110, 'user_1683293066271');
INSERT INTO public.users VALUES (111, 'user_1683293066270');
INSERT INTO public.users VALUES (112, 'user_1683293074732');
INSERT INTO public.users VALUES (113, 'user_1683293074731');
INSERT INTO public.users VALUES (114, 'user_1683293079303');
INSERT INTO public.users VALUES (115, 'user_1683293079302');
INSERT INTO public.users VALUES (116, 'user_1683293196630');
INSERT INTO public.users VALUES (117, 'user_1683293196629');
INSERT INTO public.users VALUES (118, 'user_1683293203970');
INSERT INTO public.users VALUES (119, 'user_1683293203969');
INSERT INTO public.users VALUES (149, 'user_1683293452879');
INSERT INTO public.users VALUES (150, 'user_1683293452880');
INSERT INTO public.users VALUES (151, 'user_1683293910918');
INSERT INTO public.users VALUES (152, 'user_1683293910917');
INSERT INTO public.users VALUES (153, 'user_1683293915390');
INSERT INTO public.users VALUES (154, 'user_1683293915389');
INSERT INTO public.users VALUES (155, 'user_1683294055188');
INSERT INTO public.users VALUES (156, 'user_1683294055187');
INSERT INTO public.users VALUES (157, 'user_1683294061398');
INSERT INTO public.users VALUES (158, 'user_1683294061397');
INSERT INTO public.users VALUES (159, 'user_1683294428753');
INSERT INTO public.users VALUES (160, 'user_1683294428752');
INSERT INTO public.users VALUES (161, 'user_1683294627650');
INSERT INTO public.users VALUES (162, 'user_1683294627649');
INSERT INTO public.users VALUES (163, 'user_1683294690911');
INSERT INTO public.users VALUES (164, 'user_1683294690910');
INSERT INTO public.users VALUES (165, 'user_1683294701354');
INSERT INTO public.users VALUES (167, 'user_1683294701353');
INSERT INTO public.users VALUES (168, 'user_1683294715987');
INSERT INTO public.users VALUES (169, 'user_1683294715986');
INSERT INTO public.users VALUES (170, 'user_1683294821908');
INSERT INTO public.users VALUES (171, 'user_1683294821907');
INSERT INTO public.users VALUES (172, 'user_1683294999463');
INSERT INTO public.users VALUES (173, 'user_1683294999462');
INSERT INTO public.users VALUES (174, 'user_1683295166292');
INSERT INTO public.users VALUES (175, 'user_1683295166291');
INSERT INTO public.users VALUES (176, 'user_1683295167151');
INSERT INTO public.users VALUES (177, 'user_1683295167150');
INSERT INTO public.users VALUES (178, 'user_1683295219857');
INSERT INTO public.users VALUES (179, 'user_1683295219856');
INSERT INTO public.users VALUES (180, 'user_1683295227673');
INSERT INTO public.users VALUES (181, 'user_1683295227672');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 266, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 181, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

