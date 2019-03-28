create database JEM;
use JEM;

create schema RentAJEM;  

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
	idTipoTransicion int NOT NULL,
	tipo varchar(30) NOT NULL,
);

create table RentAJEM.estado(
	idEstado int NOT NULL,
	estado varchar(30) NOT NULL,
);

ALTER TABLE RentAJEM.vehiculo ADD CONSTRAINT vehiculo_PK PRIMARY KEY (placa);
ALTER TABLE RentAJEM.estilo ADD CONSTRAINT estilo_PK PRIMARY KEY (idEstilo;
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

create table RentAJEM.servicioMantenimiento(
	idServicio int NOT NULL,
	fechaInicio time NOT NULL,
	fechaFin time NOT NULL,
	montoPago int NOT NULL,
	detalleServicio int NOT NULL,
	idTipoServicio int NOT NULL,
	idCedJuridica int NOT NULL,
);

create table RentAJEM.tipoServicio(
	idTipoServicio int NOT NULL,
	tipo varchar(10) NOT NULL,
);

ALTER TABLE RentAJEM.servicioMantenimiento ADD CONSTRAINT servicioMantenimiento_PK PRIMARY KEY (idServicio);
ALTER TABLE RentAJEM.tipoServicio ADD CONSTRAINT tipoServicio_PK PRIMARY KEY (idTipoServicio);

ALTER TABLE RentAJEM.servicioMantenimiento ADD CONSTRAINT servicioMantenimientoTipoServicio_FK FOREIGN KEY (idTipoServicio) REFERENCES RentAJEM.servicioMantenimientoTipoServicio (idTipoServicio);
