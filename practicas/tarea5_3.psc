Proceso tarea5_3
	Definir n, array, cont, cont1 Como Entero;
	cont1<-0;
	//leemos el numero que queremos encontrar dentro del vector
	Escribir "ingresa el numero que tu quieras";
	Leer n;
	//aqui hago el vector
	Dimension array[20];
	para cont<-0 hasta 20-1 con paso 1 Hacer
		array[cont]<-azar(50);
	FinPara
	//imprimo el vecto
	para cont<-0 hasta 20-1 con paso 1 Hacer
		Escribir array[cont];
	FinPara
	//condicion para encontrar el numero en el vector 
	para cont<-0 hasta 20-1 con paso 1 hacer 
	si n=array[cont] Entonces
		Escribir "felicidades, tu numero estaba dentro del arreglo";
		Escribir "la posicion donde esta el numero es,", cont;
		cont1<--1;
	FinSi
FinPara
//condicion para arrojar el mensaje si no se encuentra el numero dentro del vector
si cont1=0 Entonces
	Escribir "numero no encontrado";
FinSi
FinProceso
