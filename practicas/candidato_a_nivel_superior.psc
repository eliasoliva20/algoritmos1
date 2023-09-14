Proceso candidato_a_nivel_superior
	Definir aspirante Como Caracter;
	Definir examen, titulo Como Real;
	Escribir "ingresa el nombre del aspirante";
	leer aspirante;
	Escribir "1.- si tengo titulo";
	Escribir "2.- no tengo titulo";
	leer titulo;
	
	Segun titulo Hacer
		1:
			Escribir "felicidades tuviste un pase directo al nivel superior";
		2:
			Escribir "lo sentimos no eres un canditado directo, pero puedes hacer una prueba directa";
			Escribir "una vez realizada la prueba cual es el promedio de tu examen";
			Leer examen;
			Si (examen>=70 y examen<=100) Entonces
				Escribir "felicidades pasaste la prueba, bienvenido al nivel superior";
			SiNo
				Escribir "lo sentimos, su acceso fue rechazado por su bajo aprovechamiento";
			FinSi
	FinSegun
	
	
	
	
	
FinProceso
