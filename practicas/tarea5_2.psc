Proceso tarea5_2
	Definir cont, cont1, n, array, array1, array2, a Como Entero;
	//vector1
	Escribir "*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*";
	Escribir "vector 1";
	
	//hago el primer vector y lleno los espacios del vector con numero al azar con la palabra azar
	Dimension array[45];
	Para cont<-0 hasta 45-1 con paso 1 hacer 
		array[cont]<-azar(80);
	FinPara
	//imprimo el primero vector
	para cont<-0 hasta 45-1 con paso 1 hacer 
		Escribir  array[cont];
	FinPara
	
	//aqui tengo el segundo vector 
	Escribir "*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.";
	Escribir "vector 2";
	Dimension array1[45];
	para cont<-0 hasta 45-1 con paso 1 Hacer
		array1[cont]<-azar(80);
	FinPara
	//imprimo el segundo vector 
	para cont<-0 hasta 45-1 con paso 1 Hacer
		Escribir array1[cont] ;
	FinPara
	Escribir "*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*.*";
	Escribir "el resultado de las sumas de los vectores es";
	//suma de los vectores 
	Dimension array2[45];
	para cont<-0 hasta 45-1 Con Paso 1 Hacer
		array2[cont]<-array[cont]+array1[cont];
	FinPara
	//imprimir vector c con el resultado de las sumas de los vectores 1 y 2
	para cont<-0 hasta 45-1 Con Paso 1 Hacer
		Escribir array2[cont];
	FinPara
FinProceso
