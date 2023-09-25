Proceso sin_titulo
	definir clave, i, contra1, contra2, contra3 como entero;
	//inicializamos las variables
	i<-0;
	contra1<-765;
	contra2<-555;
	contra3<-766;
	Repetir
		Escribir "ingresa la clave";
		Leer clave;
		Si (clave=contra1 o clave=contra2 o clave=contra3) Entonces
			Escribir "felicidades acceso aprobado";
		SiNo
			Escribir "acceso denegado";
		FinSi
		//contador del ciclo 
		i<-i+1;
	Hasta Que (i=3 o clave=contra1 o clave=contra2 o clave=contra3)
	FinProceso

//Pedir una contraseña (3 intentos máximo) usando REPETIR hasta que la clave sea 352, 259 ó 569
