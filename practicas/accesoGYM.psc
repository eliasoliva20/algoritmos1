Proceso accesoGYM
		definir costo1, costo2, costo3, sexo, num, total, sumaTotal, ene, abr, jul, oct Como Real;
		Definir menu, edad, cont, contJ, contA, contCHR, contAM, contH, contM, contClases1,  contClases2, contClases3, mes Como Entero;
		definir  nombre, salir, deseaContinuar Como Caracter;
		salir<-"no";
		deseaContinuar<-"si";
		ene<-0;
		abr<-0;
		jul<-0;
		oct<-0;
		costo1<-400;
		costo2<-450;
		costo3<-670;
		cont<-0;
		contJ<-0;
		contA<-0;
		contCHR<-0;
		contAM<-0;
		contH<-0;
		contM<-0;
		num<-0;
		contClases1<-0;
		contClases2<-0;
		contClases3<-0;
		sumaTotal<-0;
		//aqui muestro lo que tengo en el menu para saber que es lo que se necesita hacer 
		Repetir
			Escribir "1. servicios";
			Escribir "2.  registro de nuevos socios";
			Escribir "3. consultar";
			leer menu;
			Segun menu Hacer
				1:
					//aqui veremos las clases y los precios de cada clase 
					Escribir "estos son nuestros servicios con sus respectivos precios";
					escribir "clase de baile";
					escribir costo1,"$";
					Escribir "clase de levantamiento de pesas";
					Escribir costo2,"$";
					Escribir "clase de spinning";
					Escribir costo3,"$";
				2:
					Repetir
						//aqui estaremos pidiendo los nuevos socios que van a ingresar al gym 
						Escribir "ingresa el numero del trimestre en el que se esta incribiendo";
						Escribir "1. Enero, Febrero, Marzo";
						Escribir "2. Abril, Mayo, Junio";
						Escribir "3. Julio, Agosto, Septiembre";
						Escribir "4. Octubre, Noviembre, Diciembre";
						leer mes;
						Escribir "ingresa el nombre del soci@";
						Leer nombre;
						Escribir "ingrese el sexo, (si es masculino ingresa 1, si es femenino ingresa 2)";
						leer sexo;
						Escribir "ingresa la edad del soci@";
						leer edad;
						Escribir "¿a que clase se va incribir? ingrese solo el numero";
						Escribir "1. baile, 2. levantamiento de pesas, 3.spinning";
						leer num;
						Escribir "el total de la clase es";
						leer total;
						
						//aqui tenemos el acumulador del dinero que se va recaudando 
						sumaTotal<-sumaTotal+total;
						// el contador de todas las personas que van entrando 
						cont<-cont+1;
						//aqui tenemos el contador para saber cuantas personas se registran en cada clase 
						Si num=1 Entonces
							contClases1<-contClases1+1;
						FinSi
						Si num=2 Entonces
							contClases2<-contClases2+1;
						FinSi
						Si num=3 Entonces
							contClases3<-contClases3+1;
						FinSi
						//aqui tenemos el contador dependiendo el rango de edades 
						
						Si edad>=14 & edad<=20 Entonces
							contJ<-contJ+1;
						FinSi
						Si edad>=21 & edad<=34 Entonces
							contA<-contA+1;
						FinSi
						Si edad >=35 & edad<=50 Entonces
							contCHR<-contCHR+1;
						FinSi
						Si edad>=51 Entonces
							contAM<-contAM+1;
						FinSi
						Si sexo=1 Entonces
							contH<-contH+1;
						FinSi
						
						//esta es la sumatoria de los ingresos por trimestres primer trimestre
						si mes = 1 Y num = 1 entonces 
							ene<-ene + costo1;
						finsi
						si mes = 1 Y num = 2 entonces 
							ene<-ene + costo2;
						finsi
						si mes = 1 Y num = 3 entonces 
							ene<-ene + costo3;
						finsi
						//segundo trimestre
						si mes = 2 Y num = 1 entonces 
							abr<- abr + costo1;
						finsi
						si mes = 2 Y num = 2 entonces 
							abr<- abr + costo2;
						finsi
						si mes = 2 Y num = 3 entonces 
							abr<- abr + costo3;
						finsi
						//tercer trimestre
						si mes = 3 Y num = 1 entonces 
							jul<- jul + costo1;
						finsi
						si mes = 3 Y num = 2 entonces 
							jul<- jul + costo2;
						finsi
						si mes = 3 Y num = 3 entonces 
							jul<- jul + costo1;
						finsi
						//cuarto trimestre
						si mes = 4 Y num = 1 entonces 
							oct<- oct + costo1;
						finsi
						si mes = 4 Y num = 2 entonces 
							oct<- oct + costo2;
						finsi
						si mes = 4 Y num = 3 entonces 
							oct<- oct + costo3;
						finsi
						//
						Escribir "desea continuar registrando socios (si) (no)";
						leer deseaContinuar;
					Hasta Que deseaContinuar=salir
					contM<-cont-contH;
					
				3:
					Escribir "las personas que se han registrado son, ", cont;
					Escribir "los hombres que se han registrado son, ", contH;
					Escribir "las mujeres que se han registrado son, ", contM;
					Escribir "los jovenes que se han registrado son, ", contJ;
					Escribir "los adultos que se han registrado son, ", contA;
					Escribir "los adultos no tan viejos que se han registrado son, ", contCHR;
					Escribir "los adultos mayores que se han registrado son, ", contAM;
					Escribir "las personas inscritas a la clase de baile son, ", contClases1;
					Escribir "las personas inscritas a la clase de levantamiento de pesas son, ", contClases2;
					Escribir "las personas incritas a la clase de spinning son, ", contClases3;
					Escribir "el total del dinero recaudado es , ", sumaTotal;
					//sumatoria por trimestre
					escribir "el total del trimestre Enero-Marzo es $" , ene;
					escribir "el total del trimestre Abril-Junio es $" , abr;
					escribir "el total del trimestre Julio-Septiembre es $" , jul;
					escribir "el total del trimestre Octubre-Diciembre es $" , oct;
					
					
					
					
				De Otro Modo:
					Escribir "numero desconocido";
			FinSegun
			Escribir "desea seguir en el menu (si) (no)";
			leer deseaContinuar;
		Hasta Que deseaContinuar=salir;
		Escribir "salio del menu";
FinProceso

