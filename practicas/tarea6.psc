Proceso tarea6
	definir max,sucursal, cont, cant, jamon, salchichas, queso, pan, mayonesa,array, array1, array2, array3, conta Como Entero;
	Definir precio,precio1,precio2,precio3, total, p, q, total1, total2, total3, preciototal Como Real;
	Definir seguir, abandonar, resp Como Caracter;
	seguir<-"si";
	abandonar<-"no";
	max<-5;
	total<-0;
	total1<-0;
	total2<-0;
	total3<-0;
	conta <- 0;
	Dimension array[max];
	Dimension array1[max];
	Dimension array2[max];
	Dimension array3[max];
	Dimension precio[max];
	Dimension precio1[max];
	Dimension precio2[max];
	Dimension precio3[max];
	
	jamon<-25;
	salchichas<-40; 
	queso<-50; 
	pan<-25; 
	mayonesa<-20;
	//aqui tenemos todos los arreglos 
	repetir 
	Escribir "1.sucursal 1";
	Escribir "2.sucursal 2";
	Escribir "3.sucursal 3";
	Escribir "4.sucursal 4";
	leer sucursal;
	Segun sucursal Hacer
		1:
			//cuantos articulos quedaron de la opcion 3 despues de la compra 
			Escribir "la cantidad de productos del articulo 3 son 50";
			Escribir "los articulos en la tienda son";
			Escribir "1.jamon, 2.salchichas, 3.queso, 4.pan, 5.mayonesa";
			para cont<-0 hasta max-1 con paso 1 Hacer
				Escribir "ingresa el numero del producto";
				Leer array[cont];
				Escribir "ingresa el precio del producto";
				leer precio[cont];
				Escribir "cuantas piezas se va llevar";
				leer cant;
				total<-total+precio[cont]*cant;
				q<-30-cant;
			FinPara
			conta <- 1;
		2:
			Escribir "el total de productos son 160";
			Escribir "la cantidad de articulos en la sucursal son";
			Escribir "los articulos en la tienda son";
			Escribir "1.jamon, 2.salchichas, 3.queso, 4.pan, 5.mayonesa";
			para cont<-0 hasta max-1 con paso 1 Hacer
				Escribir "ingresa el numero del producto";
				Leer array1[cont];
				Escribir "ingresa el precio del producto";
				leer precio1[cont];
				Escribir "cuantas piezas se va llevar";
				leer cant;
				total1<-total1+precio[cont]*cant;
				p<-(jamon+salchicas+queso+pan+mayonesa)-cant;
			FinPara
			conta <- 2;
		3:
			Escribir "los articulos en la tienda son";
			Escribir "1.jamon, 2.salchichas, 3.queso, 4.pan, 5.mayonesa";
			para cont<-0 hasta max-1 con paso 1 Hacer
				Escribir "ingresa el numero del producto";
				Leer array2[cont];
				Escribir "ingresa el precio del producto";
				leer precio2[cont];
				Escribir "cuantas piezas se va llevar";
				leer cant;
				total2<-total2+precio[cont]*cant;
			FinPara
			conta <- 3;
		4:
			//cuantos articulos hay en la tienda
			Escribir "los articulos en la tienda son";
			Escribir "1.jamon, 2.salchichas, 3.queso, 4.pan, 5.mayonesa";
			para cont<-0 hasta max-1 con paso 1 Hacer
				Escribir "ingresa el numero del producto";
				Leer array3[cont];
				Escribir "ingresa el precio del producto";
				leer precio3[cont];
				Escribir "cuantas piezas se va llevar";
				leer cant;
				//el total de articulos que hay en la tienda despues de la compra
				total3<-total3+precio[cont]*cant;
			FinPara
			conta <- 4;
			preciototal<-preciototal+precio[cont]+precio1[cont]+precio2[cont]+precio3[cont];
		De Otro Modo:
			Escribir "el numero no se encuentra en el menu";
	FinSegun
	Escribir "desea continuar con otra sucursal, si o no";
	Leer resp;
Hasta Que resp=abandonar
//se imprimen todos los arreglos
si conta>=1 Entonces
	para cont<-0 hasta max-1 Con Paso 1 hacer
		Escribir "el nombre del articulo es";
		Escribir array[cont];
		Escribir "el precio del articulo es";
		Escribir precio[cont];
		Escribir "el total recaudado en la sucursal 1 es, ", total;
	FinPara
FinSi
si conta>=2 Entonces
	para cont<-0 hasta max-1 Con Paso 1 hacer
		Escribir "el nombre del articulo es";
		Escribir array1[cont];
		Escribir "el precio del articulo es";
		Escribir precio1[cont];
		
		Escribir "el total recaudado en la sucursal 2 es, ", total1;
		Escribir "el total de los productos eran 160 y en total quedaron, ", p;
	FinPara
FinSi
si conta>=3 Entonces
	para cont<-0 hasta max-1 Con Paso 1 hacer
		Escribir "el nombre del articulo es";
		Escribir array2[cont];
		Escribir "el precio del articulo es";
		Escribir precio2[cont];
		
		Escribir "el total recaudado en la sucursal 1 es, ", total2;
	FinPara
FinSi
si conta>=4 Entonces
	para cont<-0 hasta max-1 Con Paso 1 hacer
		Escribir "el nombre del articulo es";
		Escribir array3[cont];
		Escribir "el precio del articulo es";
		Escribir precio3[cont];
		Escribir "el total recaudado en la sucursal 1 es, ", total3;
	FinPara
	//todo lo que se recaudo en la empresa
	Escribir "el total de lo recaudado en toda la empresa es, ",preciototal;
FinSi
//que empresa recaudo mas dinero 
	si total>total1 o total>total2 o total>total3 Entonces
		Escribir "la sucursal numero 1 es la sucursal que mas recaudo";
	SiNo
		si total1>total2 o total1>total3 Entonces
			Escribir "la sucursal numero 2 es la sucursal que mas recaudo";
		SiNo
			si total2>total3 Entonces
				Escribir "la sucursal numero 3 es la sucursal que mas recaudo";
			SiNo
				Escribir "la sucursal numero 4 es la sucursal que mas recaudo";
			FinSi
		FinSi
	FinSi
FinProceso
