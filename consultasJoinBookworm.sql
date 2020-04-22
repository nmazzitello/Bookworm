use normalizacion

-- 1) Listar para cada autor el Apellido y el Nombre, el sexo, el IDPais y el nombre del pa�s.
select a.nombreautor, a.sexo, a.idPais, p.nombrePais from autores as a
inner join paises as p
on a.idPais= p.idPais

-- 2) Listar para cada usuario el Apellido y nombre, el sexo, el nombre del pa�s de nacimiento y el nombre del tipo de usuario.
select u.nombre, u.apellido, u.genero, p.nombrePais, tu.nombreTipoUsuario from usuarios as u
inner join paises as p on u.idPais= p.idPais
inner join tipoUsuarios as tu on u.idTipoUsuario= tu.idTipoUsuario
  --DateDiff(Day, U.FechaReg, getdate())  As CantDias  --> calcula cantidad de dias desde que esta registrado hasta la actualidad

-- 3) Listar para cada libro el t�tulo, la cantidad de p�ginas, el precio y el nombre de la editorial. S�lo listar los libros que posean editorial registrada.
select l.nombreLibro, l.paginas, l.precio, e.nombreeditorial from libros as l
inner join editoriales as e on e.idEditorial=l.idEditorial

-- 4) Listar para cada libro el t�tulo, la cantidad de p�ginas, el precio y el nombre de la editorial. Listar todos los libros independientemente de si disponen editorial.
select l.paginas, l.nombreLibro, l.precio, e.nombreeditorial from libros as l
left join editoriales as e on e.idEditorial= l.idEditorial

-- 5) Listar para cada libro el t�tulo, la cantidad de p�ginas, el precio y el nombre de la editorial. Listar todas las editoriales independientemente de si disponen libros.
select l.paginas, l.nombreLibro, l.precio, e.nombreeditorial from libros as l
full join editoriales as e on e.idEditorial= l.idEditorial

-- 6) Listar para cada libro el t�tulo, el a�o, el precio, la cantidad de p�ginas y el nombre de los g�neros asociados al libro.


select l.nombreLibro, l.fechaEdicion, l.precio, l.paginas from libros as l
inner join generoPorLibro as gl on l.idLibro= gl.idLibro
left join generos as g on gl.idGenero= g.idGenero


select l.nombreLibro, l.fechaEdicion, l.precio, l.paginas from generoPorLibro as gl
left join libros as l on l.idLibro= gl.idLibro



select *from libros

select * from generoPorLibro


-- 7) Listar para cada libro el t�tulo, el a�o, el apellido y nombre del autor y el nombre del pa�s del autor.
-- 8) Listar para cada usuario el apellido y nombres, el email, el tipo de usuario y el nombre del pa�s, el sexo ('M' - Masculino, 'F' - Femenino, 'X' - Otro g�nero), la edad y la cantidad de d�as transcurridos desde la registraci�n.
-- 9) Listar para cada usuario el apellido y nombres y el nombre de sus bibliotecas. Solamente los usuarios que se hayan registrado hace menos de 1000 d�as.
-- 10) Listar el t�tulo del libro, el nombre del formato, la valoraci�n, la conservaci�n, la fecha de adquisici�n, el precio, el nombre de la biblioteca de los usuarios cuyo tipo de usuario sea 'Bibliotecarian'.
-- 11) Listar apellido y nombres, el t�tulo del libro y la cantidad de d�as que demor� el usuario en leerlo. S�lo aquellos que hayan finalizado la lectura.

-- 12) Listar el apellido y nombres sin repeticiones de los usuarios que registren al menos un libro en formato 'EPUB'.
-- 13) Listar el apellido y nombres de los usuarios y apellido y nombre de los autores cuyos libros el usuario haya finalizado la lectura. No repetir la combinaci�n de datos de usuario y autores.
-- 14) Listar apellido y nombres de los usuarios que no posean bibliotecas.
-- 15) Listar apellido y nombres de los usuarios que tengan alg�n libro sin terminar de leer. No repetir combinaci�n de apellido y nombres.
-- 16) Listar apellido y nombres de los autores que hayan recibido alguna calificaci�n de 8,00 o m�s en alguno de sus libros. No repetir combinaci�n de apellido y nombres.
-- 17) Listar para cada autor el apellido y nombres y los nombres de los g�neros de los libros que dicho autor escribi�. No repetir el mismo g�nero para el mismo autor.
-- 18) Listar el t�tulo del libro, el idioma (si lo tiene), la editorial (si la tiene) de los libros 5 con mejor calificaci�n individual.

-- 19) Listar los t�tulos de los libros sin idioma.
select *from libros where idIdioma is not NULL

-- 20) Listar para cada usuario el apellido y nombres y los idiomas de los libros que posee. No repetir la combinaci�n de usuario e idioma.
-- 21) Listar los apellidos y nombres de los usuarios que posean al menos un libro cuyo t�tulo contenga 'Historia' o cuyo g�nero contenga 'Edad media'
-- 22) Listar los apellidos y nombres de los usuarios que posean al menos un libro en Ingl�s pero que no lo hayan le�do a�n.
-- 23) Listar el nombre de las editoriales que tengan al menos un libro en Franc�s.
-- 24) Listar todos los t�tulos de los libros de autores cuyo pa�s de nacimiento sea Escocia o Austria.

-- 25) Listar apellido y nombre de los usuarios en una columna llamada Usuario, nombre de la biblioteca, t�tulo de los libros, apellido y nombre de los autores en una columna llamada Autor, idioma, nombre de los g�neros, nombre de la editorial, nombre del formato del libro, grado de valoraci�n y conservaci�n, fecha de adquisici�n y precio abonado, fecha de inicio, fin de lectura y cantidad de d�as en finalizar la lectura. El listado deber� figurar ordenado por usuario en primera instancia, nombre de biblioteca en segunda instancia y t�tulo del libro en tercera instancia. Incluir los usuarios que no posean bibliotecas y los datos de los libros que figuren en bibliotecas pero que no posean autor, editorial o g�nero.
-- NOTA: Si un libro tiene m�s de un autor o m�s de un g�nero, �stos datos deber�n aparecer en filas distintas. No se pretende que un registro se almacenen autores o g�neros separados por coma.
