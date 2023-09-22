Proceso tareaLIMITES
	Definir N, contLimF, contSuma, contNIL, suma Como Entero;
	Definir limS, limI Como Real;
	contLimF<-0;
	contNIL<-0;
	contSuma<-0;
	suma<-0;
	Escribir "escriba el limite superior";
	leer limS;
	Escribir "escriba el limite inferior";
	leer limI;
	Si limI>limS Entonces
		Escribir "vuelva a ingresar los limites, cantidades no aceptadas.";
		Escribir "escriba el limite superior";
		leer limS;
		Escribir "escriba el limite inferior";
		leer limI;
	FinSi
	Repetir
		Escribir "ingresa cantidad";
		Leer N;
		suma<-suma+N;
		Si (N<limI o N>limS) Entonces
			contLimF<-contLimF+1;
		FinSi
		Si (N=limI o N=limS) Entonces
			contNIL<-contNIL+1;
		FinSi
	Hasta Que N=0
	Escribir "la suma de todos los numeros ingresados es, ", suma;
	Escribir "los numeros que estan fuera del intervalo de los limites es, ", contLimF;
	Escribir "la cantidad de numeros ingresados iguales a los limites es, ", contNIL;
	
FinProceso
