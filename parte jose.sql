
use JEM;

create table RentAJEM.licencia(
numeroLicencia int not null,
cedulaCliente int not null,
tipoLicencia int not null,
fechaEmision time not null,
fechaExpiracion time not null,
imagenLicencia varbinary(max),
)

create table RentAJEM.tipoLicencia(
idTipo int not null,
tipo varchar(12) not null,
)

create table RentAJEM.usuarios(
idUsuario int not null,
nombreUsuario varchar(30) not null,
contrasenaUsuario varchar(30) not null
)

create table RentAJEM.factura (
numeroFactura int IDENTITY(1,1) not null,
cedulaCliente int not null,
placaVehiculo int not null,
costoTotal money,
)

ALTER TABLE RentAJEM.licencia ADD CONSTRAINT licencia_PK PRIMARY KEY (numero,cedula);
ALTER TABLE RentAJEM.tipoLicencia ADD CONSTRAINT tipoLicencia_PK PRIMARY KEY (idTipo);
ALTER TABLE RentAJEM.usuarios ADD CONSTRAINT usuario_PK PRIMARY KEY(idUsuario);
ALTER TABLE RentAJEM.factura ADD CONSTRAINT factura_PK PRIMARY KEY(numeroFactura);

ALTER TABLE RentAJEM.licencia ADD CONSTRAINT licenciaClientes_FK FOREIGN KEY (cedulaCliente) REFERENCES RentAJEM.clientes(cedula);
ALTER TABLE RentAJEM.licencia ADD CONSTRAINT licenciaTipoLicencia_FK FOREIGN KEY (tipoLicencia) REFERENCES RentAJEM.tipoLicencia(idTipo);

ALTER TABLE RentAJEM.factura ADD CONSTRAINT facturaClientes_FK FOREIGN KEY (cedulaCliente) REFERENCES RentAJEM.clientes(cedula);
ALTER TABLE RentAJEM.factura ADD CONSTRAINT facturaVehiculo_FK FOREIGN KEY (placaVehiculo) REFERENCES RentAJEM.vehiculo(placa);
