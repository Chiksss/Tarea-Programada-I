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

ALTER TABLE RentAJEM.senas ALTER COLUMN senas varchar(150);

ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientes_PK PRIMARY KEY (cedula);
ALTER TABLE RentAJEM.provincia ADD CONSTRAINT provincia_PK PRIMARY KEY (idProvincia);
ALTER TABLE RentAJEM.canton ADD CONSTRAINT canton_PK PRIMARY KEY (idCanton);
ALTER TABLE RentAJEM.distrito ADD CONSTRAINT distrito_PK PRIMARY KEY (idDistrito);
ALTER TABLE RentAJEM.senas ADD CONSTRAINT senas_PK PRIMARY KEY (idSenas);

ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesProvincia_FK FOREIGN KEY (idProvincia) REFERENCES RentAJEM.provincia (idProvincia);
ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesCanton_FK FOREIGN KEY (idCanton) REFERENCES RentAJEM.canton (idCanton);
ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesDistrito_FK FOREIGN KEY (idDistrito) REFERENCES RentAJEM.distrito (idDistrito);
ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesSenas_FK FOREIGN KEY (idSenas) REFERENCES RentAJEM.senas (idSenas);

ALTER TABLE RentAJEM.clientes ADD CONSTRAINT clientesEmailC UNIQUE​(email); 

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

create table RentAJEM.vehiculo(
	placa int NOT NULL,
	añoFabricacion int NOT NULL,
	idEstilo int NOT NULL,
	idColor int NOT NULL,
	idMarca int NOT NULL,
	capacidad int NOT NULL,
	kilometraje int NOT NULL,
	idCantPuertas int NOT NULL,
	vin int NOT NULL,
	mpg int NOT NULL,
	idSedePertenencia int NOT NULL,
	capacidadMaletero int NOT NULL,
	idTipoTransmision int NOT NULL,
	idEstado int NOT NULL,
);

create table RentAJEM.estilo(
	idEstilo int NOT NULL,
	estilos varchar(12),
);

create table RentAJEM.color(
	idColor int NOT NULL,
	colores varchar(30),
);

create table RentAJEM.marca(
	idMarca int NOT NULL,
	marcas varchar(30) NOT NULL,
);

create table RentAJEM.cantPuertas(
	idCantPuertas int NOT NULL,
	puertas int NOT NULL,
);

create table RentAJEM.sedePertenencia(
	idSedePertenencia int NOT NULL,
	sedes varchar(30) NOT NULL,
);

create table RentAJEM.tipoTransmision(
	idTipoTransmision int NOT NULL,
	tipo varchar(30) NOT NULL,
);

create table RentAJEM.estado(
	idEstado int NOT NULL,
	estado varchar(30) NOT NULL,
);

ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculo_PK PRIMARY KEY (placa);
ALTER TABLE RentAJEM.estilo ADD CONSTRAINT estilo_PK PRIMARY KEY (idEstilo);
ALTER TABLE RentAJEM.color ADD CONSTRAINT color_PK PRIMARY KEY (idColor);
ALTER TABLE RentAJEM.marca ADD CONSTRAINT marca_PK PRIMARY KEY (idMarca);
ALTER TABLE RentAJEM.cantPuertas ADD CONSTRAINT cantPuertas_PK PRIMARY KEY (idCantPuertas);
ALTER TABLE RentAJEM.tipoTransmision ADD CONSTRAINT tipoTransmision_PK PRIMARY KEY (idTipoTransmision);
ALTER TABLE RentAJEM.estado ADD CONSTRAINT estado_PK PRIMARY KEY (idEstado);

ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoEstilo_FK FOREIGN KEY (idEstilo) REFERENCES RentAJEM.estilo (idEstilo);
ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoColor_FK FOREIGN KEY (idColor) REFERENCES RentAJEM.color (idColor);
ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoMarca_FK FOREIGN KEY (idMarca) REFERENCES RentAJEM.marca (idMarca);
ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoCantPuertas_FK FOREIGN KEY (idCantPuertas) REFERENCES RentAJEM.cantPuertas (idCantPuertas);
ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoTipoTransmision_FK FOREIGN KEY (idTipoTransmision) REFERENCES RentAJEM.tipoTransmision (idTipoTransmision);
ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoEstado_FK FOREIGN KEY (idEstado) REFERENCES RentAJEM.estado (idEstado);

ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculoVinC UNIQUE​(​vin​); 

create table RentAJEM.servicioMantenimiento(
	idServicio int IDENTITY(1,1) NOT NULL,
	fechaInicio time NOT NULL,
	fechaFin time NOT NULL,
	montoPago int NOT NULL,
	detalleServicio varchar(100) NOT NULL,
	idTipoServicio int NOT NULL,
	idCedJuridica int NOT NULL,
);

create table RentAJEM.tipoServicio(
	idTipoServicio int NOT NULL,
	tipo varchar(20) NOT NULL,
);

ALTER TABLE RentAJEM.servicioMantenimiento ADD CONSTRAINT servicioMantenimiento_PK PRIMARY KEY (idServicio);
ALTER TABLE RentAJEM.tipoServicio ADD CONSTRAINT tipoServicio_PK PRIMARY KEY (idTipoServicio);

ALTER TABLE RentAJEM.servicioMantenimiento ADD CONSTRAINT servicioMantenimientoTipoServicio_FK FOREIGN KEY (idTipoServicio) REFERENCES RentAJEM.tipoServicio (idTipoServicio);

create table RentAJEM.licencia(
	numeroLicencia int not null,
	tipoLicencia int not null,
	fechaEmision date not null,
	fechaExpiracion date not null,
	imagenLicencia varbinary(max),
)

create table RentAJEM.tipoLicencia(
	idTipo int not null,
	tipo varchar(12) not null,
)

ALTER TABLE RentAJEM.licencia ADD CONSTRAINT licencia_PK PRIMARY KEY (numeroLicencia);
ALTER TABLE RentAJEM.tipoLicencia ADD CONSTRAINT tipoLicencia_PK PRIMARY KEY (idTipo);

ALTER TABLE RentAJEM.licencia ADD CONSTRAINT licenciaTipoLicencia_FK FOREIGN KEY (tipoLicencia) REFERENCES RentAJEM.tipoLicencia(idTipo);

create table RentAJEM.usuarios(
	idUsuario int IDENTITY(1,1) not null,
	nombreUsuario varchar(30) not null,
	contrasenaUsuario varchar(30) not null
)

ALTER TABLE RentAJEM.usuarios ADD CONSTRAINT usuario_PK PRIMARY KEY(idUsuario);

create table RentAJEM.factura (
	numeroFactura int IDENTITY(1,1) not null,
	cedula int not null,
	placa int not null,
	costoTotal money,
)

ALTER TABLE RentAJEM.factura ADD CONSTRAINT factura_PK PRIMARY KEY(numeroFactura);

ALTER TABLE RentAJEM.factura ADD CONSTRAINT facturaClientes_FK FOREIGN KEY (cedula) REFERENCES RentAJEM.clientes(cedula);
ALTER TABLE RentAJEM.factura ADD CONSTRAINT facturaVehiculo_FK FOREIGN KEY (placa) REFERENCES RentAJEM.vehiculo(placa);

create table RentAJEM.vehiculoReserva (
	idReserva int not null,
	placa int not null,
	PRIMARY KEY (idReserva, placa),
)

create table RentAJEM.vehiculoMantenimiento (
	idServicio int not null,
	placa int not null,
	PRIMARY KEY (idServicio, placa),
)

create table RentAJEM.mantenimientoEmpresa (
	idServicio int not null,
	cedJuridica int not null,
	PRIMARY KEY (idServicio, cedJuridica),
)
