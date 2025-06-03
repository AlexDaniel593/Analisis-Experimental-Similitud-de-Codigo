Proceso Cajero
	Definir saldo, retiro, depositar, resultado1, resultado2 Como Entero;
	Definir opciones como cadena;
	Escribir "Seleccione un opcion: 1. Consultar saldo, 2. Retirar dinero, 3. Depositar dinero; 4. Salir";
	Leer num1;
	saldo <- 10000;
	Segun num1 Hacer
		opcion_1: 1: Escribir "Consultar Saldo";
				Escribir "Ingrese su cuenta";
				Escribir "Su saldo es de 1000";
		opcion_2:
		2: "Retirar dinero;
			Escribir "Ingrese la cantidad que desea retirar";
			Leer retiro;
			resultado1<- saldo - retiro;
			Escribir "Su saldo actual es de:", resultado1 ;
			Si retiro > saldo entonces 
				Escribir "Saldo insuficiente";
			FinSi
		opcion_3:
		3: " Depositar dinero;
			Escribir "Ingrese la cantidad que desea depositar:";
			Leer depositar;
			resultado2 <- saldo + depositar;
			Escribir "Su saldo actual es de:", resultado2;
		4: " Salir;
			Escribir "Estamos para servirle";
		De Otro Modo:
			Escribir "Ingrese un opcion valida";
	FinSegun
	

	
FinProceso
