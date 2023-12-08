Proceso sistema_de_gestor_escolar
	definir alumno, carrera, salir, maestros, deseacontinuar, persona, carreras, grupos Como Caracter;
	definir login, acceso, promedio, pago, insc, conf Como Real;
	definir opcion, i, j, n, pagos, cont, becas, id, contI, contA, contC, contM Como Entero;
	
	deseacontinuar <- 'si';
	//declaramos las matrices 
	
	dimension pago[100,3];
	Dimension persona[100,3];
	persona[0,0] <- ' ';
	Dimension maestros[100,4];
	Dimension alumno[100,4];
	dimension becas[3];
	Dimension carreras[4];
	dimension grupos[8];
	
	//asignacion de vectores 
	becas[0]<-85;
	becas[1]<-90;
	becas[2]<-100;
	carreras[0]<-"iti";
	carreras[1]<-"administracion";
	carreras[2]<-"contabilidad";
	carreras[3]<-"mecatronica";
	
	grupos[0]<-"a201";
	grupos[1]<-"a202";
	grupos[2]<-"b301";
	grupos[3]<-"b302";
	grupos[4]<-"c401";
	grupos[5]<-"c402";
	grupos[6]<-"d501";
	grupos[7]<-"d502";
	//contadores
	insc<-1800;
	cont<-3000;
	contI<-0;
	contA<-0;
	contC<-0;
	contM<-0;
	
	
	//inicializamos las matrices con espacios vacios por si hay un error de inicializacion
	Escribir "BIENVENIDO AL SISTEMA DE GESTOR ESCOLAR";
	Escribir "     ";
	Escribir "     ";
	Escribir "     ";
	Escribir "A continuacion te mostraremos el menu para que ingreses a la opcion ";
	Escribir "Para una mejor experiencia te recomendamos hacer un pago, despues asignar alumnos a grupos y por ultimo registrar maestros";
	Escribir "Te deseamos que tengas una buena experiencia navegando por este sistema";
	//contraseña para entrar al sistema
	Repetir
		Escribir "¿Que deseas ingresar?";
		Escribir "    ";
		Escribir "1.-pago";
		Escribir "2.-Registrar maestros";
		Escribir "3.-Asignar alumno a un grupos";
		Escribir "4.-Nuestras becas";
		Escribir "5.-carreras";
		Escribir "6.-Cuantos alumnos hay por carrera";
		Escribir "7.-Alumnos asigandole maestro";
		Escribir "Ingresa la ocpion deseada ";
		leer opcion;
		
		
		si opcion = 1 Entonces
			Escribir "Bienvenido vas a completar tu regristro y adquirir tu ficha de pago";
			Escribir "cuantas fichas vas a solicitar?";
			leer n;
			para i<-0 hasta n-1 con paso 1 Hacer
				Escribir "ingrese el nombre de la persona";
				leer persona[i,0];
				Escribir "Ingresa el apellido de la persona";
				leer persona[i,1];
				
				//validar carreras
				Repetir
					Escribir "Ingresa la carrera a inscribirse";
					leer persona[i,2];
					si ((persona[i,2]<>carreras[0]) y (persona[i,2]<>carreras[1]) y (persona[i,2]<>carreras[2]) y (persona[i,2]<>carreras[3])) Entonces
						Escribir "Esa carrera no se encuentra dentro de nuestro plan de estudios";
						Escribir "Ingrese una carrera que sea valida";
					SiNo
						si ((persona[i,2]=carreras[0]) o (persona[i,2]=carreras[1]) o (persona[i,2]=carreras[2]) o (persona[i,2]=carreras[3])) Entonces
							Escribir "  ";
							Escribir "Carrera valida";
						FinSi
					FinSi
					Hasta Que((persona[i,2]=carreras[0]) o (persona[i,2]=carreras[1]) o (persona[i,2]=carreras[2]) o (persona[i,2]=carreras[3]))
					
					//se valida la beca 
					Escribir "Ingresa el promedio que tiene (ejemplo, 70)";
					leer pago[i,0];
					//persona no apta para una beca
					si pago[i,0]<85 Entonces					
						pago[i,1]<-insc;
						Escribir "NO ERES APTO PARA NINGUNA BECA";
					SiNo
						//personas que son aptas para adquirir una beca
						si pago[i,0] >=85 Y pago[i,0] <= 89 Entonces
							insc<- (insc-(insc*.20));
							pago[i,1]<-insc;
							Escribir "FELICIDADES OBTIENES UNA BECA DEL 20%";
						SiNo
							si pago[i,0] >=90 Y pago[i,0] <= 94 Entonces
								insc<- (insc-(insc*.50));
								pago[i,1]<-insc;
								Escribir "FELICIDADES OBTIENES UNA BECA DEL 50%";
							SiNo
								si pago[i,0] >=95 Y pago[i,0] <= 100 Entonces
									insc<- (insc-(insc*1));
									pago[i,1]<-insc;
									Escribir "FELICIDADES OBTIENES UNA BECA DEL 100%";
								FinSi
							FinSi
						FinSi
					FinSi
					Escribir "   ";
					Escribir "   ";
					
					//se realiza el pago de la inscripcion 
					Escribir "¿Desea confirmar el pago?";
					Escribir "Para pagar oprima 1, para rechazarla oprima 0";
					leer conf;
					si conf = 0 Entonces
						Escribir "NO se puede completar tu registro porque no has pagado tu ficha";
						Escribir "POR FAVOR REGISTRA UN PAGO";
					FinSi
					//si pago[i,1]=0 Entonces
					//Escribir "NO se puede completar tu registro porque no has pagado tu ficha";
					//Escribir "POR FAVOR REGISTRA UN PAGO";
					//FinSi
					//si pago[i,1]>0 Entonces
					cont<-cont+1;
				    pago[i,2]<-cont;
					Escribir "Desea continuar";
					leer deseacontinuar;
				FinPara
				
				//Se imprime la ficha del alumno
				si conf = 1 Entonces
					Escribir "FELICIDADES YA ERES UN ESTUDIANTE";
					Escribir "ESTA ES TU FICHA";
					Escribir "UPN";
					Escribir "***************************************************************************************************************************";
					Escribir "*  NOMBRE          APELLIDO          CARRERA          PROMEDIO          PAGO          MATRICULA                           *";
					Escribir "***************************************************************************************************************************";
					para i<-0 hasta n-1 Con Paso 1 Hacer 
						Escribir Sin Saltar persona[i,0], "            ", persona[i,1], "            ", persona[i,2], "           ", pago[i,0],"           ", pago[i,1],"           ", pago[i,2];
						Escribir "  ";
					FinPara
					Escribir "   ";
					Escribir "   ";
					Escribir "   ";
				FinSi
				
				
				
				
			SiNo
				
				si persona[0,0]<> ' ' Entonces
					si opcion = 2 Entonces
						Escribir "Bienvenido cuantos maestros se van a registrar";
						leer n;
						para i<-0 hasta n-1 con paso 1 Hacer
							Escribir "Ingresa el nombre del profesor";
							leer maestros[i,0];
							Escribir "Ingresa el apellido del profesor";
							leer maestros[i,1];
							Escribir "Ingrese si es profesor de tiempo completo o parcial";
							leer maestros[i,2];
							Escribir "   ";
							Escribir "grupo.-a201(iti)";
							Escribir "grupo.-a202(iti)";
							Escribir "grupo.-b301(administracion)";
							Escribir "grupo.-b302(administracion)";
							Escribir "grupos.-c401(contabilidad)";
							Escribir "grupo.-c402(contabilidad)";
							Escribir "grupo.-d501(mecatronica)";
							Escribir "grupo.-d502(mecatronica)";
							Escribir "    ";
							Repetir
							Escribir "ingrese el grupo que quiere tomar";
							leer maestros[i,3];
							//validar si el grupo al que quiere entrar esta validado
							si alumno[i,3]<>maestros[i,3] Entonces
								Escribir "ese grupo no esta abierto intenta con otro";
							SiNo
								si alumno[i,3]=maestros[i,3] Entonces
									Escribir "grupo valido";
								FinSi
							FinSi
							Hasta Que alumno[i,3]=maestros[i,3]
							
							
						FinPara
						Escribir "Ficha del profesor";
						Escribir "UPN";
						Escribir "************************************************************************************";
						Escribir "*  NOMBRE          APELLIDO          tiempo          grupo                         *";
						Escribir "************************************************************************************";
						para i<-0 hasta n-1 Con Paso 1 Hacer 
							Escribir Sin Saltar, "  ", maestros[i,0], "            ", maestros[i,1], "            ", maestros[i,2], "           ", maestros[i,3],"           ";
							Escribir "  ";
						FinPara
						Escribir "   ";
						Escribir "   ";
						Escribir "   ";
						
						
						Escribir "¿Desea continuar?";
						leer deseacontinuar;
						
						
					SiNo
						
						
						
						
						si persona[0,0]<> ' ' Entonces
							si opcion =3 Entonces
								Escribir "Bienvenido vamos a registrarte en un grupo ";
								Escribir "¿cuantos alumnos vas a inscribir en un grupo?";
								leer n;
								para i<-0 hasta n-1 con paso 1 Hacer
									Repetir
										
										//validar alumnos
										Escribir "Ingresa nombre del alumno";
										leer alumno[i,0];
										Escribir "Ingresa el apellido del alumno";
										leer alumno[i,1];
										si persona[i,0]<> alumno[i,0] y persona[i,1]<>alumno[i,1] Entonces
											Escribir "nombre invalido";
										SiNo
											si persona[i,0]= alumno[i,0] o persona[i,1]=alumno[i,1] Entonces
												Escribir "nombre valido";
											FinSi
										FinSi
										Hasta Que	persona[i,0]= alumno[i,0] o persona[i,1]=alumno[i,1]	
										
										//contador de personas por carrera
										Repetir
											Escribir "Ingresa carrera del alumno";
											leer alumno[i,2];
											
											si alumno[i,2] = "iti" Entonces
												contI<-contI+1;
											FinSi
											
											si alumno[i,2] = "administracion" Entonces
												contA<-contA+1;
											FinSi
											
											si alumno[i,2] = "contabilidad" Entonces
												contC<-contC+1;
											FinSi
											
											si alumno[i,2] = "mecatronica" Entonces
												contM<-contM+1;
											FinSi
											
											//validar carreras
											si persona[i,2]<>alumno[i,2] Entonces
												Escribir "carrera no valida";
											SiNo
												si persona[i,2]=alumno[i,2] Entonces
													Escribir "carrera valida";
												FinSi
											FinSi
											//grupos aleatorios segun carrera
											si persona[i,2 ] = "iti" Entonces
												id<-aleatorio(0,1);
												alumno[i,3]<-grupos[id];
											FinSi
											si persona[i,2] ="administracion" Entonces
												id<-aleatorio(2,3);
												alumno[i,3]<-grupos[id];
											FinSi
											si persona[i,2] ="contabilidad" Entonces
												id<-aleatorio(4,5);
												alumno[i,3]<-grupos[id];
											FinSi
											si persona[i,2] ="mecatronica" Entonces
												id<-aleatorio(6,7);
												alumno[i,3]<-grupos[id];
											FinSi
										Hasta Que persona[i,2]=alumno[i,2] 
										
										
									FinPara
									
									Escribir "UPN";
									Escribir "************************************************************************************";
									Escribir "*  ALUMNO          APELLIDO          CARRER          grupo                         *";
									Escribir "************************************************************************************";
									para i<-0 hasta n-1 Con Paso 1 Hacer 
										Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ";
										Escribir "  ";
									FinPara
									Escribir "   ";
									Escribir "   ";
									Escribir "   ";
									Escribir "¿Desea continuar?";
									leer deseacontinuar;
									
								SiNo
									
									si persona[0,0]<> ' ' Entonces
										si opcion =4 Entonces
											Escribir "4.1.- becas";
											Escribir "4.2.- alumnos becados";
											
											escribir "Estos son los tipos de becas que hay";
											Escribir "Solo tenemos 3 tipos de becas en nuestra institucion";
											Escribir "La primera beca consta del 20% y es con un promedio de 85 a 89";
											Escribir "La segunda beca consta del 50% y es con un promedio de 90 a 94";
											Escribir "La tercera beca consta del 100% y es con un promedio de 95 a 100";
											
											Escribir "¿Desea continuar?";
											leer deseacontinuar;
											
										SiNo
											
											si persona[0,0]<> ' ' Entonces
												si opcion=5 Entonces
													Escribir "5.1.-Nombre de las carreras";
													Escribir "5.2.-Precio por carrera";
													si opcion2=5.1 Entonces
														Escribir "ITI";
														Escribir "ADMINISTRACION";
														Escribir "CONTABILIDAD";
														Escribir "MECATRONICA";
														
														Escribir "¿Desea continuar?";
														leer deseacontinuar;
														
													sino 
														
														si opcion2=5.2 Entonces
															Escribir "EL PRECIO DE LA CARRERA DE ITI ES";
															Escribir "$1800";
															Escribir "EL PRECIO DE LA CARRERA DE ADMINISTRACION ES";
															Escribir "$1800";
															Escribir "EL PRECIO DE LA CARRERA DE CONTABILIDAD ES";
															Escribir "$1800";
															Escribir "EL PRECIO DE LA CARRERA DE MECATRONICA ES";
															Escribir "$1800";
															Escribir "¿Desea continuar?";
															leer deseacontinuar;
															
														FinSi
													FinSi
													
												SiNo
													//ver cuantos alumnos hay por carrera
													si persona[0,0]<> ' ' Entonces
														si opcion=6 Entonces
															Escribir "el numero de alumnos inscritos por carrera es";
															Escribir "Las personas inscritas a iti son, ",contI;
															Escribir "Las personas inscritas a administracion son, ",contA;
															Escribir "Las personas inscritas a contabilidad son ",contC;
															Escribir "Las personas inscritas a mecatronica son ",contM;
															Escribir "¿Desea continuar?";
															leer deseacontinuar;
															
															
															
														SiNo
															
															//validacion por grupo
															
															Si persona[0,0]<> ' ' Entonces
																Si opcion = 7 Entonces
																	Escribir "grupos con profes";
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "a201" y maestros[i,3] = "a201"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "a202" y maestros[i,3] = "a202"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "b301" y maestros[i,3] = "b301"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "b302" o maestros[i,3] = "b2302"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "c401" o maestros[i,3] = "c401"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "c402" y maestros[i,3] = "c402"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "d501" o maestros[i,3] = "d501"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	
																	para i<-0 hasta n-1 con paso 1 Hacer
																		si alumno[i,3] = "d502" o maestros[i,3] = "d502"  Entonces
																			Escribir "****************************************************************************************************";
																			Escribir "*  ALUMNO          APELLIDO          CARRER          GRUPO       PROFESOR      APELLIDO            *";
																			Escribir "****************************************************************************************************";
																			para i<-0 hasta n-1 Con Paso 1 Hacer 
																				Escribir Sin Saltar alumno[i,0], "            ", alumno[i,1], "            ", alumno[i,2], "           ", alumno[i,3],"           ", maestros[i,0], "            ", maestros[i,1];
																				Escribir "  ";
																			FinPara
																		FinSi
																	FinPara
																	
																	Escribir "¿Desea continuar?";
																	leer deseacontinuar;
																	
																FinSi
															SiNo
																Escribir "No puedes ingresar a esta opcion porque no has hecho ningun pego";
															FinSi
														FinSi
													SiNo
														Escribir "No puedes ingresar a esta opcion porque no has hecho ningunn pago";
													FinSi
													
												FinSi
											SiNo
												Escribir "No puedes ingresar a esta opcion porque no has hecho ningunn pago";
											FinSi
											
										FinSi
									SiNo
										Escribir "No puedes ingresar a esta opcion porque no has hecho ningunn pago";
									FinSi
								FinSi	
							SiNo
								Escribir "No puedes ingresar a esta opcion porque no has hecho ningunn pago";
							FinSi
							
						FinSi
					SiNo
						Escribir "No puedes ingresar a esta opcion porque no has hecho ningunn pago";
					FinSi
				FinSi
			Hasta Que deseacontinuar="no"	
FinProceso
