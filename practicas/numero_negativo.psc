Proceso numero_negativo
	definir num1, num2, num3, multiplicacion, suma Como Real;
	Escribir "ingresa la primera cantidad";
	leer num1;
	Escribir "ingresa la segunda cantidad";
	Leer num2;
	Escribir "ingresa la tercera cantidad";
	leer num3;
	Si num1<0 Entonces
		multiplicacion<-num1*num2*num3;
		Escribir "el resultado es una multiplicacion porque num1 es negativo, ", multiplicacion;
	FinSi
	Si num1>=0 Entonces
		suma<-num1+num2+num3;
		Escribir "es suma porque el numero entra en el campo de los positivos, ", suma;
	
	FinSi
	
FinProceso
