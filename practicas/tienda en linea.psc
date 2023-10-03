Proceso sin_titulo
	definir clientes, contH, contM, cont, cant, h Como entero;
	definir producto, contT, playera, short, tenis, blusa, gorra, top, shorfalda, calsetas,  contP, precio Como Real;
	Definir sexo, nombre, hombre, mujer, opcion Como Caracter;
	//inventario 
	//1
	playera<-100;
	//2
	tenis<-200;
	//3
	blusa<-150;
	//4
	gorra<-100;
	//5
	top<-100;
	//6
	shorfalda<-90;
	//7
	short<-100;
	//8
	calsetas<-100;
	//aqui inicializamos las variables 
	opcion<-"si";
	hombre<-"masculino";
	mujer<-"femenino";
	cant<-8;
	h<-5;
	contP<-0;
	cont<-0;
	contH<-0;
	contH<-0;
	contT<-0;
	contM<-0;
	Repetir
	Escribir "escribe el nombre del cliente";
	leer nombre;
	Escribir "escribe el sexo del cliente (masculino, femenino)";
	leer sexo;
	si sexo=hombre Entonces
		//mostramos un par de instrucciones para empezar la compra 
		Escribir "el total de los articulos masculinos son";
		Escribir h;
		Escribir "el precio de los productos es; playeras 300$, tenis 600$, gorra 450$, calsetas 70$, short 400$";
		Escribir "ingrese el numero que corresponda al articulo que quiera comprar";
		Escribir "1. playera,  2.tenis,  4.gorra, 7.short 8.calsetas";
		Repetir
			Escribir "ingresa el producto a elegir";
			leer producto;
			si producto=1 Entonces
				playera<-playera-1;
			FinSi
			si producto=2 Entonces
				tenis<-tenis-1;
			FinSi
			si producto=4 Entonces
				gorra<-gorra-1;
			FinSi
			si producto=7 Entonces
				short<-short-1;
			FinSi
			si producto=8 Entonces
				calsetas<-calsetas-1;
			FinSi
			//con estas instrucciones disminuimos el inventrio
			Escribir "ingresa el presio del producto";
			leer precio;
			//acumulador para saber cuanto es el total del cliente 
			contP<-contP+precio;
			//pregunta si desea continuar atendiendo al mismo cliente masculino
			Escribir "desea ingresar otro producto";
			leer opcion;
		Hasta Que opcion="no"
		//contador para saber cuantos clientes hombres van
		contH<-contH+1;
	//aqui vamos a mostrar el total en efectivo, los articulos que adquirio
			Escribir "el total en efectivo es, ", contP;
		FinSi
		si sexo=mujer Entonces
			Escribir "la cantidad de productos de mujer son";
			Escribir cant;
			Escribir "el precio de los productos es; playeras 300$, tenis 600$, blusa 200$, gorra 450$";
			Escribir " top 320$, shortfalda 550$, short 400$, calsetas 70$";
			Escribir "ingresa la opcion del producto conforme corresponda";
			Escribir " 1.playera,  2.tenis,  3.blusa,  4.gorra,  5.top  6.shortfalda,  7.short,  8.calsetas";
		Repetir
		Escribir "ingresa el producto a elegir";
		leer producto;
		si producto=1 Entonces
			playera<-playera-1;
		FinSi
		si producto=2 Entonces
			tenis<-tenis-1;
		FinSi
		si producto=3 Entonces
			blusa<-blusa-1;
		FinSi
		si producto=4 Entonces
			gorra<-gorra-1;
		FinSi
		si producto=5 Entonces
			top<-top-1;
		FinSi
		si producto=6 Entonces
			shorfalda<-shorfalda-1;
		FinSi
		si producto=7 Entonces
			short<-short-1;
		FinSi
		si producto=8 Entonces
			calsetas<-calsetas-1;
		FinSi
		Escribir "ingresa el precio del producto";
		Leer precio;
		//acumulador del total del cliente 
		contP<-contP+precio;
		//pregunta si desea continuar atendiendo al mismo cliente femenin
		Escribir "desea ingresar otro producto";
		leer opcion;
	Hasta Que opcion="no"
	//contador de cuantas mujeres son
	contM<-contM+1;
		Escribir "el total de productos de mujer que se vendieron eson, ", cont;
		Escribir "el numero de clientes femeninos son, ", contM;
		Escribir "el total en efectivo es, ", contP;
	FinSi
	//el total de clientes fueron en total
	cont<-cont+1;
	//acumulador para saber el total de lo que vendieron
	contT<-contT+contP;
	//pregunta si desea seguir vendiendo 
	Escribir "desea seguir con otro cliente";
	leer opcion;
Hasta Que opcion="no"
Escribir "el total de clientes fueron, ", cont;
Escribir "el total de clientes masculinos es, ", contH;
Escribir "el total de clientes femeninos es, ", contM;
Escribir "el total recaudado es, ", contT;
Escribir "el total de playeras en el inventario, ", playera;
Escribir "el total de tenis en el inventario es de, ", tenis;
Escribir "el total de blusas en el inventario son, ", blusa;
Escribir "el total de gorras en el inventario son de, ", gorra;
Escribir "el total de tops en el inventario es de, ", top;
Escribir "el total de shorfalda en el inventario es de, ", shorfalda;
Escribir "el total de short en el inventario es de, ", short;
Escribir "el total de calsetas en el inventario es de, ", calsetas;
FinProceso
