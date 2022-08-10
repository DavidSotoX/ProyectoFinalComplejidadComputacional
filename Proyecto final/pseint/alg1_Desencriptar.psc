Algoritmo alg1_Desencriptar
	
	alf, salida, espacio es caracteres

	Dimension alf[2,37];
	//definimos y declaramos el arreglo con el abecedario
	alf[0,0] = "A"; alf[0,1] = "B"; alf[0,2] = "C"; alf[0,3] = "D";alf[0,4] = "E"; alf[0,5] = "F"; alf[0,6] = "G"; alf[0,7] = "H"; alf[0,8] = "I"; alf[0,9] = "J"; alf[0,10] = "K"; alf[0,11] = "L"; alf[0,12] = "M"; alf[0,13] = "N"; alf[0,14] = "Ñ"; alf[0,15] = "O"; alf[0,16] = "P"; alf[0,17] = "Q"; alf[0,18] = "R"; alf[0,19] = "S"; alf[0,20] = "T"; alf[0,21] = "U"; alf[0,22] = "V"; alf[0,23] = "W"; alf[0,24] = "X"; alf[0,25] = "Y"; alf[0,26] = "Z"; alf[0,27] = "0"; alf[0,28] = "1"; alf[0,29] = "2"; alf[0,30] = "3"; alf[0,31] = "4"; alf[0,32] = "5"; alf[0,33] = "6"; alf[0,34] = "7"; alf[0,35] = "8"; alf[0,36] = "9"; alf[1,0] = "B"; alf[1,1] = "5"; alf[1,2] = "3"; alf[1,3] = "W";alf[1,4] = "U"; alf[1,5] = "C"; alf[1,6] = "H"; alf[1,7] = "#"; alf[1,8] = "0"; alf[1,9] = "L"; alf[1,10] = "7"; alf[1,11] = "V"; alf[1,12] = "*"; alf[1,13] = "M"; alf[1,14] = "6"; alf[1,15] = "T"; alf[1,16] = "P"; alf[1,17] = "F"; alf[1,18] = "4"; alf[1,19] = "2"; alf[1,20] = "O"; alf[1,21] = "Q"; alf[1,22] = "X"; alf[1,23] = "Y"; alf[1,24] = "8"; alf[1,25] = "K"; alf[1,26] = "A"; alf[1,27] = "N"; alf[1,28] = "Z"; alf[1,29] = "&"; alf[1,30] = ";"; alf[1,31] = "9"; alf[1,32] = "D"; alf[1,33] = "G"; alf[1,34] = "J"; alf[1,35] = "E"; alf[1,36] = "1";
	
	escribir "escriba frase"
	leer fraseE
	fraseE = Mayusculas(fraseE)
	//fraseE = "OUMHTMHH0ZNMHH0*0VMHH0WT[VB4U2"
	sizeFraseE = longitud(fraseE)
	
	salida = ""
	validarEspacio = false
	
	//definimos el mismo tamaño de la frase para el arreglo
	dimension letras[sizeFraseE]

	Para i <- 0 hasta sizeFraseE-1 con paso 1 Hacer
		letras[i] = subcadena(fraseE,i,i)
		
		Para j <- 0 hasta 36 con paso 1 Hacer
			Si subcadena(fraseE,i,i+3) == "MHH0" Entonces
				salida = salida + " "
				validarEspacio = true
				j = 36
				i = i+3
			SiNo
				si subcadena(fraseE,i,i+1) == "B[" entonces
					salida = salida + "Á" 
					j =36
					i = i+1
				SiNo
					si subcadena(fraseE,i,i+1) == "U[" entonces
						salida = salida + "É" 
						j =36
						i = i+1
					Sino
						si subcadena(fraseE,i,i+1) == "0[" entonces
							salida = salida + "Í" 
							j =36
							i = i+1
						SiNo
							si subcadena(fraseE,i,i+1) == "T[" entonces
								salida = salida + "Ó" 
								j =36
								i = i+1
							SiNo
								si subcadena(fraseE,i,i+1) == "Q[" entonces
									salida = salida + "Ú" 
									j =36
									i = i+1
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			
			si Mayusculas(letras[i]) == alf[1,j] y validarEspacio == falso y j < 36 Entonces
				salida = salida + alf[0,j]
				j = 36
			FinSi
		FinPara
	FinPara
	

	
	escribir "La frase que ingresaste es: " fraseE
	escribir "La encriptación es: " salida
	
FinAlgoritmo
