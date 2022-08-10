Algoritmo alg3
	
	alf, clave, espacio, salida es caracteres
	contador, arregloClave es entero //utilizamos contador dentro de distintos for 
	
	//definimos y declaramos el arreglo con el abecedario
	Dimension alf[42];
	alf[0] = "A"; alf[1] = "B"; alf[2] = "C"; alf[3] = "D";alf[4] = "E"; alf[5] = "F"; alf[6] = "G"; alf[7] = "H"; alf[8] = "I"; alf[9] = "J"; alf[10] = "K"; alf[11] = "L"; alf[12] = "M"; alf[13] = "N"; alf[14] = "Ñ"; alf[15] = "O"; alf[16] = "P"; alf[17] = "Q"; alf[18] = "R"; alf[19] = "S"; alf[20] = "T"; alf[21] = "U"; alf[22] = "V"; alf[23] = "W"; alf[24] = "X"; alf[25] = "Y"; alf[26] = "Z"; alf[27] = "0"; alf[28] = "1"; alf[29] = "2"; alf[30] = "3"; alf[31] = "4"; alf[32] = "5"; alf[33] = "6"; alf[34] = "7"; alf[35] = "8"; alf[36] = "9"; alf[37] = "Á"; alf[38] = "É"; alf[39] = "Í"; alf[40] = "Ó"; alf[41] = "Ú";
	
	fraseE = "YJRLT32OLÑKFRHYLZ"
	sizeFraseE = longitud(fraseE)

	clave = "5237"
	
	//definimos arreglo letras para iterar por cada letra de la fraseE
	dimension letras[sizeFraseE]
	tamañoArregloClave = 1
	
	//determinar tamaño de arreglo clave
	dimension arregloClave[longitud(clave)]
	//Fin configuracion arreglo clave
	
	//llenado de arregloClave
	Para i <- 0 hasta Longitud(clave) - 1 con paso 1 Hacer
		arregloClave[i] = ConvertirANumero(subcadena(clave,i,i))
	FinPara
	//fin llenado de arregloClave
	
	contadorSalto = 0
	anterior = 0
	contador = 0//a cero el contador para reutilizarlo
	x=0
	Para i <- 0 hasta sizeFraseE-1 con paso 1 Hacer
		letras[i] = subcadena(fraseE,i,i)
		//para recorrer arregloClave alf
		Para j <- 0 hasta 41 con paso 1 Hacer
			si Mayusculas(letras[i]) == alf[j] Entonces
				x = j - arregloClave[contador]
				
				si x < 0 Entonces
					x = x + 42
				FinSi
				salida = salida + alf[x]
				j = 42
			FinSi
			x = 0
		FInPara
		
		contadorSalto = contadorSalto + 1
		escribir contadorSalto ' = ' arregloClave[contador]
		si contadorSalto  = arregloClave[contador] y contador <= Longitud(clave) entonces
			salida = salida + " "
			contador = contador + 1
			contadorSalto = 0
		FinSi
		
		
	FinPara
	
	
	
	escribir "La frase que ingresaste es: " fraseE
	escribir "El mensaje es: " salida
	
	
FinAlgoritmo
