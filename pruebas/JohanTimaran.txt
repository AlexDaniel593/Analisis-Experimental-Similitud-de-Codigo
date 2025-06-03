Algoritmo Programa_Cajero_Automatico
	Definir opcion,saldoinicial, montoretiro, montodeposito, saldoactual Como Entero
	Definir respuesta Como Caracter
	
	saldoinicial<-1000
	
	
	Escribir "Escoja una opcion"
	
	Escribir "----------MENU DE OPCIONES-----------"
	eSCRIBIR "1. Consultar Saldo"
	Escribir "2. Retirar Dinero"
	Escribir "3. Depositar Dinero"
	Escribir "4. Salir"
	Leer opcion
	Si opcion>=5 Entonces
		Escribir  "Solo hay 4 opciones disponibles"
	FinSi
	Si opcion=1 Entonces
		Escribir "Su saldo actual es de:" saldoinicial
		
	FinSi
	
		Si opcion=2 Entonces
			Escribir "Ingrese el valor del retiro"
			Leer montoretiro
		FinSi
			Si montoretiro >1000 Entonces
				Escribir "Saldo no disponible"
			FinSi
			Si opcion=3 Entonces
				Escribir "Ingrese valor del deposito"
				Leer montodeposito
				saldoactual<- (saldoinicial+montodeposito)
				Escribir"Su saldo actual es de:", saldoactual 
			FinSi
			Si opcion=4 Entonces
				
				
					Escribir "Desea salir(s/n)?" 
					Leer respuesta
				
			FinSi
		
	
FinAlgoritmo
