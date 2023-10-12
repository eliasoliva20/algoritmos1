Proceso tarea4
	Definir array, num, n, cont, mult, cont1 Como Entero;
	cont1<-0;
	
	Escribir "ingrese la cantidad de numeros en el array";
	leer n;
	Dimension array[n];
	para cont<-0 hasta n-1 con paso 1 hacer 
		Escribir "ingresa las cantidades";
		leer array[cont];
		
		
	FinPara
	Escribir "los numeros multiplos de 6 son";
	
	para cont<-0 hasta n-1 con paso 1 hacer 
		si array[cont] mod 6 = 0 Entonces
			cont1<-cont1+1;
			Escribir array[cont];
			Escribir "en total son, ", cont1, ", numeros";
			
		finsi 
	FinPara
	
	
FinProceso
