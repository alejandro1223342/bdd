SELECT cedula_empleado,fecha,hora FROM registros_entrada;

select hora from registros_entrada where hora > '08:00:00'

select * from registros_entrada where hora between '07:00:00' and '14:00:00'