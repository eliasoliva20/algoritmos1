Proceso pedirDiezNumeros
	//Pedir 10 números al usuario, y mostrar cuántos de ellos han sido mayores de cero
	Definir num, cont, contMayores Como Entero;
	//inicializamos las variables 
	cont<-0;
	contMayores<-0;
	Escribir "ingresa 10 numeros";
	Repetir
		leer num;
		//tenemos el contador que nos dice cuantas veces se a repetido el ciclo 
		cont<-cont+1;
		Si num>0 Entonces
			//aqui tenemos el contador de los numeros que son mayores a 0 
			contMayores<-contMayores+1;
		FinSi
	Hasta Que cont=10;
	Escribir "los numeros mayores a 0 ingresados son, ", contMayores;
FinProceso
