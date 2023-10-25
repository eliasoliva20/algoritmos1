Proceso practica_18
	definir array, aux Como Caracter;
	definir array2, i, j, max, aux1 Como Entero;
	max<-10;
	Definir promedio como real;
	Dimension array[max];
	Dimension array2[max];
	promedio <- 0;
	
	//se hacen los arreglos
	para i<-0 hasta max-1 con paso 1 Hacer
		Escribir "ingresa el nombre del candidato";
		Leer array[i];
		Escribir "ingresa la cantidad de botos del candidato";
		leer array2[i];
	FinPara
	//se leen los arreglos
	para i<-0 hasta max-1 con paso 1 Hacer
		Escribir "el nombre del candidato es, ", i ;
		Escribir array[i];
		Escribir "el total de votos es, ", i;
		Escribir array2[i];
	FinPara
	
	
	
	
	//orden alfabetico caracter con su numero 
	Para i <- 0 Hasta  max- 2 Hacer
        Para j <- 0 Hasta  max - 2 Hacer
            Si array[j] > array[j+1] Entonces
                aux <- array[j];
                array[j] <- array[j+1];
                array[j+1] <- aux;
				
				aux1<-array2[j];
				array2[j]<-array2[j+1];
				array2[j+1]<-aux1;
            FinSi
        FinPara
    FinPara
	
	Escribir "      ";
	//se imprime en orden alfabetico
	Para i <- 0 Hasta max- 1 Hacer
        Escribir  Sin Saltar array[i], "  ";
    FinPara
	Escribir "  ";
	Para i <- 0 Hasta max- 1 Hacer
        Escribir  Sin Saltar array2[i], "      ";
    FinPara
	
	
	Escribir "   ";
	
	
	
	
	
	//se ordena el candidato con menor botacion hasta la mayor con nombre
	Para i <- 0 Hasta  max- 2 Hacer
        Para j <- 0 Hasta  max - 2 Hacer
            Si array2[j] > array2[j+1] Entonces
                aux <- array[j];
                array[j] <- array[j+1];
                array[j+1] <- aux;
				
				aux1<-array2[j];
				array2[j]<-array2[j+1];
				array2[j+1]<-aux1;
            FinSi
        FinPara
    FinPara
	
	Escribir "      ";
	//se imprime el candidato con menor botacion a la mayor  con el nombre
    Para i <- 0 Hasta max- 1 Hacer
        Escribir  Sin Saltar array[i], "  ";
    FinPara
	Escribir "  ";
	Para i <- 0 Hasta max- 1 Hacer
        Escribir  Sin Saltar array2[i], "      ";
    FinPara
	Escribir "         ";
	
	
	
	
	//se ordena el candidato con mayor botacion hasta la menor con nombre
	Para i <- 0 Hasta  max- 2 Hacer
        Para j <- 0 Hasta  max - 2 Hacer
            Si array2[j] < array2[j+1] Entonces
                aux <- array[j];
                array[j] <- array[j+1];
                array[j+1] <- aux;
				
				aux1<-array2[j];
				array2[j]<-array2[j+1];
				array2[j+1]<-aux1;
            FinSi
        FinPara
    FinPara
	Escribir "   ";
	//se imprime el candidato con mayor botacion al menor con el nombre
    Para i <- 0 Hasta max- 1 Hacer
        Escribir  Sin Saltar array[i], "  ";
    FinPara
	Escribir "  ";
	Para i <- 0 Hasta max- 1 Hacer
        Escribir  Sin Saltar array2[i], "      ";
    FinPara
	
	Escribir "      ";
	
	Para i <- 0 Hasta max-1 Hacer
		promedio <- promedio + array2[i];
	FinPara
	promedio <- (promedio / max) * 0.1;
	
	//los primeros 3 nombres con su puntuacion mayor
//	Escribir "      ";
//	Escribir "primer lugar ";
//	Escribir array[0],"  ", array2[0];
//	Escribir "      ";
//	Escribir "segundo lugar ";
//	Escribir array[1], "  ", array2[1];
//	Escribir "      ";
//	Escribir "tercero lugar ";
	//	Escribir array[2], "  ", array2[2];
	Escribir "      ";
	Escribir "primer lugar        | segundo lugar        | tercer lugar";
	Escribir array[0],"  ", array2[0], "         | ", array[1], "  ", array2[1], "          | ", array[2], "  ", array2[2];
	//para sacar el menos del 10% de votos
	j <- 0;
	Para i <- 0 Hasta max-1 Hacer
		si promedio >= array2[i] Entonces
			si j = 0 Entonces
				Escribir "   ";
				Escribir "candidatos con menos del 10%";
				
			FinSi
			Escribir array[i];
			j <- j + 1;
		FinSi
	FinPara
FinProceso
