Algoritmo CajeroAutomatico 
	Definir opcion, deposito, retiro, saldoInicial como Real
	Definir accion Como Caracter
	
	Repetir 
		Escribir "---------MENU DE OPCIONES----------"
		Escribir "1. Consultar saldo"
		Escribir "2. Retirar dinero"
		Escribir "3. Depositar dinero"
		Escribir "4. Salir"
		Leer opcion 
		
		Si opcion > 4 O opcion < 0 Entonces
			Escribir "Opción no valida"
			Escribir "Seleccione una opción"
		FinSi
		saldoInicial<-1000
		Segun opcion Hacer 
			1: 
				Escribir "Su saldo inicial es de:", saldoInicial," $"
				Escribir "Desea realizar otra acción (S/N)."
				Leer accion 
				Si accion = 'S' Entonces
					Escribir "Seleccione una opción"
				SiNo
					Escribir "Fin del programa"
				FinSi
			2: 
				Escribir "Ingrese el valor del retiro:"
				Leer retiro 
				Si retiro > saldoInicial Entonces
					Escribir "Su saldo es insuficiente (Saldo 1000 $)"
				SiNo 
					saldo <- saldoInicial-retiro
					Escribir "Dinero retirado:", retiro ,". Saldo Actual:", saldo
				FinSi
				Escribir "Desea realizar otra acción (S/N)."
				Leer accion 
				Si accion = 'S' Entonces
					Escribir "Seleccione una opción"
				SiNo
					Escribir "Fin del programa"
				FinSi
			3: 
				Escribir "Deposite la cantidad de dinero: "
				Leer deposito 
				
				saldo <- saldoInicial + deposito
				
				Escribir "Usted deposito: ", deposito , " . Saldo Actual: ", saldo
				Escribir "Desea realizar otra acción (S/N)."
				Leer accion 
				Si accion = 'S' Entonces
					Escribir "Seleccione una opción"
				SiNo
					Escribir "Fin del programa"
				FinSi
			4:
				Escribir "Fin del Programa"
				
		FinSegun 
	Hasta que opcion = 4
FinAlgoritmo
