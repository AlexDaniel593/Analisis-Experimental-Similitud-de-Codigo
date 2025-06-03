Algoritmo SumadeDijitos_AlanLoya
	Definir num1, digito Como Entero
	
	Escribir "Ingrese un numero"
	Leer num1
	si num1>99999 Entonces
		Escribir "Ingresa un numero con 5 cifras"
	SiNo
			dijito = num1 mod 10000
			dijito1=num1 mod 1000
			dijito2= num1 mod 100
			dijio3=num1 mod 10
			dijito4=num1 mod 1
			Escribir "los dijitos son",dijito,dijito1,dijito2,dijito3,dijito4
			Resultado= dijito+dijito1+dijito2+dijito3+dijito4
			Escribir " La suma es", resultado
	
	FinSi
	
FinAlgoritmo
