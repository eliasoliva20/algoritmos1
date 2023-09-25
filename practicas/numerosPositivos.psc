Proceso numerosPositivos
	definir N , suma, cont Como Entero;
	//inicializamos las variables 
	suma<-0;
	N<-0;
	Repetir
		Escribir "ingresa numero";
		Leer N;
		Si N>=0 Entonces
			//aqui tenemos el acumulador de los numeros que se van ingresando 
			suma<-suma+N;
		FinSi
	Hasta Que N<0
	Escribir "la suma total de todos lo numeros es, ", suma;
	
FinProceso
