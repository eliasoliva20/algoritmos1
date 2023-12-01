Proceso sin_titulo
	definir alumnos, carrera, grupo, salir Como Caracter;
	definir login, acceso, opcion2, promedio, pago Como Real;
	definir opcion, i, j, cont, cant  Como Entero;
	cont<-0;
	//	salir<-"no";
	
	dimension alumnos[100,4];
	Dimension carrera[100,4];
	para i<-0 hasta 10-1 con paso 1 hacer 
		para j<-0 hasta 4-1 con paso 1 hacer
			alumnos[i,j]<- ' ';
		FinPara
	FinPara
	
	
	Escribir " ||||||||||   ||||||||  |||||||||    ||||     ||      ||           ||   |||||||||    ||||     ||     ||||||  |||||||||       |||||||||        ";
	Escribir " ||        ||    ||     ||           || ||    ||       ||         ||    ||           || ||    ||       ||    ||       ||    ||       ||       ";
	Escribir " ||      ||      ||     ||           ||  ||   ||        ||       ||     ||           ||  ||   ||       ||    ||       ||    ||       ||       ";
	Escribir " ||  |||||       ||     ||||||       ||   ||  ||         ||     ||      ||||||       ||   ||  ||       ||    ||       ||    ||       ||       ";
	Escribir " ||       ||     ||     ||           ||    || ||          ||   ||       ||           ||    || ||       ||    ||       ||    ||       ||       ";
	Escribir " ||        ||    ||     ||           ||     ||||           || ||        ||           ||     ||||       ||    ||       ||    ||       ||       ";
	Escribir " ||||||||||   |||||||   |||||||||    ||      |||            |||         ||||||||||   ||      |||     ||||||  |||||||||       |||||||||        ";
	
	
	login<-123456;
	Escribir "     ";
	Escribir "     ";
	Escribir "ingrese la clave de acceso";
	leer acceso;
	si acceso=login Entonces
		repetir
			Escribir "BIENVENIDO AL SISTEMA DE GESTOR ESCOLAR";
			Escribir "     ";
			Escribir "A continuacion te mostraremos el menu para que ingreses a la opcion ";
			Escribir "que deseas ingresar";
			Escribir "    ";
			Escribir "1.-estudiantes";
			Escribir "2.-carreras";
			Escribir "3.-grupos";
			Escribir "4.-maestros";
			Escribir "5.-becas";
			Escribir "6.-pagos";
			Escribir "Ingresa la ocpion deseada ";
			leer opcion;
			si opcion=1 Entonces
				Escribir "1.1.-ingresar alumno";
				Escribir "1.2.-ver alumnos ";
				Escribir "   ";
				Escribir "Ingresa la opcion deseada";
				leer opcion2;
				si opcion2=1.1 Entonces
					Escribir "Ingrese la canidad de alumnos que desea inscribir";
					leer cant;
					para i<-0 hasta cant-1 con paso 1 hacer
						Escribir "Ingresa el nombre del alumno";
						leer alumnos[i,0];
						Escribir "ingresa la carrera ";
						leer alumnos[i,1];
						Escribir "Ingrese el promedio del alumno";
						leer alumnos[i,2];
						Escribir "Ingresa el grupo del alumno";
						leer alumnos[i,3];
					FinPara
				FinSi
			FinSi
			
			si opcion2=1.2 Entonces
				Escribir "ESTUDIANTES";
				Escribir "****************************************************";
				Escribir "*  NOMBRE       CARRERA       PROMEDIO       GRUPO  *";
				Escribir "****************************************************";
				para i<-0 hasta cant-1 Con Paso 1 Hacer 
					Escribir Sin Saltar alumnos[i,0], "            ", alumnos[i,1], "            ", alumnos[i,2], "           ", alumnos[i,3], "            ";
					Escribir "  ";
				FinPara
			FinSi
			Escribir "desea continuar";
			leer salir;
			si opcion=2 Entonces
				Escribir "2.1.-Nombre de las carreras";
				Escribir "2.2.-Precio por carrera";
				si opcion2=2.1 Entonces
					Escribir "ITI";
					Escribir "ADMINISTRACION";
					Escribir "CONTABILIDAD";
					Escribir "MECATRONICA";
				FinSi
				si opcion2=2.2 Entonces
					Escribir "EL PRECIO DE LA CARRERA DE ITI ES";
					Escribir "$3500";
					Escribir "EL PRECIO DE LA CARRERA DE ADMINISTRACION ES";
					Escribir "$3200";
					Escribir "EL PRECIO DE LA CARRERA DE CONTABILIDAD ES";
					Escribir "$3100";
					Escribir "EL PRECIO DE LA CARRERA DE MECATRONICA ES";
					Escribir "$3600";
				FinSi
			FinSi
		Hasta Que salir='no';
	FinSi
FinProceso
