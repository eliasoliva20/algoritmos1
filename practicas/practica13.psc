Proceso practica13
	Definir productos, plato Como Caracter;
	Definir p,  precios, gastos, a Como Entero;
		Escribir "Ingrese el nombre del plato : ";
		Leer plato;
		Escribir "Ingrese la cantidad de ingredientes";
		Leer p;
		Dimension productos[p];
		Dimension precios[p];
		gastos<-0;
		Para a<-0 Hasta p-1 con paso 1 hacer 
			Escribir "Ingrese el nombre del ", a,", ingrediente " ;
			Leer productos[a];
			Escribir "Ingrese el precio del ", a ," ingrediente " ;
			Leer precios[a];
			gastos<-gastos+precios[a];
		FinPara
		Escribir "El costo a gastar es : ", gastos;
FinAlgoritmo
