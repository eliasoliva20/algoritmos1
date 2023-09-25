Proceso paresImparesMultiplos
	definir n, cantidad, cont, mult, suma Como Entero;
	Definir prom Como Real;
	n<-0;
	cont<-0;
	mult<-1;
	suma<-0;
	Escribir "ingresa la cantidad de numeros que vas a ingresar";
	Leer cantidad;
	Mientras cont<cantidad Hacer
		Escribir "ingresa la cantidad";
		leer n;
		cont<-cont+1;
		
		//multiplicar  los numeros mayores a 25
		Si n<25 Entonces
			si n % 2 =0 Entonces
				mult<-mult*n;
			FinSi
		FinSi
		//la suma de los numeros impares mayores a 16
		Si n>16 Entonces
			si n % 2 <>0 Entonces
				suma<-suma+n;
			FinSi
		FinSi
		//promedio de los multiplos de 4
		si n%4=0 Entonces
			suma<-suma+n;
			prom<-suma/cantidad;
		FinSi
		
	FinMientras
	Escribir "el producto de los numeros menores a 25 es, ", mult;
	Escribir "el suma de los numeros impares mayores a 16 son, ", suma;
	Escribir "el promedio de los numeros en multiplos de 4 es, ", prom;
	
	
FinProceso
