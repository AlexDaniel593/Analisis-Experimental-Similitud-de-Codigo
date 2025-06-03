Algoritmo salarioMateo_Mier
	Definir num, salo, retiro, ingreso, total Como Real
	salo = 1000
	Escribir "Bienvenido"
	Escribir "Somos su banco"
	Escribir "-------------------------------------"
	Escribir "Esta usando uno de nuestros cajeros"
	Esperar 3 segundo
	Limpiar Pantalla
	
	Escribir "selecione una de las siguientes obsiones"
	Escribir "1.Saldo de la cuenta"
	Escribir "2.Retiro de dinero"
	Escribir "3.Depositos"
	Escribir "4. Salir"
	Leer num 
	opinion <- num = 1
	Opinion1 <- num = 2
	opinion2 <- num = 3
	opinion3 <- num = 4 
	Esperar 1 Segundos
	Limpiar Pantalla
	Segun num Hacer
		1:
			Escribir "Su saldo es:" salo
		2:
			Escribir "ingrese cantidad a retirar"
			Leer retiro
			
			Si retironces
				total2<- salo - retiro
				Escribir "Su saldo actual es de:" total2
			SiNo
				insuficiente <- retiro > saldo
				Escribir "Saldo insuficiente"
			Fin Si
			
		3:
			Escribir "Ingrease cantidad a depositar:"
			Leer ingreso
			total1<- ingreso +salo
			Escribir "Su saldo actual es de:" total1
		4:
			Escribir "Hasta la procima"
		De Otro Modo:
			Escribir "Intentelo nuevamente" 
			Escribir "Obcion no valila"
	Fin Segun
	
	Escribir "GRACIAS POR PREFERIRIR NUESTOS SERVICIOS" 
FinAlgoritmo