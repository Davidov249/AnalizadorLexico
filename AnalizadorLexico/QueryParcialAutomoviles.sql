


--tiempo promedio de revisiones en el utlimo trimestre

select avg(DATEDIFF(hour, a.hora_inicio, a.hora_fin)) as promedio_tiempo
from DETALLE_REVISION a inner join REVISION b on a.id_revision = b.id_revision
where DATEDIFF(month, b.fecha_revision, getdate()) <= 3 

--listado de clientes con sus respectivas compras

select a.nombres, b.placa, b.marca, b.modelo
from CLIENTE a inner join AUTOMOVIL b on a.dpi = b.comprador
group by a.nombres, b.placa, b.marca, b.modelo, b.comprador
order by b.comprador

--Cantidad de operaciones por vehiculo, que hayan utilizado por lo menos 2 materiales

select count(1) as cantidad_operaciones
from REVISION a inner join DETALLE_REVISION b on a.id_revision = b.id_revision
				inner join OPERACION c on c.id_operacion = b.id_operacion
				inner join DETALLE_OPERACION d on d.id_operacion = c.id_operacion
where d.id_operacion in (select	ed.id_operacion from DETALLE_OPERACION ed group by ed.id_operacion having count(ed.id_material) > 1)