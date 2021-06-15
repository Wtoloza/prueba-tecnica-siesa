-- Listar todas las mascotas
SELECT * FROM public.mascota

--Listar mascotas que no han sido adoptadas
SELECT * 
FROM public.mascota
WHERE propietario IS NULL 

--Listar número de mascotas por cada tipo de mascota
SELECT descripcion, COUNT(*)
FROM tipo_mascota
JOIN mascota ON (tipo_mascota.id_tipo_mascota = mascota.tipo_mascota)
GROUP BY descripcion

--Listar propietarios que tengan más de una mascota
SELECT COUNT(mascota.propietario), propietario.nombre
FROM mascota
RIGHT JOIN propietario ON (propietario.id_propietrario = mascota.propietario)
WHERE mascota.propietario > 1
GROUP BY propietario.nombre
ORDER BY COUNT(mascota.propietario) DESC

--Listar el número de mascotas por cada tipo de mascota y por cada propietario
SELECT propietario.nombre, descripcion, COUNT(*)
FROM mascota
JOIN tipo_mascota ON (tipo_mascota.id_tipo_mascota = mascota.tipo_mascota)
JOIN propietario ON (propietario.id_propietrario = mascota.propietario)
GROUP BY descripcion, propietario.nombre

--Listar propietarios que no tienen mascotas
SELECT propietario.nombre
FROM propietario
LEFT JOIN mascota ON (propietario.id_propietrario = mascota.propietario)
WHERE id_mascota IS NULL