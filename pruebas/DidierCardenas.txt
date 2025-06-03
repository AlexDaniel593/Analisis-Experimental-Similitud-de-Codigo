Algoritmo cajero_automatico
	Definir saldo, retiro, deposito, opciones Como Entero
	saldo <- 1000
	opciones <- 0
	Mientras opciones=0 Hacer
		Escribir ' 1. Consultar saldo.'
		Escribir ' 2. Retirtar dinero.'
		Escribir ' 3. Depositar dinero'
		Escribir ' 4. Salir.'
		Leer opciones
	FinMientras
	Si opciones<1 O opciones>4 Entonces
		Escribir 'opcion no valida'
	SiNo
		Si opciones=1 Entonces
			Escribir 'Su saldo es: ', saldo
			Escribir 'Aplastar cero para realizar mas procesos'
			Leer opciones
		FinSi
		Si opciones=2 Entonces
			Escribir ' Dinero a retirar'
			Leer retiro
			Si retiro>saldo Entonces
				Escribir ' Saldo insuficiente'
				Escribir 'aplastar cero para realizar mas procesos'
				Leer opciones
			SiNo
				saldo <- saldo-retiro
				Escribir ' su saldo actual es: ', saldo
				Escribir 'aplastar cero para realizar mas procesos'
				Leer opciones
			FinSi
		FinSi
		
		Si opciones=3 Entonces
				Escribir ' Dinero a depositar'
				Leer deposito
				saldo <- saldo+deposito
				Escribir 'Su saldo actual es: ', saldo
				Escribir 'aplastar cero para realizar mas procesos'
				Leer opciones
		FinSi
			Si opciones=4 Entonces
				Escribir 'gracias por preferirnos'
				Escribir 'aplastar cero para realizar mas procesos'
				Leer opciones
			FinSi
		
	FinSi
FinAlgoritmo
