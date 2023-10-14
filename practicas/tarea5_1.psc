Proceso tarea5_1
	Definir n, cont, array, mayor, casilla, temp, a Como Entero;
	//inicializo las variables donde se va guardar el numero mayor y en que casilla se encuentra
	mayor<-0;
	casilla<-0;
	//hago el vecto y aqui mismo identifico cual es el mayor y en que casilla esta 
	Dimension array[10];
	para cont<-0 hasta 10-1 con paso 1 hacer 
		Escribir "ingresa la cantidad del numero en el arreglo";
		leer array[cont];
		si array[cont]>mayor Entonces
			mayor<-array[cont];
			casilla<-cont;
		FinSi
	FinPara
	//imprimo el numero mayor y en que casilla se encuentra 
	Escribir "el numero mayor es, ", mayor;
	Escribir "el numero de la casilla es, ", casilla;
	//aqui hago la condicion para imprimir el vector al reves 
	si mayor>=1000  y mayor <=5000 Entonces
	a<-9;
		para cont<-0 Hasta 5-1 con paso 1 Hacer
			temp<-array[cont];
			array[cont]<-array[a];
			array[a]<-temp;
			a<-a-1;
		FinPara
		para cont<-0 hasta 10-1 Con Paso 1 hacer 
			Escribir array[cont];
		FinPara
		FinSi
	

FinProceso
