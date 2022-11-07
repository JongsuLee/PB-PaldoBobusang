-- 처음 DB 생성시 주석 해제
-- create database pb;

use pb;

insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  
values (221, '수박', '1개', 'asdf', '2022-10-01', '2022-10-10', NULL, NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  
values (222, '참외', '10개', 'qwef', '2022-10-01', '2022-10-10', NULL, NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  
values (226, '딸기', '100g', NULL, NULL, NULL, NULL, NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  
values (257, '멜론', '1개', NULL, NULL, NULL, NULL, NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  
values (411, '사과', '10개', NULL, '2022-10-01', '2022-10-10', '사과의 품종으로는 홍옥, 후지, 쓰가루, 홍로 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (412, '배', '10개', NULL, NULL, NULL, '배의 품종으로는 신고, 만삼길, 장십랑, 원황 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (413, '복숭아', '10개', NULL, NULL, NULL, '복숭아의 품종으로는 백도, 창방조생, 유명 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (414, '포도', '1kg', NULL, NULL, NULL, '포도의 품종으로는 캠벨얼리, 거봉, 델라웨어, MBA, 수입, 레드글로브 칠레, 레드글로브 페루, 톰슨 미국, 톰슨 호주, 샤인머스켓 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (415, '감귤', '10개', NULL, NULL, NULL, '감귤의 품종으로는 감귤, 노지, 시설 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (416, '단감', '10개', NULL, NULL, NULL, NULL, NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (418, '바나나', '100g', NULL, NULL, NULL, '바나나의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (419, '참다래', '10개', NULL, NULL, NULL, '참다래의 품종으로는 국산, 그린 뉴질랜드 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (420, '파인애플', '1개', NULL, NULL, NULL, '파인애플의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (421, '오렌지', '10개', NULL, NULL, NULL, '오렌지의 품종으로는 수입, 네이블 미국, 발렌시아 미국, 네이블 EU, 네이블 호주 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (423, '자몽', '10개', NULL, NULL, NULL, '자몽의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (424, '레몬', '10개', NULL, NULL, NULL, '레몬의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (425, '체리', '100g', NULL, NULL, NULL, '체리의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (426, '건포도', '100g', NULL, NULL, NULL, '건포도의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (427, '건블루베리', '100g', NULL, NULL, NULL, '건블루베리의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (428, '망고', '1개', NULL, NULL, NULL, '망고의 품종으로는 수입 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (422, '방울토마토', '1kg', NULL, NULL, NULL, '방울토마토의 품종으로는 방울토마토, 대추방울토마토 이(가) 있습니다.', NULL);
insert into Fruit (FRUIT_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS, BRIX)  values (225, '토마토', '1kg', NULL, NULL, NULL, NULL, NULL);
commit;

insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (111, '쌀', '20kg', NULL, NULL, NULL, '쌀의 품종으로는 일반계, 백미, 현미, 햇일반계 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (112, '찹쌀', '1kg', NULL, NULL, NULL, '찹쌀의 품종으로는 일반계 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (113, '혼합곡', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (141, '콩', '500g', NULL, NULL, NULL, '콩의 품종으로는 흰 콩(국산), 콩나물콩, 흰 콩(수입) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (142, '팥', '500g', NULL, NULL, NULL, '팥의 품종으로는 붉은 팥(국산), 붉은 팥(수입) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (143, '녹두', '500g', NULL, NULL, NULL, '녹두의 품종으로는 국산, 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (144, '메밀', '500g', NULL, NULL, NULL, '메밀의 품종으로는 메밀(수입) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (151, '고구마', '1kg', NULL, NULL, NULL, '고구마의 품종으로는 밤 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (152, '감자', '100g', NULL, NULL, NULL, '감자의 품종으로는 수미, 대지마 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (161, '귀리', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (162, '보리', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (163, '수수', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (164, '율무', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (211, '배추', '1포기', NULL, NULL, NULL, '배추의 품종으로는 봄, 고랭지, 가을, 월동 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (212, '양배추', '1포기', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (213, '시금치', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  
values (214, '상추', '100g', 'asdf', '2022-10-01', '2022-10-10', '상추의 품종으로는 적, 청 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (215, '얼갈이배추', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (216, '갓', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (223, '오이', '10개', NULL, NULL, NULL, '오이의 품종으로는 가시계통, 다다기계통, 취청 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (224, '호박', '1개', NULL, NULL, NULL, '호박의 품종으로는 애호박, 쥬키니, 단호박 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (231, '무', '1개', NULL, NULL, NULL, '무의 품종으로는 봄, 고랭지, 가을, 월동 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (232, '당근', '1kg', NULL, NULL, NULL, '당근의 품종으로는 당근, 무세척, 세척, 세척(수입) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (233, '열무', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (241, '건고추', '600g', NULL, NULL, NULL, '건고추의 품종으로는 화건, 햇산화건, 양건, 햇산양건, 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (242, '풋고추', '100g', NULL, NULL, NULL, '풋고추의 품종으로는 풋고추, 꽈리고추, 청양고추, 오이맛고추 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (243, '붉은고추', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (244, '피마늘', '100g', NULL, NULL, NULL, '피마늘의 품종으로는 한지1접, 난지1접, 한지, 난지, 햇한지1접, 햇난지1접, 햇난지(대서), 난지(대서), 햇난지(남도), 난지(남도) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (245, '양파', '1kg', NULL, NULL, NULL, '양파의 품종으로는 양파, 햇양파, 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (246, '파', '1kg', NULL, NULL, NULL, '파의 품종으로는 대파, 쪽파 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (247, '생강', '1kg', NULL, NULL, NULL, '생강의 품종으로는 국산, 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (248, '고춧가루', '1kg', NULL, NULL, NULL, '고춧가루의 품종으로는 국산, 중국 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (251, '가지', '10개', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (252, '미나리', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (253, '깻잎', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (254, '부추', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (255, '피망', '100g', NULL, NULL, NULL, '피망의 품종으로는 청 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (256, '파프리카', '200g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (258, '깐마늘(국산)', '1kg', NULL, NULL, NULL, '깐마늘(국산)의 품종으로는 깐마늘(국산), 깐마늘(대서), 햇깐마늘(대서), 깐마늘(남도), 햇깐마늘(남도) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (259, '깐마늘(수입)', '1kg', NULL, NULL, NULL, '깐마늘(수입)의 품종으로는 깐마늘(수입), 깐마늘(수입산) 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (261, '브로콜리', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (262, '양상추', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (263, '청경채', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (264, '케일', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (265, '콩나물', '1kg', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (312, '참깨', '500g', NULL, NULL, NULL, '참깨의 품종으로는 백색(국산), 중국, 인도 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (313, '들깨', '500g', NULL, NULL, NULL, '들깨의 품종으로는 국산, 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (314, '땅콩', '100g', NULL, NULL, NULL, '땅콩의 품종으로는 국산, 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (315, '느타리버섯', '100g', NULL, NULL, NULL, '느타리버섯의 품종으로는 느타리버섯, 애느타리버섯 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (316, '팽이버섯', '150g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (317, '새송이버섯', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (318, '호두', '100g', NULL, NULL, NULL, '호두의 품종으로는 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (319, '아몬드', '100g', NULL, NULL, NULL, '아몬드의 품종으로는 수입 이(가) 있습니다.');
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (321, '양송이버섯', '100g', NULL, NULL, NULL, NULL);
insert into Vegetable (VEGETABLE_CODE, ITEM_NAME, UNIT, ITEM_IMAGE, HARVEST_START, HARVEST_END, ETC_DETAILS)  values (322, '표고버섯', '100g', NULL, NULL, NULL, NULL);
commit;

insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31000, '수도권', 'capital', '서울특별시', 'Seoul', 1101);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31010, '수도권', 'capital', '인천광역시', 'Incheon', 2300);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31020, '수도권', 'capital', '수원시', 'Suwon', 3111);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31030, '수도권', 'capital', '성남시', 'Seongnam', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31040, '수도권', 'capital', '의정부시', 'Uijeongbu', 3113);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31050, '수도권', 'capital', '안양시', 'Anyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31060, '수도권', 'capital', '부천시', 'Bucheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31070, '수도권', 'capital', '광명시', 'Gwangmyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31080, '수도권', 'capital', '평택시', 'Pyeongtaek', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31090, '수도권', 'capital', '동두천시', 'Dongducheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31100, '수도권', 'capital', '안산시', 'Ansan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31110, '수도권', 'capital', '고양시', 'Goyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31120, '수도권', 'capital', '과천시', 'Gwacheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31130, '수도권', 'capital', '구리시', 'Guri', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31140, '수도권', 'capital', '남양주시', 'Namyangju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31150, '수도권', 'capital', '오산시', 'Osan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31160, '수도권', 'capital', '시흥시', 'Siheung', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31170, '수도권', 'capital', '군포시', 'Gunpo', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31180, '수도권', 'capital', '의왕시', 'Uiwang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31190, '수도권', 'capital', '하남시', 'Hanam', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31200, '수도권', 'capital', '용인시', 'Yongin', 3145);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31210, '수도권', 'capital', '파주시', 'Paju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31220, '수도권', 'capital', '이천시', 'Icheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31230, '수도권', 'capital', '안성시', 'Anseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31240, '수도권', 'capital', '김포시', 'Gimpo', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31250, '수도권', 'capital', '화성시', 'Hwaseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31260, '수도권', 'capital', '광주시', 'Gwangju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31270, '수도권', 'capital', '양주시', 'Yangju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31280, '수도권', 'capital', '포천시', 'Pocheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31290, '수도권', 'capital', '여주시', 'Yeoju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31300, '수도권', 'capital', '연천군', 'Yeoncheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31310, '수도권', 'capital', '가평군', 'Gapyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (31320, '수도권', 'capital', '양평군', 'Yangpyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32010, '강원도', 'gangwon', '춘천시', 'Chuncheon', 3211);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32020, '강원도', 'gangwon', '원주시', 'Wonju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32030, '강원도', 'gangwon', '강릉시', 'Gangneung', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32040, '강원도', 'gangwon', '동해시', 'Donghae', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32050, '강원도', 'gangwon', '태백시', 'Taebaek', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32060, '강원도', 'gangwon', '속초시', 'Sokcho', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32070, '강원도', 'gangwon', '삼척시', 'Samcheok', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32080, '강원도', 'gangwon', '홍천군', 'Hongcheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32090, '강원도', 'gangwon', '횡성군', 'Hoengseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32100, '강원도', 'gangwon', '영월군', 'Yeongwol', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32110, '강원도', 'gangwon', '평창군', 'Pyeongchang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32120, '강원도', 'gangwon', '정선군', 'Jeongseon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32130, '강원도', 'gangwon', '철원군', 'Cheorwon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32140, '강원도', 'gangwon', '화천군', 'Hwacheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32150, '강원도', 'gangwon', '양구군', 'Yanggu', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32160, '강원도', 'gangwon', '인제군', 'Inje', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32170, '강원도', 'gangwon', '고성군', 'Goseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (32180, '강원도', 'gangwon', '양양군', 'Yangyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33010, '충청북도', 'chungbuk', '충주시', 'Chungju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33020, '충청북도', 'chungbuk', '제천시', 'Jecheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33030, '충청북도', 'chungbuk', '보은군', 'Boeun', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33040, '충청북도', 'chungbuk', '옥천군', 'Okcheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33050, '충청북도', 'chungbuk', '영동군', 'Yeongdong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33060, '충청북도', 'chungbuk', '진천군', 'Jincheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33070, '충청북도', 'chungbuk', '괴산군', 'Goesan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33080, '충청북도', 'chungbuk', '음성군', 'Eumseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33090, '충청북도', 'chungbuk', '단양군', 'Danyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33100, '충청북도', 'chungbuk', '증평군', 'Jeungpyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (33110, '충청북도', 'chungbuk', '청주시', 'Cheongju', 3311);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34010, '충청남도', 'chungnam', '대전광역시', 'Daejeon', 2501);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34020, '충청남도', 'chungnam', '세종특별자치시', 'Sejong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34030, '충청남도', 'chungnam', '공주시', 'Gongju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34040, '충청남도', 'chungnam', '보령시', 'Boryeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34050, '충청남도', 'chungnam', '아산시', 'Asan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34060, '충청남도', 'chungnam', '서산시', 'Seosan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34070, '충청남도', 'chungnam', '논산시', 'Nonsan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34080, '충청남도', 'chungnam', '계룡시', 'Gyeryong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34090, '충청남도', 'chungnam', '당진시', 'Dangjin', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34100, '충청남도', 'chungnam', '금산군', 'Geumsan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34110, '충청남도', 'chungnam', '부여군', 'Buyeo', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34120, '충청남도', 'chungnam', '서천군', 'Seocheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34130, '충청남도', 'chungnam', '청양군', 'Cheongyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34140, '충청남도', 'chungnam', '홍성군', 'Hongseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34150, '충청남도', 'chungnam', '예산군', 'Yesan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34160, '충청남도', 'chungnam', '태안군', 'Taean', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (34170, '충청남도', 'chungnam', '천안시', 'Cheonan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35010, '전라북도', 'jeonbuk', '군산시', 'Gunsan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35020, '전라북도', 'jeonbuk', '익산시', 'Iksan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35030, '전라북도', 'jeonbuk', '정읍시', 'Jeongeup', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35040, '전라북도', 'jeonbuk', '남원시', 'Namwon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35050, '전라북도', 'jeonbuk', '김제시', 'Gimje', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35060, '전라북도', 'jeonbuk', '완주군', 'Wanju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35070, '전라북도', 'jeonbuk', '진안군', 'Jinan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35080, '전라북도', 'jeonbuk', '무주군', 'Muju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35090, '전라북도', 'jeonbuk', '장수군', 'Jangsu', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35100, '전라북도', 'jeonbuk', '임실군', 'Imsil', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35110, '전라북도', 'jeonbuk', '순창군', 'Sunchang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35120, '전라북도', 'jeonbuk', '고창군', 'Gochang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35130, '전라북도', 'jeonbuk', '부안군', 'Buan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (35140, '전라북도', 'jeonbuk', '전주시', 'Jeonju', 3511);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36010, '전라남도', 'jeonnam', '목포시', 'Mokpo', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36020, '전라남도', 'jeonnam', '여수시', 'Yeosu', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36030, '전라남도', 'jeonnam', '순천시', 'Suncheon', 3613);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36040, '전라남도', 'jeonnam', '나주시', 'Naju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36050, '전라남도', 'jeonnam', '광양시', 'Gwangyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36060, '전라남도', 'jeonnam', '담양군', 'Damyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36070, '전라남도', 'jeonnam', '곡성군', 'Gokseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36080, '전라남도', 'jeonnam', '구례군', 'Gurye', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36090, '전라남도', 'jeonnam', '고흥군', 'Goheung', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36100, '전라남도', 'jeonnam', '보성군', 'Boseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36110, '전라남도', 'jeonnam', '화순군', 'Hwasun', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36120, '전라남도', 'jeonnam', '장흥군', 'Jangheung', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36130, '전라남도', 'jeonnam', '강진군', 'Gangjin', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36140, '전라남도', 'jeonnam', '해남군', 'Haenam', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36150, '전라남도', 'jeonnam', '영암군', 'Yeongam', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36160, '전라남도', 'jeonnam', '무안군', 'Muan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36170, '전라남도', 'jeonnam', '함평군', 'Hampyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36180, '전라남도', 'jeonnam', '영광군', 'Yeonggwang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36190, '전라남도', 'jeonnam', '장성군', 'Jangseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36200, '전라남도', 'jeonnam', '완도군', 'Wando', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36210, '전라남도', 'jeonnam', '진도군', 'Jindo', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36220, '전라남도', 'jeonnam', '신안군', 'Sinan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (36230, '전라남도', 'jeonnam', '광주광역시', 'Gwangju', 2401);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37010, '경상북도', 'gyeongbuk', '대구광역시', 'Daegu', 2200);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37020, '경상북도', 'gyeongbuk', '경주시', 'Gyeongju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37030, '경상북도', 'gyeongbuk', '김천시', 'Gimcheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37040, '경상북도', 'gyeongbuk', '안동시', 'Andong', 3714);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37050, '경상북도', 'gyeongbuk', '구미시', 'Gumi', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37060, '경상북도', 'gyeongbuk', '영주시', 'Yeongju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37070, '경상북도', 'gyeongbuk', '영천시', 'Yeongcheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37080, '경상북도', 'gyeongbuk', '상주시', 'Sangju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37090, '경상북도', 'gyeongbuk', '문경시', 'Mungyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37100, '경상북도', 'gyeongbuk', '경산시', 'Gyeongsan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37310, '경상북도', 'gyeongbuk', '군위군', 'Gunwi', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37320, '경상북도', 'gyeongbuk', '의성군', 'Uiseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37330, '경상북도', 'gyeongbuk', '청송군', 'Cheongsong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37340, '경상북도', 'gyeongbuk', '영양군', 'Yeongyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37350, '경상북도', 'gyeongbuk', '영덕군', 'Yeongdeok', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37360, '경상북도', 'gyeongbuk', '청도군', 'Cheongdo', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37370, '경상북도', 'gyeongbuk', '고령군', 'Goryeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37380, '경상북도', 'gyeongbuk', '성주군', 'Seongju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37390, '경상북도', 'gyeongbuk', '칠곡군', 'Chilgok', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37400, '경상북도', 'gyeongbuk', '예천군', 'Yecheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37410, '경상북도', 'gyeongbuk', '봉화군', 'Bonghwa', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37420, '경상북도', 'gyeongbuk', '울진군', 'Uljin', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37430, '경상북도', 'gyeongbuk', '울릉군', 'Ulleung', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (37011, '경상북도', 'gyeongbuk', '포항시', 'Pohang', 3711);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38010, '경상남도', 'gyeongnam', '부산광역시', 'Busan', 2100);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38020, '경상남도', 'gyeongnam', '울산광역시', 'Ulsan', 2601);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38030, '경상남도', 'gyeongnam', '진주시', 'Jinju', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38040, '경상남도', 'gyeongnam', '통영시', 'Tongyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38050, '경상남도', 'gyeongnam', '사천시', 'Sacheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38060, '경상남도', 'gyeongnam', '김해시', 'Gimhae', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38070, '경상남도', 'gyeongnam', '밀양시', 'Miryang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38080, '경상남도', 'gyeongnam', '거제시', 'Geoje', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38090, '경상남도', 'gyeongnam', '양산시', 'Yangsan', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38100, '경상남도', 'gyeongnam', '의령군', 'Uiryeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38110, '경상남도', 'gyeongnam', '함안군', 'Haman', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38120, '경상남도', 'gyeongnam', '창녕군', 'Changnyeong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38130, '경상남도', 'gyeongnam', '고성군', 'Goseong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38140, '경상남도', 'gyeongnam', '남해군', 'Namhae', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38150, '경상남도', 'gyeongnam', '하동군', 'Hadong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38160, '경상남도', 'gyeongnam', '산청군', 'Sancheong', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38170, '경상남도', 'gyeongnam', '함양군', 'Hamyang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38180, '경상남도', 'gyeongnam', '거창군', 'Geochang', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38190, '경상남도', 'gyeongnam', '합천군', 'Hapcheon', NULL);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (38200, '경상남도', 'gyeongnam', '창원시', 'Changwon', 3814);
insert into Location (LOCATION_ID, LOCAL_NAME, LOCAL_ENG_NAME, CITY_NAME, CITY_ENG_NAME, COUNTRY_CODE)  values (39010, '제주도', 'jeju', '제주시', 'Jeju', 3911);
commit;

-- 관계도 설정
insert into FRUIT_LOCATION (FRUIT_CODE, LOCATION_ID)
values (411, 31000);
insert into FRUIT_LOCATION (FRUIT_CODE, LOCATION_ID)
values (221, 31010);
insert into FRUIT_LOCATION (FRUIT_CODE, LOCATION_ID)
values (412, 31000);
insert into FRUIT_LOCATION (FRUIT_CODE, LOCATION_ID)
values (413, 31010);

insert into VEGETABLE_LOCATION (VEGETABLE_CODE, LOCATION_ID)
values (214, 31000);
insert into VEGETABLE_LOCATION (VEGETABLE_CODE, LOCATION_ID)
values (215, 31000);
insert into VEGETABLE_LOCATION (VEGETABLE_CODE, LOCATION_ID)
values (214, 31010);
insert into VEGETABLE_LOCATION (VEGETABLE_CODE, LOCATION_ID)
values (215, 31010);
commit;

-- 가격 정보 입력
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, FRUIT_CODE) 
values (550, '2022-09-26', 31000, 411);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, FRUIT_CODE) 
values (5000, '2022-09-27', 31000, 411);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, VEGETABLE_CODE) 
values (550, '2022-09-26', 31000, 214);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, FRUIT_CODE) 
values (1500, '2022-09-26', 31010, 221);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, FRUIT_CODE) 
values (1500, '2022-09-26', 31010, 413);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, VEGETABLE_CODE) 
values (1500, '2022-09-27', 31000, 214);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, VEGETABLE_CODE) 
values (1500, '2022-09-26', 31000, 215);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, VEGETABLE_CODE) 
values (1500, '2022-09-26', 31010, 214);
insert into Price (PRICE_VALUE, PRICE_DATE, LOCATION_ID, VEGETABLE_CODE) 
values (1500, '2022-09-26', 31010, 215);
commit;

