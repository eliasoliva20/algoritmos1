Proceso practica6
	Definir nombreAlumno,nombre, nombreDelaMateria, comenzar, desea_iniciar, sigAlumno Como Caracter;
	Definir  calificacionGrupal, mayorPromedio, UnidadMasAlta, calificacionmaxima, promedio,cal1,cal2,cal3, cal4, promedioDealumnos Como Real;
	Definir cont, contAprobados, contReprobados, numAlumnos, contAlumnos Como Entero;
	Escribir "ingresa nombre de la materia";
	leer nombreDelaMateria;
	//inicializamos
	cont<-0;
	promedio<-0;
	numAlumnos<-0;
	contAprobados<-0;
	contReprobados<-0;
	calificacionGrupal<-0;
	contAlumnos<-0;
	promedioDealumnos<-0;
	Escribir "si desea comenzar el conteo de los promedios ingresa, si, de lo contrario escribir, no";
	leer comenzar;
	sigAlumno<-"si";
	Mientras comenzar=sigAlumno Hacer
		Escribir "nombre del alumno";
		leer nombre;
		Escribir "ingresa la calificaciones del alumno recuerda que son 4";
		leer cal1;
		Leer cal2;
		Leer cal3;
		Leer cal4;
		promedio<-(cal1+cal2+cal3+cal4)/4;
	
		Escribir "tu promedio es, ", promedio;
		Escribir "si desea comenzar el conteo de los promedios ingresa, si, de lo contrario escribir, no";
		leer comenzar;
		cont<-cont+1;
		numAlumnos<-contAlumnos+cont;
		promedioDealumnos<-promedioDealumnos+promedio;
		calificacionGrupal<-promedioDealumnos/numAlumnos;
			//opcion B
			si promedio>96 Entonces
				Escribir  "opcion B,  ",  ", felicidades el alumno numero, ", cont, ", tiene el mejor promedio";
			FinSi
			//opcion c
			si promedio>96 Entonces
				Escribir  "opcion c,  ",  ", felicidades el alumno, ",  nombre, ", tiene el mejor promedio";
			FinSi
			
			Si promedio>=70 Entonces
				contAprobados<-contAprobados+1;
			SiNo
				contReprobados<-contReprobados+1;
				
			FinSi
	FinMientras
	
	Escribir "el promedio del grupo es";
	Escribir " opcion A,  ", calificacionGrupal;
	Escribir "la cantidad de aprobados es, ", contAprobados;
	Escribir "la cantidad de reprobados es, ", contReprobados;
	
	
	
	
FinProceso
