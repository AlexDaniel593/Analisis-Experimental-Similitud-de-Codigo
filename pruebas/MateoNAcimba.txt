Algoritmo cajero_automatico
	definir retiro,deposito Como entero //ponemos las variables que vamos a utilizar//
	definir saldo_inicial,opciones como cadena//opciones es la variable que nos ayudara//
	
	
	Escribir "BIENVENIDOS A SU CAJERO AUTOMATICO"
	Escribir "Elija la opcion que desea:"
	Escribir "1: consultar saldo"
	Escribir "2: retirar dinero"
	Escribir "3: depositar dinero"
	Escribir "4: salir"
	leer opciones
	
	saldo_inicial<-"1000"
	
	
	Segun opciones Hacer
		1:
			
			Escribir "su saldo es de:" ,saldo_inicial
		2: 
			Si retiro >1000 Entonces
				escribir "no cuenta con suficientes fondos"
			SiNo
				escribir "su transaccion se esta realizando"
			Fin Si
		3:
			escribir "Cuanto desea depositar: ", deposito
			leer deposito
			deposito<-(retiro+deposito)
			escribir "su saldo actual es de:", deposito, "dolares"
		De Otro Modo:
			escribir "gracias"
	Fin Segun
	
	
	
FinAlgoritmo
