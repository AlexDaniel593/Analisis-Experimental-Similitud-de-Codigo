Algoritmo CajeroAutomaticoDeExamen
	
    Definir opcion Como Entero
    Definir saldo, monto Como Real
    Definir continuar Como Caracter
	
    saldo <- 1000
	
    Repetir
        Escribir "------ CAJERO AUTOM�TICO CREADO POR JAIR ------"
        Escribir "1. Consultar saldo"
        Escribir "2. Retirar dinero"
        Escribir "3. Depositar dinero"
        Escribir "4. Salir"
        Escribir "Seleccione una opci�n por favor (1-4): "
        Leer opcion
		
        Segun opcion Hacer
            Caso 1:
                Escribir "Su saldo actual es: $", saldo
				
            Caso 2:
                Escribir "Ingrese el monto a retirar: "
                Leer monto
                Si monto <= saldo Entonces
                    saldo <- saldo - monto
                    Escribir "Retiro exitoso. Nuevo saldo: $", saldo
                Sino
                    Escribir "Fondos insuficientes."
                FinSi
				
            Caso 3:
                Escribir "Ingrese el monto a depositar: "
                Leer monto
                saldo <- saldo + monto
                Escribir "Dep�sito exitoso. Nuevo saldo: $", saldo
				
            Caso 4:
                Escribir "Gracias por usar el cajero autom�tico creado por Jair."
			
				
            De Otro Modo:
                Escribir "Opci�n inv�lida."
        FinSegun
		
        Escribir ""
        Escribir "�Desea realizar otra transacci�n? (S/N): "
        Leer continuar
		
    Hasta Que continuar = "N" o continuar = "n"
	
FinAlgoritmo
