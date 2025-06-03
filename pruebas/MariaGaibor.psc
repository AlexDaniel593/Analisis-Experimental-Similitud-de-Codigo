Algoritmo Ejercicio_2
	definir n,r,d,s,total,final Como Real
	s<-1000
	Escribir "Menu de opciones"
	Escribir "1. Consultar saldo"
	Escribir "2. Retirar dinero"
	Escribir "3. Depositar dinero"
	Escribir "4. Salir"
	Repetir
		Escribir "Que opcion deseas?"
		Leer n
		Si n=1 Entonces
			Escribir "Tu saldo inicial es de: ", s," dolares"
			
		Fin Si
		Si n=2 Entonces
			Escribir "Cuanto dinero deseas retirar?"
			leer r
			total<-s-r
			Escribir "Tu saldo final es de: ",total," dolares"
		FinSi
		Si n=3 Entonces
			Escribir "Cuanto dinero deseas depositar?"
				leer d
				final<-s+d
				Escribir "Tu saldo final es de: ",final," dolares"
		FinSi
		Si n=4 Entonces
			Escribir "Saliendo..."
		SiNo 
			Escribir "Ejecutando..."
		FinSi
	Hasta Que n=4
	
FinAlgoritmo
