Algoritmo sin_titulo
	definir num Como Entero
	Definir saldoinicial, retiro, numre, numdep, suma Como Real
	Escribir "1. Consultar saldo"
	Escribir "2. Retirar dinero"
	Escribir "3. Depositar dinero"
	Escribir "4. Salir"
	Leer num
	saldoinicial<-1000
	saldofinal<-saldoinicial-retiro
	si num = 1 Entonces
		Escribir "su saldo inicial es:", saldoinicial
	SiNo
		si num=2 Entonces
			Escribir "ingrese cuanto dinero va a retirar:"
			Leer numre
			si numre < 10000 Entonces
				retiro<-saldoinicial-numre
				Escribir "su saldo actual ", saldofinal, "con su retiro es", retiro
			FinSi
		SiNo
			si num=3 Entonces
				Escribir "ingrese cuanto dinero va a depositar:"
				Leer numdep
				suma<-saldofinal+numdep
			FinSi
			
		FinSi
	FinSi
FinAlgoritmo
