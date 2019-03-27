create database JEM;
use JEM;

create schema RentAJEM;  

create table RentAJEM.clientes(
	cedula int NOT NULL,
	telefono int NOT NULL,
	email varchar(20) NOT NULL,
	nombre varchar(12) NOT NULL,
	apellido1 varchar(12) NOT NULL,
	apellido2 varchar(12) NOT NULL,
	fotografia varbinary (max) NOT NULL,
	idProvincia int NOT NULL,
	idCanton int NOT NULL,
	idDistrito int NOT NULL,
	idSenas int NOT NULL,
);

create table RentAJEM.provincia(
	idProvincia int NOT NULL,
	provincias varchar(12),
);

create table RentAJEM.canton(
	idCanton int NOT NULL,
	cantones varchar(30),
);

create table RentAJEM.distrito(
	idDistrito int NOT NULL,
	distritos varchar(30) NOT NULL,
);

create table RentAJEM.senas(
	idSenas int NOT NULL,
	senas varchar NOT NULL,
);

ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientes_PK PRIMARY KEY (cedula);
ALTER TABLE RentAJEM.provincia ADD CONSTRAINT provincia_PK PRIMARY KEY (idProvincia);
ALTER TABLE RentAJEM.canton ADD CONSTRAINT canton_PK PRIMARY KEY (idCanton);
ALTER TABLE RentAJEM.distrito ADD CONSTRAINT distrito_PK PRIMARY KEY (idDistrito);
ALTER TABLE RentAJEM.senas ADD CONSTRAINT senas_PK PRIMARY KEY (idSenas);

ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesProvincia_FK FOREIGN KEY (idProvincia) REFERENCES RentAJEM.provincia (idProvincia);
ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesCanton_FK FOREIGN KEY (idCanton) REFERENCES RentAJEM.canton (idCanton);
ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesDistrito_FK FOREIGN KEY (idDistrito) REFERENCES RentAJEM.distrito (idDistrito);
ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesSenas_FK FOREIGN KEY (idSenas) REFERENCES RentAJEM.senas (idSenas);

create table RentAJEM.empresa(
	cedJuridica int NOT NULL,
	telefono int NOT NULL,
	idRazonSocial int NOT NULL,
	idProvincia int NOT NULL,
	idCanton int NOT NULL,
	idDistrito int NOT NULL,
	idSenas int NOT NULL,
);

create table RentAJEM.empresaRazonSocial(
	idRazonSocial int NOT NULL,
	RazonesSociales varchar(10) NOT NULL,
);

ALTER TABLE RentAJEM.empresa ADD CONSTRAINT empresa_PK PRIMARY KEY (cedJuridica);
ALTER TABLE RentAJEM.empresaRazonSocial ADD CONSTRAINT razonSocial_PK PRIMARY KEY (idRazonSocial);

ALTER TABLE RentAJEM.empresa ADD CONSTRAINT empresaRazonSocial_FK FOREIGN KEY (idRazonSocial) REFERENCES RentAJEM.empresaRazonSocial (idRazonSocial);
ALTER TABLE RentAJEM.empresa ADD CONSTRAINT empresaProvincia_FK FOREIGN KEY (idProvincia) REFERENCES RentAJEM.provincia (idProvincia);
ALTER TABLE RentAJEM.empresa ADD CONSTRAINT empresaCanton_FK FOREIGN KEY (idCanton) REFERENCES RentAJEM.canton (idCanton);
ALTER TABLE RentAJEM.empresa ADD CONSTRAINT empresaDistrito_FK FOREIGN KEY (idDistrito) REFERENCES RentAJEM.distrito (idDistrito);
ALTER TABLE RentAJEM.empresa ADD CONSTRAINT empresaSenas_FK FOREIGN KEY (idSenas) REFERENCES RentAJEM.senas (idSenas);

INSERT INTO RentAJEM.empresaRazonSocial (idRazonSocial,RazonesSociales) VALUES (1, 'S.A'),(2, 'S.R.L'),(3, 'E.I.R.L'),(4, 'Comandita'),(5, 'Individual'),(6, 'Colectiva');

create table RentAJEM.reserva(
	idReserva int identity(1,1) NOT NULL,
	fechaInicial int NOT NULL,
	fechaFinal int NOT NULL,
	fechaSolicitud int NOT NULL,
	idSedeEntrega int NOT NULL,
	idSedeRecogida int NOT NULL,
	idServiciosAdicionales int NOT NULL,
	idOperador int NOT NULL,
);

create table RentAJEM.sede(
	idSedes int NOT NULL,
	sedes varchar (40) NOT NULL,
);

create table RentAJEM.operador(
	idOperador int NOT NULL,
	operadores varchar (40) NOT NULL,
);

create table RentAJEM.servicioAdicional(
	idServiciosAdicionales int NOT NULL,
	serviciosA varchar (40) NOT NULL,
);

ALTER TABLE RentAJEM.reserva ADD CONSTRAINT reserva_PK PRIMARY KEY (idReserva);
ALTER TABLE RentAJEM.sede ADD CONSTRAINT sede_PK PRIMARY KEY (idSedes);
ALTER TABLE RentAJEM.operador ADD CONSTRAINT operador_PK PRIMARY KEY (idOperador);
ALTER TABLE RentAJEM.servicioAdicional ADD CONSTRAINT servicioAdicional_PK PRIMARY KEY (idServiciosAdicionales);

ALTER TABLE RentAJEM.reserva ADD CONSTRAINT reservaSedeR_FK FOREIGN KEY (idSedeRecogida) REFERENCES RentAJEM.sede (idSedes);
ALTER TABLE RentAJEM.reserva ADD CONSTRAINT reservaSedeE_FK FOREIGN KEY (idSedeEntrega) REFERENCES RentAJEM.sede (idSedes);
ALTER TABLE RentAJEM.reserva ADD CONSTRAINT reservaOperador_FK FOREIGN KEY (idOperador) REFERENCES RentAJEM.operador (idOperador);
ALTER TABLE RentAJEM.reserva ADD CONSTRAINT reservaServicioAdicional_FK FOREIGN KEY (idServiciosAdicionales) REFERENCES  RentAJEM.servicioAdicional (idServiciosAdicionales);