Algoritmo Ejercicio_dos 
	capital<-1000
	Escribir "Escoja la opcion que desee: "
	Escribir "1. Consultar saldo"
	Escribir "2. Retirar dinero"
	Escribir "3. Depositar dinero"
	Escribir "4. Salir "
	leer op 
	
	Si op=1  Entonces
		totalactualizado<-totalactualizado-totalretiro
		Escribir "Su saldo es de: ", totalactualizado, "$"
		Escribir "Desea operar mas"
		Escribir "1. SI"
		Escribir "2. NO"
		Leer H
		
	SiNo
		Si op=2 Entonces
			Escribir "Ingrese valor a retirar"
			leer retiro 
			Si retiro<1000 Entonces
				totalretiro<-capital- retiro
				Escribir "El valor restante es de: ",totalretiro
			SiNo
				Escribir "Excede el valor inicial"
			Fin Si
			totalretiro<-capital- retiro 
		SiNo
			Si op=3 Entonces
				Escribir "Ingrese valor a depositar: "
				leer deposito 
				deposito<-deposito+totalactualizado
				Escribir "El valor depositado es : ",deposito
			SiNo
				Si op=4 Entonces
					Escribir "saliendo....."
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	
	
FinAlgoritmo
