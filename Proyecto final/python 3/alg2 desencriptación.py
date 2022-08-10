
if __name__ == '__main__':
	alf = str()
	salida = str()
	clave = str()
	alf = [[str() for ind0 in range(6)] for ind1 in range(9)]
	# definimos y declaramos el arreglo con el abecedario
	alf[0][0] = "algoritmo 2"
	alf[0][1] = "000"
	alf[0][2] = "001"
	alf[0][3] = "010"
	alf[0][4] = "011"
	alf[0][5] = "100"
	alf[1][0] = "000"
	alf[1][1] = "A"
	alf[1][2] = "B"
	alf[1][3] = "C"
	alf[1][4] = "D"
	alf[1][5] = "E"
	alf[2][0] = "001"
	alf[2][1] = "F"
	alf[2][2] = "G"
	alf[2][3] = "H"
	alf[2][4] = "I"
	alf[2][5] = "J"
	alf[3][0] = "010"
	alf[3][1] = "K"
	alf[3][2] = "L"
	alf[3][3] = "M"
	alf[3][4] = "N"
	alf[3][5] = "Ñ"
	alf[4][0] = "011"
	alf[4][1] = "O"
	alf[4][2] = "P"
	alf[4][3] = "Q"
	alf[4][4] = "R"
	alf[4][5] = "S"
	alf[5][0] = "100"
	alf[5][1] = "T"
	alf[5][2] = "U"
	alf[5][3] = "V"
	alf[5][4] = "W"
	alf[5][5] = "X"
	alf[6][0] = "101"
	alf[6][1] = "Y"
	alf[6][2] = "Z"
	alf[6][3] = "0"
	alf[6][4] = "1"
	alf[6][5] = "2"
	alf[7][0] = "110"
	alf[7][1] = "3"
	alf[7][2] = "4"
	alf[7][3] = "5"
	alf[7][4] = "6"
	alf[7][5] = "7"
	alf[8][0] = "111"
	alf[8][1] = "8"
	alf[8][2] = "9"
	alf[8][3] = " "
	
	#frasee = "100000000100010011001001011000111010101011101010111010010010001011010001111010000011011000010001000000011011000100011100"
	print("escriba frase")
	frasee = input()
	frasee = str.upper(frasee)
	sizefrasee = len(frasee)
	letras = [str() for ind0 in range(sizefrasee)]
	letras2 = [str() for ind0 in range(sizefrasee)]
	x = int()
	z = int()
	for i in range(0,sizefrasee-5,6):
		letras[i] = frasee[i:i+3]
		letras2[i] = frasee[i+3:i+6]
		if letras[i]=="000":
			x = 1
		elif letras[i]=="001":
			x = 2
		elif letras[i]=="010":
			x = 3
		elif letras[i]=="011":
			x = 4
		elif letras[i]=="100":
			x = 5
		elif letras[i]=="101":
			x = 6
		elif letras[i]=="110":
			x = 7
		elif letras[i]=="111":
			x = 8
		if letras2[i]=="000":
			z = 1
		elif letras2[i]=="001":
			z = 2
		elif letras2[i]=="010":
			z = 3
		elif letras2[i]=="011":
			z = 4
		elif letras2[i]=="100":
			z = 5
		salida = salida+alf[x][z]
	print("La frase que ingresaste es: ",frasee)
	print("La encriptación es: ",salida)

