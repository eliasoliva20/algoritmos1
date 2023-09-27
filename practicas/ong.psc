Proceso ong
	Definir salir, desea_continuar, nombrePaciente, sexo, padecimiento, hombre, mujer, nino, hospitalizacion, consultas,radiografias, odontologia Como Caracter;
	Definir opcion, contPaciente, contDM, contDH, contDN, ocacion Como Entero;
	Definir precio, descuento, total, edad, cont, preciototal Como Real;
	
	//aqui tenemos inicializados nuestros contadores y acumuladores
	contDM<-0;
	contDH<-0;
	descuento<-0;
	total<-0;
	cont<-0;
	desea_continuar<-"si";
	hospitalizacion<-"0";
	salir<-"no";
	preciototal<-0;
	//aqui tenemos un ciclo repetir y deadentro de el tenemos un menu para cada cosa que se necesite
	Repetir
		Escribir "1. hombre";
		Escribir "2. mujer";
		Escribir "3. niños";
		leer opcion;
		Segun opcion Hacer
			1:
				Escribir "escribe la edad del pacientr";
				Leer edad;
				Escribir "escribe el sexo del paciente";
				Leer sexo;
				Escribir "ingrese el tipo de consulta";
				leer consultas; 
				Escribir "cual es el precio de la consulta";
				leer precio;
				Escribir "¿cuantas veces ah venido?";
				Leer ocacion;
				//aqui tenemos un contador
				cont<-cont+1;
				Si ocacion>=2 Entonces
					//aqui calculamos el desucento e y el precio total de la cuenta 
					descuento<-precio*.50;
					total<-precio-descuento;
					Escribir "tu descuento es de , ", descuento;
					Escribir "el total a pagar es de, ", total;
				FinSi
				
					Escribir "cuantos hombres estan hozpitalizados por algun padecimiento, ", cont;
				
			2:
				Escribir "escribe la edad del pacientr";
				Leer edad;
				Escribir "escribe el sexo del paciente";
				Leer sexo;
				Escribir "ingrese el tipo de consulta";
				leer consultas; 
				Escribir "cual es el precio de la consulta";
				leer precio;
				Si edad>=18 y edad <= 60 Entonces
					descuento<-precio*.20;
					total<-precio-descuento;
					Escribir "tu descuento es de , ", descuento;
					Escribir "el total a pagar es de, ", total;

						contDM<-contDM+1;
						Escribir "mujeres atendidas en odontologia que hayan tenido descuento, ",contDM;
					
					FinSi
					
			
			3:
				Escribir "escribe la edad del pacientr";
				Leer edad;
				Escribir "escribe el sexo del paciente";
				Leer sexo;
				Escribir "ingrese el tipo de consulta";
				leer consultas; 
				Escribir "cual es el precio de la consulta";
				leer precio;
				Si edad>=0 y edad <= 17 Entonces
					descuento<-precio*.10;
					total<-precio-descuento;
					Escribir "tu descuento es de , ", descuento;
					Escribir "el total a pagar es de, ", total;
				FinSi
			De Otro Modo:
				Escribir "opcion no valida intente una vez mas";
		FinSegun
		
		//aqui tenemos el acumulador de todo lo que hemos pagado 
		preciototal<-preciototal+total;
		Escribir "¿desea continuar?";
		leer desea_continuar;
	Hasta Que desea_continuar=salir
	Escribir "el total de todas las consultas registradas, ", preciototal;
FinProceso
