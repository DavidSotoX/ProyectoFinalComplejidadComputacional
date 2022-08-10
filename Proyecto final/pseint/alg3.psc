Algoritmo alg3
	
	alf, salida, espacio, clave es caracteres
	contador, arregloClave es entero //utilizamos contador dentro de distintos for 
	
	//definimos y declaramos el arreglo con el abecedario
	Dimension alf[42];
	alf[0] = "A"; alf[1] = "B"; alf[2] = "C"; alf[3] = "D";alf[4] = "E"; alf[5] = "F"; alf[6] = "G"; alf[7] = "H"; alf[8] = "I"; alf[9] = "J"; alf[10] = "K"; alf[11] = "L"; alf[12] = "M"; alf[13] = "N"; alf[14] = "Ñ"; alf[15] = "O"; alf[16] = "P"; alf[17] = "Q"; alf[18] = "R"; alf[19] = "S"; alf[20] = "T"; alf[21] = "U"; alf[22] = "V"; alf[23] = "W"; alf[24] = "X"; alf[25] = "Y"; alf[26] = "Z"; alf[27] = "0"; alf[28] = "1"; alf[29] = "2"; alf[30] = "3"; alf[31] = "4"; alf[32] = "5"; alf[33] = "6"; alf[34] = "7"; alf[35] = "8"; alf[36] = "9"; alf[37] = "Á"; alf[38] = "É"; alf[39] = "Í"; alf[40] = "Ó"; alf[41] = "Ú";
	
	
	escribir "escriba frase"
	leer fraseE
	sizeFraseE = longitud(fraseE)
	
	salida = ""
	
	//definimos arreglo letras para iterar por cada letra de la fraseE
	dimension letras[sizeFraseE]
	tamañoArregloClave = 1
	
	//determinar tamaño de arreglo clave
	Para i <- 0 hasta sizeFraseE-1 con paso 1 Hacer
		letras[i] = subcadena(fraseE,i,i)
		si letras[i] == " " entonces
			tamañoArregloClave = tamañoArregloClave + 1
		FinSi
	FinPara
	
	dimension arregloClave[tamañoArregloClave]
	//Fin configuracion arreglo clave
	
	//llenado de arregloClave
	anterior = 0
	contador = 0
	Para i <- 0 hasta longitud(fraseE) con paso 1 Hacer
		Si (subcadena(fraseE,i,i) == " ") entonces
			arregloClave[contador] = i - anterior
			clave = clave + ConvertirATexto(arregloClave[contador])
			anterior = i + 1
			contador = contador + 1
			Escribir clave 'c'
		SiNo
			si (i == (longitud(fraseE)))Entonces
				arregloClave[contador] = i - anterior
				clave = clave + ConvertirATexto(arregloClave[contador])
				anterior = i + 1
				contador = contador + 1
				
			FinSi
		FinSi
	FinPara
	//fin llenado de arregloClave
	
	
	contador = 0//a cero el contador para reutilizarlo
	Para i <- 0 hasta sizeFraseE-1 con paso 1 Hacer
		letras[i] = subcadena(fraseE,i,i)
		//para recorrer arregloClave alf
		Para j <- 0 hasta 41 con paso 1 Hacer
			si Mayusculas(letras[i]) == alf[j] Entonces
				j = j + arregloClave[contador]
				
				si j > 41 Entonces
					j = j - 42
				FinSi
				
				salida = salida + alf[j]
				j = 42
			Sino	
				si Mayusculas(letras[i]) == " " entonces
					contador = contador + 1
					j = 42
				FinSi
			FinSi
		FInPara
	FinPara
	
	
	
	escribir "La frase que ingresaste es: " fraseE
	escribir "La encriptación es: " salida
	escribir "La clave de encriptación es: " clave
	
FinAlgoritmo
