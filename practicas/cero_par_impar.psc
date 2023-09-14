Proceso cero_par_impar
	Definir num, res Como Real;
	Escribir "ingresa el numero que quieras";
	Leer num;
	si num= 0 Entonces
		Escribir "no es impar ni par";
	SiNo
		si num>0 Entonces
			res<-num%2;
			si res ==0 Entonces
				Escribir "el numero es par";
			sino 
				Escribir "el numero es impar";
				
			FinSi
		FinSi
	FinSi
		
	
FinProceso
