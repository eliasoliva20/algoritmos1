Proceso PRACTICA8
	Definir clave, acceso, menu,contsuma, contresta,contmultiplicacion,contdivision Como Entero;
	definir suma, resta, multiplicacion, division, can1,can2, sumatotal, restatotal, multiplicaciontotal, divisiontotal Como Real;
	Definir salir Como Caracter;
	contsuma<-0;
	contresta<-0;
	contmultiplicacion<-0;
	contdivision<-0;
	sumatotal<-0;
	restatotal<-0;
	multiplicaciontotal<-0;
	divisiontotal<-0;
	
	clave<-123456;
	Escribir "ingresa la clave de acceso";
	Leer acceso;
	Si acceso=clave Entonces
		Escribir "felicidades ya puedes ingresar al menu";
		Escribir "1. suma";
		Escribir "2. resta";
		Escribir "3. multiplicacion";
		Escribir "4. division";
		Escribir "5. salir";
		Repetir
			leer menu;
			Segun menu Hacer
				1:
					Escribir "ingresa la cantidad 1";
					leer can1;
					Escribir "ingresa la cantidad 2";
					Leer can2;
					suma<-can1+can2;
					contsuma<-contsuma+1;
					sumatotal<-sumatotal+suma;
					escribir"el total es, ", suma;
					
				2:
					Escribir "ingresa la cantidad 1";
					leer can1;
					Escribir "ingresa la cantidad 2";
					Leer can2;
					resta<-can1-can2;
					contresta<-contresta+1;
					restatotal<-restatotal+resta;
					Escribir "el total de la resta es, ", resta;
					
					
				3:
					Escribir "ingresa la cantidad 1";
					leer can1;
					Escribir "ingresa la cantidad 2";
					Leer can2;
					multiplicacion<-can1*can2;
					contmultiplicacion<-multiplicacion+1;
					multiplicaciontotal<-multiplicaciontotal+multiplicacion;
					escribir "el total de la multiplicacion es, ", multiplicacion; 
				4:
					Escribir "ingresa la cantidad 1";
					leer can1;
					Escribir "ingresa la cantidad 2";
					Leer can2;
					division<-can1/can2;
					contdivision<-division+1;
					divisiontotal<-divisiontotal+division;
					Escribir "el total de la dision es, ", division;
					
				5:
					escribir "salir";
					
			FinSegun
		Hasta Que menu=5;
		
	SiNo
		Escribir "intentalo de nuevo, clave denegada";
	FinSi
	Escribir "la cantidad de sumas ingresadas es, ", contsuma;
	Escribir "el total de todas las sumas juntas es, ", sumatotal;
	Escribir "la cantidad de restas ingresadas es, ", contresta;
	Escribir "el total de todas las restas juntas es, ", restatotal;
	Escribir "la cantidad de multiplicaciones ingresadas es, ", contmultiplicacion;
	Escribir "el total de todas las multiplicaciones juntas es, ", multiplicaciontotal;
	Escribir "la cantidad de divisiones juntas es, ", contdivision;
	Escribir "el total de todas las divisiones juntas es, ", divisiontotal;
	
FinProceso
