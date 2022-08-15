#Crear un lista en Python denominado “Perro” que contenga los siguientes valores:
#13,  Puppy,  12/12/2012 , Macho, 123
#Que se corresponde con los datos de un perro de nuestra base de datos (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño).
#Modificar la fecha de nacimiento por 13/12/2012 y reemplazar “dni del dueño” por 28957346 .

perro = ["Puppy",  "12/12/2012" , "Macho", 123]
print("Datos del perro ",perro)
perro[1] = "13/12/2012" 
perro[3] = 28957346
print("Nuevos datos del perro",perro)