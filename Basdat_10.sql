--Query :
CREATE TABLE Persons (
    idPerson INT(5) PRIMARY KEY,
    NamaPerson VARCHAR(12),
    alamat VARCHAR(100)
);

CREATE TABLE Transaksi (
    idTransaksi INT(5) PRIMARY KEY,
    idAdmin INT(5) UNIQUE,
    idPerson INT(5) UNIQUE,
    idKursi INT(5) UNIQUE,
    Rp DECIMAL(10, 2)
);

CREATE TABLE admin (
    idAdmin INT(5) PRIMARY KEY,
    NamaAdmin VARCHAR(12),
    `date` DATE
);

CREATE TABLE Kursi (
    idKursi INT(5) PRIMARY KEY
);

CREATE TABLE Gerbang (
    idTransaksi INT UNIQUE,
    Gate ENUM('A', 'B', 'C', 'D')
);

--Constrains :
ALTER TABLE persons
ADD CONSTRAINT fk_kuris_idPerson FOREIGN KEY (idPerson) REFERENCES Transaksi(idPerson);

ALTER TABLE Transaksi
ADD CONSTRAINT fk_Transaksi_idTransaksi FOREIGN KEY (idTransaksi) REFERENCES Gerbang(idTransaksi);

ALTER TABLE admin
ADD CONSTRAINT fk_Admin_idAdmin FOREIGN KEY (idAdmin) REFERENCES Transaksi(idAdmin);

ALTER TABLE kursi
ADD CONSTRAINT fk_Kursi_idKursi FOREIGN KEY (idKursi) REFERENCES Transaksi(idKursi);

--Record :
INSERT INTO Persons (idPerson, NamaPerson, alamat)
VALUES 
(1, 'John', '123 Main Street'),
(2, 'Alice', '456 Elm Street'),
(3, 'Bob', '789 Oak Street'),
(4, 'Eve', '111 Pine Street'),
(5, 'Charlie', '222 Maple Street'),
(6, 'Grace', '333 Cedar Street'),
(7, 'David', '444 Birch Street'),
(8, 'Fiona', '555 Walnut Street'),
(9, 'George', '666 Elm Street'),
(10, 'cinuma', '43242 Elm Street');

INSERT INTO Transaksi (idTransaksi, idAdmin, idPerson, idKursi, Rp)
VALUES 
(1, 1, 1, 1, 150.00),
(2, 2, 2, 2, 200.50),
(3, 3, 3, 3, 175.25),
(4, 4, 4, 4, 220.00),
(5, 5, 5, 5, 190.75),
(6, 6, 6, 6, 215.50),
(7, 7, 7, 7, 165.25),
(8, 8, 8, 8, 180.00),
(9, 9, 9, 9, 195.50),
(10, 10, 10, 10, 185.25);

INSERT INTO admin (idAdmin, NamaAdmin, `date`)
VALUES 
(1, 'John', '2023-01-01'),
(2, 'Chena', '2023-02-02'),
(3, 'Makro', '2023-03-03'),
(4, 'asdasd', '2023-01-01'),
(5, 'ahmad', '2023-02-02'),
(6, 'joko', '2023-03-03'),
(7, 'eka', '2023-01-01'),
(8, 'adi', '2023-02-02'),
(9, 'desty', '2023-03-03'),
(10, 'makarena', '2023-03-03');

INSERT INTO Kursi (idKursi)
VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

INSERT INTO Gerbang (idTransaksi, Gate)
VALUES 
INSERT INTO Gerbang (idTransaksi, Gate)
VALUES 
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'A'),
(5, 'B'),
(6, 'C'),
(7, 'A'),
(8, 'B'),
(9, 'C'),
(10, 'A');
