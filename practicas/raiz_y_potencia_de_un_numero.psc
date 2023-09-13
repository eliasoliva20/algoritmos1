Proceso raiz_y_potencia_de_un_numero
	Definir valorx, cuadrado, potencia Como Real;
	Escribir "ingresa el valor";
	leer valorx;
	Si valorx<=0 Entonces
		Escribir "error de operacion numero invalido";
	FinSi
	Si valorx>=1 Entonces
		cuadrado<-valorx*valorx;
		potencia<-valorx*valorx*valorx*valorx*valorx;
		Escribir "el valor de el dato ingresado es, ", valorx;
		Escribir "el valor del cuadrado de valorx es, ", cuadrado;
		Escribir "el valor de la potencia del valorx es, ", potencia;
	FinSi
	
FinProceso
