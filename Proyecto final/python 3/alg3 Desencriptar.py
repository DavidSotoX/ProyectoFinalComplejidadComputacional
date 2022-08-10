
if __name__ == '__main__':
	alf = str()
	clave = str()
	espacio = str()
	salida = str()
	# utilizamos contador dentro de distintos for 
	contador = int()
	arregloclave = int()
	# definimos y declaramos el arreglo con el abecedario
	alf = [str() for ind0 in range(42)]
	alf[0] = "A"
	alf[1] = "B"
	alf[2] = "C"
	alf[3] = "D"
	alf[4] = "E"
	alf[5] = "F"
	alf[6] = "G"
	alf[7] = "H"
	alf[8] = "I"
	alf[9] = "J"
	alf[10] = "K"
	alf[11] = "L"
	alf[12] = "M"
	alf[13] = "N"
	alf[14] = "Ñ"
	alf[15] = "O"
	alf[16] = "P"
	alf[17] = "Q"
	alf[18] = "R"
	alf[19] = "S"
	alf[20] = "T"
	alf[21] = "U"
	alf[22] = "V"
	alf[23] = "W"
	alf[24] = "X"
	alf[25] = "Y"
	alf[26] = "Z"
	alf[27] = "0"
	alf[28] = "1"
	alf[29] = "2"
	alf[30] = "3"
	alf[31] = "4"
	alf[32] = "5"
	alf[33] = "6"
	alf[34] = "7"
	alf[35] = "8"
	alf[36] = "9"
	alf[37] = "Á"
	alf[38] = "É"
	alf[39] = "Í"
	alf[40] = "Ó"
	alf[41] = "Ú"
	print("escriba encriptado")
	frasee = input()
	#frasee = "YJRLT32OLÑKFRHYLZ"
	sizefrasee = len(frasee)
	print("escriba clave")
	clave = input()
	#clave = "5237"

	# definimos arreglo letras para iterar por cada letra de la fraseE
	letras = [str() for ind0 in range(sizefrasee)]
	tamanoarregloclave = 1

	# determinar tamaño de arreglo clave
	arregloclave = [int() for ind0 in range(len(clave))]
	# Fin configuracion arreglo clave

	# llenado de arregloClave
	for i in range(len(clave)):
		arregloclave[i] = int(clave[i:i+1])
	# fin llenado de arregloClave

	contadorsalto = 0
	anterior = 0
	# a cero el contador para reutilizarlo
	contador = 0
	x = 0
	for i in range(sizefrasee):
		letras[i] = frasee[i:i+1]
		# para recorrer arregloClave alf
		for j in range(42):
			if str.upper(letras[i])==alf[j]:
				x = j-arregloclave[contador]
				if x<0:
					x = x + 42
				salida = salida+alf[x]
				break
			x = 0

		contadorsalto = contadorsalto+1
		#print(contadorsalto," = ",arregloclave[contador])
		if contadorsalto==arregloclave[contador] and contador<=len(clave):
			salida = salida+" "
			contador = contador+1
			contadorsalto = 0
	print("La frase que ingresaste es: ",frasee)
	print("El mensaje es: ",salida)

