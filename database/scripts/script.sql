DROP TABLE IF EXISTS meal_food;
DROP VIEW IF EXISTS trained_foods; 
DROP TABLE IF EXISTS meal;
DROP TABLE IF EXISTS food;
DROP TABLE IF EXISTS user;

CREATE TABLE user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(40) NOT NULL,
    age INT NOT NULL    
);

CREATE TABLE meal(
    id INT PRIMARY KEY AUTO_INCREMENT,
    userId INT NOT NULL,
    meal_name VARCHAR(30),
    create_time TIMESTAMP,
    FOREIGN KEY (userId) REFERENCES user(id)
    
);

CREATE TABLE food(
    id_alimento INT PRIMARY KEY,
    food_name VARCHAR(150) NOT NULL,
    kcal VARCHAR(10),
    protein VARCHAR(10),
    carbohydrate VARCHAR(10),
    fiber VARCHAR(10)
);

INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (1,"Arroz","123.5","2.6","25.8","2.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (2,"Aveia","393.8","13.9","66.6","9.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (3,"Biscoito","471.8","6.4","70.5","3.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (4,"Bolo","418.6","6.2","84.7","1.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (5,"Canjica","357.6","7.2","78.1","5.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (6,"Cereais","381.1","8.9","81.6","5.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (7,"Curau","402.3","2.2","79.8","2.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (8,"Farinha","414.9","11.9","77.8","1.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (9,"Lasanha","220.3","7.0","45.1","1.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (10,"Macarrão","370.6","10.3","76.6","2.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (11,"Milho","97.6","3.2","17.1","4.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (12,"Pamonha","171.2","2.6","30.7","2.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (13,"Pão","311.0","8.4","61.5","2.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (14,"Pastel","569.7","6.0","49.3","1.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (15,"Pipoca","448.3","9.9","70.3","14.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (16,"Polenta","102.7","2.3","23.3","2.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (17,"Torrada","377.4","10.5","74.6","3.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (18,"Abóbora","24.5","0.7","6.1","2.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (19,"Abobrinha","30.8","0.6","7.9","2.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (20,"Acelga","20.9","1.4","4.6","1.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (21,"Agrião","16.6","2.7","2.3","2.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (22,"Aipo","19.1","0.8","4.3","1.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (23,"Alface","12.7","0.9","2.5","2.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (24,"Alfavaca","29.2","2.7","5.2","4.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (25,"Alho","113.1","7.0","23.9","4.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (26,"Alho-poró","31.5","1.4","6.9","2.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (27,"Almeirão","65.1","1.7","5.7","3.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (28,"Batata","267.2","5.0","35.6","8.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (29,"Berinjela","19.6","1.2","4.4","2.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (30,"Beterraba","32.2","1.3","7.2","1.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (31,"Brócolis","25.5","3.6","4.0","2.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (32,"Cará","95.6","2.3","23.0","7.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (33,"Caruru","34.0","3.2","6.0","4.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (34,"Catalonha","63.4","2.0","4.8","3.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (35,"Cebola","39.4","1.7","8.9","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (36,"Cebolinha","19.5","1.9","3.4","3.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (37,"Cenoura","34.1","1.3","7.7","3.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (38,"Chicória","13.8","1.1","2.9","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (39,"Chuchu","17.0","0.7","4.1","1.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (40,"Couve","90.3","1.7","8.7","5.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (41,"Couve-flor","19.1","1.2","3.9","2.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (42,"Espinafre","16.1","2.0","2.6","2.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (44,"Fécula","330.9","0.5","81.1","0.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (45,"Feijão","38.7","4.2","7.8","2.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (46,"Inhame","96.7","2.1","23.2","1.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (47,"Jiló","27.4","1.4","6.2","4.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (48,"Jurubeba","125.8","4.4","23.1","23.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (49,"Mandioca","300.1","1.4","50.3","1.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (50,"Manjericão","21.1","2.0","3.6","3.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (51,"Maxixe","13.7","1.4","2.7","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (52,"Mostarda","18.1","2.1","3.2","1.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (53,"Nhoque","180.8","5.9","36.8","1.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (54,"Palmito","29.4","2.5","5.5","2.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (56,"Pepino","9.5","0.9","2.0","1.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (57,"Pimentão","23.3","1.0","5.5","1.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (58,"Polvilho","351.2","0.4","86.8","0.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (59,"Quiabo","29.9","1.9","6.4","4.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (60,"Rabanete","13.7","1.4","2.7","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (61,"Repolho","41.8","1.8","7.6","1.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (62,"Rúcula","13.1","1.8","2.2","1.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (63,"Salsa","33.4","3.3","5.7","1.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (64,"Serralha","30.4","2.7","4.9","3.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (65,"Taioba","34.2","2.9","5.4","4.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (66,"Tomate","20.5","0.8","5.1","2.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (67,"Vagem","24.9","1.8","5.3","2.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (68,"Abacate","96.2","1.2","6.0","6.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (69,"Abacaxi","30.6","0.5","7.8","0.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (70,"Abiu","62.4","0.8","14.9","1.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (71,"Açaí","58.0","0.8","6.2","2.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (72,"Acerola","21.9","0.6","5.5","0.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (73,"Ameixa","177.4","1.0","47.7","4.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (74,"Atemóia","97.0","1.0","25.3","2.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (75,"Cacau","74.3","1.0","19.4","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (76,"Cajá-Manga","45.6","1.3","11.4","2.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (77,"Cajá","26.3","0.6","6.4","1.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (78,"Caju","45.1","0.4","10.7","0.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (79,"Caqui","71.4","0.4","19.3","6.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (80,"Carambola","45.7","0.9","11.5","2.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (81,"Ciriguela","75.6","1.4","18.9","3.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (82,"Cupuaçu","48.8","0.8","11.4","1.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (83,"Figo","184.4","0.6","50.3","2.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (85,"Goiaba","54.2","1.1","13.0","6.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (86,"Graviola","38.3","0.6","9.8","1.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (87,"Jabuticaba","58.1","0.6","15.3","2.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (88,"Jaca","87.9","1.4","22.5","2.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (89,"Jambo","26.9","0.9","6.5","5.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (90,"Jamelão","41.0","0.5","10.6","1.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (91,"Kiwi","51.1","1.3","11.5","2.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (92,"Laranja","36.2","0.5","8.6","0.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (93,"Limão","31.8","0.9","11.1","1.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (94,"Maçã","55.5","0.3","15.2","1.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (95,"Macaúba","404.3","2.1","13.9","13.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (96,"Mamão","40.2","0.5","10.4","1.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (97,"Mamão verde","209.4","0.3","57.6","1.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (98,"Manga","50.7","0.9","12.8","2.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (99,"Maracujá","42.0","0.8","9.6","0.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (100,"Melancia","32.6","0.9","8.1","0.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (101,"Melão","29.4","0.7","7.5","0.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (102,"Mexerica","36.9","0.7","9.3","2.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (103,"Morango","30.1","0.9","6.8","1.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (104,"Nêspera","42.5","0.3","11.5","3.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (105,"Pequi","205.0","2.3","13.0","19.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (106,"Pêra","53.3","0.6","14.0","3.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (107,"Pêssego","63.1","0.7","16.9","1.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (108,"Pinha","88.5","1.5","22.4","3.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (109,"Pitanga","19.1","0.3","4.8","0.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (110,"Romã","55.7","0.4","15.1","0.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (111,"Tamarindo","275.7","3.2","72.5","6.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (112,"Tangerina","36.1","0.5","8.8","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (113,"Tucumã","262.0","2.1","26.5","12.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (114,"Umbu","33.9","0.5","8.8","1.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (115,"Uva","57.7","0.0","14.7","0.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (116,"Azeite","884.0","0.0","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (117,"Manteiga","757.5","0.4","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (118,"Óleo","884.0","0.0","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (119,"Abadejo","129.6","27.6","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (120,"Atum","117.5","25.7","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (121,"Bacalhau","139.7","24.0","1.2","*");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (122,"Cação","83.3","17.9","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (123,"Camarão","231.2","18.4","2.9","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (124,"Caranguejo","82.7","18.5","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (125,"Corimba","128.2","17.4","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (126,"Corimbatá","238.7","20.1","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (127,"Corvid_alimentoe água doce","101.0","18.9","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (128,"Dourada de água doce","131.2","18.8","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (129,"Lambari","151.6","15.7","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (130,"Manjuba","349.3","30.1","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (131,"Merluza","191.6","26.9","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (132,"Pescada","142.0","11.8","5.0","0.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (133,"Pescadinha","76.4","15.5","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (134,"Pintado","152.2","30.8","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (135,"Porquinho","93.0","20.5","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (136,"Salmão","242.7","26.1","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (137,"Sardinha","113.9","21.1","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (138,"Tucunaré","87.7","18.0","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (139,"Caldo de carne","240.6","7.8","15.1","0.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (140,"Caldo de galinha","251.4","6.3","10.6","11.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (141,"Carne","312.7","19.7","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (142,"Coxinha de frango","283.0","9.6","34.5","5.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (143,"Croquete","346.7","16.9","18.1","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (144,"Empada de frango","358.2","6.9","47.5","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (145,"Empada","377.5","7.3","35.5","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (146,"Frango","161.8","17.6","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (147,"Hambúrguer","209.8","13.2","11.3","*");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (148,"Linguiça","296.5","23.2","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (149,"Peru","93.7","18.1","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (150,"Porco","377.4","15.6","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (151,"Presunto","127.8","14.4","1.4","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (152,"Quibe","253.8","14.9","12.3","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (153,"Toucinho","696.6","27.3","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (154,"Iogurte","67.8","2.5","9.4","0.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (155,"Leite","312.6","7.7","57.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (156,"Queijo","139.7","12.6","3.8","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (157,"Bebid_alimentoa isotônica","25.6","0.0","6.4","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (158,"Coco","21.5","0.0","5.3","0.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (159,"Refrigerante","39.7","0.0","10.3","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (160,"Omelete","268.0","15.6","0.4","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (161,"Ovo","240.2","15.6","1.2","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (162,"Achocolatado","401.0","4.2","91.2","3.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (163,"Açúcar","386.6","0.3","99.5","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (164,"Chocolate","539.6","7.2","59.6","2.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (165,"Doce","306.3","5.5","59.5","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (166,"Geléia","106.1","2.1","24.2","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (167,"Maria mole","306.6","3.9","75.1","0.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (168,"Mel","309.2","0.0","84.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (169,"Café","418.6","14.7","65.8","51.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (170,"Fermento em pó","89.7","0.5","43.9","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (171,"Fermento","89.8","17.0","7.7","4.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (172,"Sal","0.0","0.0","0.0","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (174,"Chantilly","315.0","0.5","16.9","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (175,"Leite","166.2","1.0","2.2","0.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (176,"Maionese","302.2","0.6","7.9","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (177,"Acarajé","289.2","8.3","19.1","9.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (178,"Baião de dois","135.7","6.2","20.4","5.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (179,"Charuto","78.2","6.8","10.1","1.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (180,"Cuscuz","142.1","2.6","22.5","2.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (181,"Cuxá","80.1","5.6","5.7","3.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (184,"Salada","35.4","2.0","7.1","2.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (185,"Salpicão","147.9","13.9","4.6","0.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (186,"Tacacá","46.9","7.0","3.4","0.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (187,"Tapioca","347.8","0.1","63.6","0.0");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (188,"Tucupi","27.2","2.1","4.7","0.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (189,"Vatapá","254.9","6.0","9.7","1.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (190,"Amendoim","605.8","22.5","18.7","7.8");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (191,"Ervilha","73.8","4.6","13.4","5.1");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (193,"Grão-de-bico","354.7","21.2","57.9","12.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (194,"Guandu","344.1","19.0","64.0","21.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (195,"Lentilha","339.1","23.2","62.0","16.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (196,"Paçoca","486.9","16.0","52.4","7.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (197,"Pé-de-moleque","503.2","13.2","54.7","3.4");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (198,"Soja","404.0","36.0","38.4","20.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (199,"Amêndoa","580.7","18.6","29.5","11.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (200,"Castanha-de-caju","570.2","18.5","29.1","3.7");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (201,"Castanha-do-Brasil","643.0","14.5","15.1","7.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (203,"Gergelim","583.5","21.2","21.6","11.9");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (204,"Linhaça","495.1","14.1","43.3","33.5");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (205,"Pinhão","174.4","3.0","43.9","15.6");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (206,"Pupunha","218.5","2.5","29.6","4.3");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (207,"Noz","620.1","14.0","18.4","7.2");
INSERT INTO food (id_alimento, food_name, kcal, protein, carbohydrate, fiber) VALUES (208,"Banana","98","1.3","26.0","2.0");

CREATE TABLE meal_food(
    id INT PRIMARY KEY AUTO_INCREMENT,
    meal_id INT NOT NULL,
    food_id INT NOT NULL,
    image LONGTEXT,
    FOREIGN KEY (meal_id) REFERENCES meal(id),
    FOREIGN KEY (food_id) REFERENCES food(id_alimento)
);

CREATE VIEW trained_foods AS
SELECT id_alimento, food_name, kcal, protein, carbohydrate, fiber
FROM food
WHERE id_alimento IN (1,94,45,4,11,208,18,19,14,15,23,28,29,31,37,49,57,66,92,96);