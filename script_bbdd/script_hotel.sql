
DROP TABLE CORE_HABITACION CASCADE CONSTRAINTS;
DROP TABLE CORE_CATEGORIA_HABITACION CASCADE CONSTRAINTS;
DROP TABLE CORE_HOTEL CASCADE CONSTRAINTS;


CREATE TABLE CORE_HOTEL (
    cod_hotel NUMBER(1) NOT NULL,
    nombre    VARCHAR2(50) NOT NULL,
    direccion VARCHAR2(200) NOT NULL
);

ALTER TABLE CORE_HOTEL ADD CONSTRAINT PK_HOT_COD PRIMARY KEY ( cod_hotel );


CREATE TABLE CORE_CATEGORIA_HABITACION(
    cod_categoria         NUMBER(2) NOT NULL,
    descripcion_categoria VARCHAR2(50) NOT NULL,
    precio                NUMBER(7) NOT NULL
);

ALTER TABLE CORE_CATEGORIA_HABITACION ADD CONSTRAINT PK_CAT_COD PRIMARY KEY ( cod_categoria );


CREATE TABLE CORE_HABITACION (
    cod_habitacion      NUMBER(3) NOT NULL,
    descripcion_general VARCHAR2(300) NOT NULL,
    capacidad           NUMBER(2) NOT NULL,
    piso                NUMBER(2) NOT NULL,
    equipamiento        VARCHAR2(300) NOT NULL,
    img1_habitacion     VARCHAR2(200),
    img2_habitacion     VARCHAR2(200),
    img3_habitacion     VARCHAR2(200),
    cod_hotel           NUMBER(1) NOT NULL,
    cod_categoria       NUMBER(2) NOT NULL
);

ALTER TABLE CORE_HABITACION ADD CONSTRAINT PK_HAB_COD PRIMARY KEY ( cod_habitacion );


ALTER TABLE CORE_HABITACION
    ADD CONSTRAINT FK_HAB_CAT FOREIGN KEY ( cod_categoria )
        REFERENCES CORE_CATEGORIA_HABITACION ( cod_categoria );

ALTER TABLE CORE_HABITACION
    ADD CONSTRAINT FK_HAB_HOT FOREIGN KEY ( cod_hotel )
        REFERENCES CORE_HOTEL ( cod_hotel );


INSERT INTO CORE_HOTEL VALUES(1, 'Hotel Pacific Reef', 'San Martin 50, Vi�a del Mar');

INSERT INTO CORE_CATEGORIA_HABITACION VALUES(1, 'Turista', '30000');
INSERT INTO CORE_CATEGORIA_HABITACION VALUES(2, 'Premium', '70000');

INSERT INTO CORE_HABITACION VALUES(11, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(12, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(13, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(14, 'Habitaci�n turista', 2, 1, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(21, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(22, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(23, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(24, 'Habitaci�n turista', 2, 2, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(31, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(32, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(33, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(34, 'Habitaci�n turista', 2, 3, 'Equpado con 1 cama de 2 plazas, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(41, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(42, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(43, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(44, 'Habitaci�n turista', 2, 4, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(51, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(52, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(53, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(54, 'Habitaci�n turista', 2, 5, 'Equpado con 2 camas individuales, ba�o personal, televisi�n, cable', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 1);
INSERT INTO CORE_HABITACION VALUES(61, 'Habitaci�n premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.','habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(62, 'Habitaci�n premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(63, 'Habitaci�n premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(64, 'Habitaci�n premium con vista al mar', 2, 6, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(71, 'Habitaci�n premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(72, 'Habitaci�n premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(73, 'Habitaci�n premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);
INSERT INTO CORE_HABITACION VALUES(74, 'Habitaci�n premium con vista al mar', 2, 7, 'Equpado con 2 camas de 2 plazas, ba�o personal, televisi�n full hd, cable, wifi, jacuzzi.', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 'habitaciones/img_habitacion_1.jpg', 1, 2);


COMMIT;