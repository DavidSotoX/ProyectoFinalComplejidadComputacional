

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
	print("escriba frase")
	frasee = input()
	sizefrasee = len(frasee)
	letras = [str() for ind0 in range(sizefrasee)]
	for i in range(sizefrasee):
		letras[i] = frasee[i:i+1]
		for j in range(9):
			for k in range(6):
				if str.upper(letras[i])==alf[j][k]:
					salida = salida+alf[j][0]+alf[0][k]
					j = 8
	print("La frase que ingresaste es: ",frasee)
	print("La encriptación es: ",salida)

