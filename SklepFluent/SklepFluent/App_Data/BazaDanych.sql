CREATE TABLE Kategoria
(
IdKategoria INT PRIMARY KEY IDENTITY(1,1) ,
NazwaKategoria VARCHAR(30) NOT NULL
)

CREATE TABLE Producent
(
IdProducent INT PRIMARY KEY IDENTITY(1,1),
NazwaProducenta VARCHAR(30) NOT NULL,
Opis VARCHAR(500)
)

CREATE TABLE SzybkoscPamieci
(
IdSzybkoscPamieci INT PRIMARY KEY IDENTITY(1,1),
Szybkosc INT NOT NULL
)

CREATE TABLE OpoznieniaPamieci
(
IdOpoznienia INT PRIMARY KEY IDENTITY(1,1),
Opoznienie VARCHAR(4) NOT NULL
)


CREATE TABLE Pamiec
(
IdPamiec INT PRIMARY KEY IDENTITY(1,1),
NazwaPamiec VARCHAR(50),
IdProducent INT NOT NULL,
IdKategoria INT NOT NULL,
IdSzybkoscPamieci INT NOT NULL,
IdOpoznienia INT NOT NULL,
Cena MONEY NOT NULL,
Opis VARCHAR(500),
CONSTRAINT FK_Pamiec_Producent FOREIGN KEY (IdProducent) REFERENCES Producent (IdProducent),
CONSTRAINT FK_Pamiec_Kategoria FOREIGN KEY (IdKategoria) REFERENCES Kategoria (IdKategoria), 
CONSTRAINT FK_Pamiec_Szybkosc FOREIGN KEY (IdSzybkoscPamieci) REFERENCES SzybkoscPamieci (IdSzybkoscPamieci), 
CONSTRAINT FK_Pamiec_Opoznienia FOREIGN KEY (IdOpoznienia) REFERENCES OpoznieniaPamieci (IdOpoznienia)
)


CREATE TABLE Procesor
(
IdProcesor INT PRIMARY KEY IDENTITY(1,1),
ProcesorNazwa VARCHAR(30) NOT NULL,
IloscRdzeni VARCHAR(15) NOT NULL,
IdProducent INT NOT NULL,
Cena MONEY NOT NULL,
Opis VARCHAR(500),
CONSTRAINT FK_Procesor_Producent FOREIGN KEY (IdProducent) REFERENCES Producent (IdProducent)
)




