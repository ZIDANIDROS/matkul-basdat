CREATE TABLE NASABAH(
    NasabahID INTEGER PRIMARY KEY,
    NamaNasabah varchar(25),
    Alamat varchar(50),
    NomorIdentitas INTEGER,
    unique key NIK (NomorIdentitas)
);

CREATE TABLE mbangking_app(
    NoRekening INTEGER PRIMARY KEY,
    NamaNasabah varchar(25),
    Saldo INTEGER
);

CREATE TABLE login(
    idLogin INTEGER PRIMARY KEY AUTO_INCREMENT,
    Date DATETIME,
    NasabahID INTEGER NOT NULL,
    noRekening INTEGER NOT NULL,
    
    CONSTRAINT fk_login_nasabah foreign key (NasabahID) references nasabah (NasabahID),

    CONSTRAINT fk_login_mbangking_app foreign key (NoRekening) references mbangking_app (NoRekening)
);

INSERT INTO NASABAH VALUES
(101,'Husein Zidan', 'Jalan Merdeka 123, Menteng, Jakarta Pusat', 231231),
(102,'Zahra Jane Arnecia', 'Jalan Cendana 45, Kelapa Gading, Jakarta Utara', 231232),
(103,'Michael Johnson', 'Jalan Kebon Sirih 67, Gambir, Jakarta Pusat', 231233),
(104,'Emily Davis', 'Jalan Sudirman 89, Kuningan, Jakarta Selatan', 231234),
(105,'William Wilson', 'Jalan Gatot Subroto 101, Senayan, Jakarta Pusat', 231235),
(106,'Olivia Martinez', 'Jalan Thamrin 111, Tanah Abang, Jakarta Pusat', 231236),
(107,'Daniel Anderson', 'Jalan HR Rasuna Said 131, Setiabudi, Jakarta Selatan', 231237),
(108,'Sophia Thomas', 'Jalan Kemang 151, Mampang Prapatan, Jakarta Selatan', 231238),
(109,'David Taylor', 'Jalan Fatmawati 171, Cilandak, Jakarta Selatan', 231239),
(110,'Emma Garcia', 'Jalan Hayam Wuruk 191, Sawah Besar, Jakarta Pusat', 231240);

INSERT INTO mbangking_app VALUES
(17632478,'Husein Zidan', 5000000),
(12387347,'Zahra Jane Arnecia', 1000000),
(13445789,'Michael Johnson', 5200000),
(15985791,'Emily Davis', 10000000),
(16589717,'William Wilson', 85000000),
(14877524,'Olivia Martinez', 2000000),
(18896147,'Daniel Anderson', 1000000),
(14676789,'Sophia Thomas', 55000000),
(13868715,'David Taylor', 5300000),
(15958756,'Emma Garcia', 68000000);

INSERT INTO login VALUES
('','2023-12-01',101, 17632478),
('','2023-12-02',102, 12387347),
('','2023-12-03',103, 13445789),
('','2023-12-04',104, 15985791),
('','2023-12-05',105, 16589717),
('','2023-12-06',106, 14877524),
('','2023-12-07',107, 18896147),
('','2023-12-08',108, 14676789),
('','2023-12-09',109, 13868715),
('','2023-12-10',110, 15958756);




CREATE TABLE NasabahLain(
    RekeningSecNasabah INTEGER PRIMARY KEY,
    Nama varchar(25),
    Jumlah INTEGER
);
INSERT INTO NasabahLain VALUES 
(1569875, 'Natasya Kay', 9000000),
(2547981, 'Lia Arnior', 5000000),
(8746522, 'Mia Nayeon', 4500000),
(5622147, 'Nayya Cameron', 2000000),
(8547914, 'Clara Theressia', 7000000),
(9965124, 'Kesya Carnoven' ,  8000000),
(8566147, 'Kay Vallery', 6000000),
(5621477, 'Brandon Carl', 5200000),
(3659627, 'Dasya Andrea', 7500000),
(2256974, 'Mike Jeremy', 3000000);
CREATE TABLE mentransfer(
    TransferID INTEGER PRIMARY KEY,
    Date DATETIME,
    Nominal INTEGER NOT NULL,
    NoRekening INTEGER NOT NULL,
    RekeningSecNasabah INTEGER NOT NULL,

    CONSTRAINT fk_mentransfer_nasabahlain foreign key (RekeningSecNasabah) references NasabahLain (RekeningSecNasabah),

    CONSTRAINT fk_mentransfer_mbangking_app foreign key (NoRekening) references mbangking_app (NoRekening)
);
INSERT INTO menTransfer VALUES 
(501, '2023-12-1', 9000000, 12387347, 1569875),
(502, '2023-12-2', 5000000, 13445789, 2547981),
(503, '2023-12-3', 4500000, 13868715, 8746522),
(504, '2023-12-4', 2000000, 14676789, 5622147),
(505, '2023-12-5', 7000000, 14877524, 8547914),
(506, '2023-12-6', 8000000, 15958756, 9965124),
(507, '2023-12-7', 6000000, 15985791, 8566147),
(508, '2023-12-8', 5200000, 16589717, 5621477),
(509, '2023-12-9', 7500000, 17632478, 3659627),
(510, '2023-12-10', 3000000, 18896147, 2256974),
(511, '2023-12-2', 8000000, 12387347, 1569875),
(512, '2023-12-2', 5000000, 13445789, 2547981),
(513, '2023-12-4', 4500000, 13868715, 8746522),
(514, '2023-12-4', 1000000, 14676789, 5622147),
(515, '2023-12-5', 7000000, 14877524, 8547914),
(516, '2023-12-7', 9000000, 15958756, 9965124),
(517, '2023-12-7', 6000000, 15985791, 8566147),
(518, '2023-12-7', 8200000, 16589717, 5621477),
(519, '2023-12-9', 7500000, 17632478, 3659627),
(520, '2023-12-10', 3000000, 18896147, 2256974);


CREATE TABLE Mitra(
    MitraID INTEGER PRIMARY KEY,
    NamaMitra varchar(25),
    Jumlah INTEGER
);
INSERT INTO Mitra VALUES
(201, 'PT Luminous', 9000000),
(202, 'PT Jaya', 5000000),
(203, 'PT Scarlettio', 4500000),
(204, 'PT Husein', 2000000),
(205, 'PT Zidan',  7000000),
(206, 'PT Bam', 8000000),
(207, 'PT Bina Agrosiwi Mandiri', 6000000),
(208, 'PT IDX', 5200000),
(209, 'PT Tesla', 7500000),
(210, 'PT Samsung', 3000000);
CREATE TABLE memBayar(
    membayarID INTEGER PRIMARY KEY,
    Date DATETIME,
    Nominal INTEGER NOT NULL,
    NoRekening INTEGER NOT NULL,
    MitraID INTEGER NOT NULL,

    CONSTRAINT fk_memBayar_mitra foreign key (MitraID) references Mitra (MitraID),

    CONSTRAINT fk_memBayar_mbangking_app foreign key (NoRekening) references mbangking_app (NoRekening)
);
INSERT INTO memBayar VALUES 
(701, '2023-12-1', 9000000, 12387347, 201),
(702, '2023-12-2', 5000000, 13445789, 202),
(703, '2023-12-3', 4500000, 13868715, 203),
(704, '2023-12-4', 2000000, 14676789, 204),
(705, '2023-12-5', 7000000, 14877524, 205),
(706, '2023-12-6', 8000000, 15958756, 206),
(707, '2023-12-7', 6000000, 15985791, 207),
(708, '2023-12-8', 5200000, 16589717, 208),
(709, '2023-12-9', 7500000, 17632478, 209),
(710, '2023-12-10', 3000000, 18896147, 210),
(711, '2023-12-2', 8000000, 12387347, 201),
(712, '2023-12-2', 5000000, 13445789, 202),
(713, '2023-12-4', 4500000, 13868715, 203),
(714, '2023-12-4', 1000000, 14676789, 204),
(715, '2023-12-5', 7000000, 14877524, 205),
(716, '2023-12-7', 9000000, 15958756, 206),
(717, '2023-12-7', 6000000, 15985791, 207),
(718, '2023-12-7', 8200000, 16589717, 208),
(719, '2023-12-9', 7500000, 17632478, 209),
(720, '2023-12-10', 3000000, 18896147, 210);


CREATE TABLE Pajak(
    pajakID INTEGER PRIMARY KEY,
    Jumlah INTEGER,
    NamaPajak varchar(25)
);
INSERT INTO Pajak VALUES
(401, 9000000, 'AC'),
(402, 5000000, 'Mobil'),
(403, 4500000, 'Sepda Motor'),
(404, 2000000, 'Listrik'),
(405, 7000000, 'Rumah'),
(406, 8000000, 'Tanah'),
(407, 6000000, 'Rumah ke2'),
(408, 5200000, 'Mandiri Admin'),
(409, 7500000, 'Emas Antam'),
(410, 3000000, 'Bca Admin');
CREATE TABLE biayaBulanan(
    BiayaBulananID INTEGER PRIMARY KEY,
    Date DATETIME,
    Nominal INTEGER NOT NULL,
    NoRekening INTEGER NOT NULL,
    pajakID INTEGER NOT NULL,

    CONSTRAINT fk_BiayaBulanan_pajak foreign key (pajakID) references pajak (pajakID),

    CONSTRAINT fk_BiayaBulanan_mbangking_app foreign key (NoRekening) references mbangking_app (NoRekening)
);
INSERT INTO biayaBulanan VALUES 
(901, '2023-12-1', 9000000, 12387347, 401),
(902, '2023-12-2', 5000000, 13445789, 402),
(903, '2023-12-3', 4500000, 13868715, 403),
(904, '2023-12-4', 2000000, 14676789, 404),
(905, '2023-12-5', 7000000, 14877524, 405),
(906, '2023-12-6', 8000000, 15958756, 406),
(907, '2023-12-7', 6000000, 15985791, 407),
(908, '2023-12-8', 5200000, 16589717, 408),
(909, '2023-12-9', 7500000, 17632478, 409),
(910, '2023-12-10', 3000000, 18896147, 410),
(911, '2023-12-1', 9000000, 12387347, 401),
(912, '2023-12-2', 5000000, 13445789, 402),
(913, '2023-12-3', 4500000, 13868715, 403),
(914, '2023-12-4', 2000000, 14676789, 404),
(915, '2023-12-5', 6000000, 14877524, 405),
(916, '2023-12-5', 8000000, 15958756, 406),
(917, '2023-12-7', 7000000, 15985791, 407),
(918, '2023-12-8', 2200000, 16589717, 408),
(919, '2023-12-9', 7500000, 17632478, 409),
(920, '2023-12-10', 3000000, 18896147, 410);

CREATE TABLE pay(
    PayID INTEGER PRIMARY KEY,
    NamaPay varchar(25),
    Jumlah INTEGER
);
INSERT INTO Pay VALUES
(301, 'Gopay', 9000000),
(302, 'GrabPay',  5000000),
(303, 'Ovo', 4500000),
(304, 'ApplePay', 2000000),
(305, 'Dana',  7000000),
(306, 'SamsungPay',  8000000),
(307, 'PayPal', 6000000),
(308, 'We Chat Pay', 5200000),
(309, 'Grab Pay', 7500000),
(310, 'CashApp', 3000000);
CREATE TABLE mentopup(
    TopupID INTEGER PRIMARY KEY,
    Date DATETIME,
    Nominal INTEGER NOT NULL,
    NoRekening INTEGER NOT NULL,
    PayID INTEGER NOT NULL,

    CONSTRAINT fk_menTopup_pay foreign key (PayID) references pay (PayID),

    CONSTRAINT fk_menTopup_mbangking_app foreign key (NoRekening) references mbangking_app (NoRekening)
);
INSERT INTO mentopup VALUES
(801, '2023-12-1', 10000,12387347,301),
(802,'2023-12-2', 20000, 13445789, 302),
(803,'2023-12-3', 500000, 13868715,303),
(804, '2023-12-4',100000,14676789,304),
(805, '2023-12-5', 50000 ,14877524, 305),
(806, '2023-12-6', 200000, 15958756, 306),
(807, '2023-12-7', 50000, 15985791, 307),
(808, '2023-12-8', 15000, 16589717, 308),
(809, '2023-12-9', 40000, 17632478, 307),
(810,'2023-12-10', 12000, 18896147, 308),
(811, '2023-12-1', 10000,12387347,301),
(812,'2023-12-1', 30000, 13445789, 302),
(813,'2023-12-1', 200000, 13868715,303),
(814, '2023-12-3',100000,14676789,304),
(815, '2023-12-3', 40000 ,14877524, 305),
(816, '2023-12-5', 200000, 15958756, 306),
(817, '2023-12-3', 60000, 15985791, 307),
(818, '2023-12-9', 25000, 16589717, 308),
(819, '2023-12-9', 50000, 17632478, 307),
(820,'2023-12-10', 12000, 18896147, 308);
