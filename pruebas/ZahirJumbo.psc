Algoritmo Zahir_Jumbo_Cajero_Automatico
	Definir saldo, opciones, retiro, deposito, SI_NO como real
	SI_NO<-1
	saldo<-1000
	Escribir "Bienvenido al Cajero Automatico De el Banco"
	Mientras SI_NO<>0 Hacer
		Escribir "Ingrese:" 
		Escribir "1 para consultar su saldo"
		Escribir "2 para retirar dinero"
		Escribir "3 para depositar dinero"
		Escribir "4 para Salir"
		Leer opciones
		Si opciones>=1 y opciones<=4 Entonces//valida solo valores correctos para opciones
			Segun opciones Hacer
				1:
					Escribir "Su saldo es: ", saldo
					Escribir "Si desea realizar otra operacion, ingrese 1"
					Escribir "Si desea finalizar la operacion ingrese 0"
					Leer SI_NO
				2:
					Escribir "Ingrese el monto a retirar"
					Leer retiro
					Si saldo>=retiro y retiro>0 Entonces//INVALIDA VALORES MAYORES AL SALDO
						saldo<-saldo-retiro
						Escribir "Operación exitosa"
					SiNo
						Escribir "Saldo insuficiente"
					Fin Si
					Escribir "Si desea realizar otra operacion, ingrese 1"
					Escribir "Si desea finalizar la operacion ingrese 0"
					Leer SI_NO
				3:
					Escribir "Ingrese el monto a depositar"
					Leer deposito
					Si deposito>0 Entonces//INVALIDA VALORES NEGATIVOS
						saldo<-saldo+deposito
						Escribir "Operación exitosa"
					SiNo
						Escribir "Operacion Inválida"
					Fin Si
					Escribir "Si desea realizar otra operacion, ingrese 1"
					Escribir "Si desea finalizar la operacion ingrese 0"
					Leer SI_NO
				4:
					Escribir "Ingrese 0 para salir, si desea continuar ingrese 1"
					Leer SI_NO
			Fin Segun
		SiNo
			Escribir "Opción inválida"
		Fin Si
	Fin Mientras
FinAlgoritmo
