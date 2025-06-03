Algoritmo Cajero_Automatico
    Definir saldo, opcion, monto, continuar Como Entero
    saldo <- 1000
    continuar <- 1
    Escribir "Bienvenido al cajero autom�tico"
    Mientras continuar = 1 Hacer
	Escribir "Men� Principal"
	Escribir "1 - Consultar saldo Inicial"
	Escribir "2 - Retirar dinero"
    Escribir "3 - Depositar Dinero"
    Escribir "4 - Salir"
    Leer opcion
    Si opcion < 1 O opcion > 4 Entonces
    Escribir "Opci�n inv�lida, por favor ingrese una opci�n v�lida."
	SiNo
	Segun opcion Hacer
	1:
	Escribir "Su saldo es: ", saldo
	2:
	Escribir "Ingrese monto a retirar:"
	Leer monto
	Si monto > saldo Entonces
	Escribir "Saldo insuficiente para retirar esa cantidad."
	SiNo
	saldo <- saldo - monto
	Escribir "Retiro exitoso. Saldo actual: ", saldo
	FinSi
	3:
	Escribir "Ingrese monto a depositar:"
	Leer monto
	Si monto <= 0 Entonces
	Escribir "Monto inv�lido."
	SiNo
	saldo <- saldo + monto
	Escribir "Dep�sito exitoso. Saldo actual: ", saldo
	FinSi
	4:
	Escribir "Gracias por usar el cajero autom�tico. Hasta luego."
	continuar <- 0
	FinSegun
	Si opcion <> 4 Entonces
	Escribir "�Desea realizar otra operaci�n? (1: S�, 0: No)"
	Leer continuar
	FinSi
	FinSi
    FinMientras
FinAlgoritmo