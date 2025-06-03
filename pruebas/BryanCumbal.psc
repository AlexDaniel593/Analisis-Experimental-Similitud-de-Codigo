Algoritmo Cajero_automatico
		Definir saldo, opcion, retiro, deposito Como Real
		Definir continuar Como Caracter
		saldo = 1000
		continuar = "S"
		Mientras continuar = "S" o continuar = "s" Hacer
			Repetir
				Escribir "Menu_seleccione una de las siguientes opciones: "
				Escribir "1. Consultar saldo"
				Escribir "2. Retirar dinero"
				Escribir "3. Depositar dinero"
				Escribir "4. Salir"
				Leer opcion
			Hasta Que opcion >= 1 y opcion <= 4
			Si opcion = 1 Entonces
				Escribir "Su saldo actual es: $", saldo
			Sino
				Si opcion = 2 Entonces
					Escribir "Ingrese el monto a retirar:"
					Leer retiro
					Si retiro > 0 y retiro <= saldo Entonces
						saldo = saldo - retiro
						Escribir "Su saldo restante es de:", saldo " Dolares"
					Sino
						Escribir "Valor inválido."
					FinSi
				Sino
					Si opcion = 3 Entonces
						Escribir "Ingrese el monto a depositar:"
						Leer deposito
						Si deposito > 0 Entonces
							saldo = saldo + deposito
							Escribir "Su saldo actual es de: ", saldo, " Dolares"
						Sino
							Escribir "Monto inválido."
						FinSi
					Sino
						Escribir "Hasta pronto :)..."
					FinSi
				FinSi
			FinSi
			Escribir "¿Desea realizar otra operación? (S/N):"
			Leer continuar
		FinMientras
FinAlgoritmo
