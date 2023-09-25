Proceso sin_titulo
	definir puntosReparto, vacunas, dias, inventario, num Como entero;
	//inicializamos las variables 
	vacunas<-0;
	dias<-0;
	inventario<-0;
	Escribir "ingresa el numero del dia empezando del 1 al 7 (tomando en cuenta que lunes es 1)";
	leer dias;
	Repetir
		Escribir "ingresa el punto de reparto";
		leer puntosReparto;
		Escribir "ingresa las vacunas que se llevara";
		leer num;
		//aqui tenemos el acumulador de las vacunas que llevamos
		vacunas<-vacunas+num;
		Si vacunas>800 Entonces
			Escribir "quedan menos de 200 ALERTA tu limite son 1000";
		FinSi
		Escribir "el total de vacunas hasta el momento es, ", vacunas;
	Hasta Que vacunas=1000
	Escribir "llegaste al limite de vacunas por dia";
	
FinProceso

	