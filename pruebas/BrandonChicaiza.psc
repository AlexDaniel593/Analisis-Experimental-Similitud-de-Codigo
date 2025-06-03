Algoritmo CajeroAutomaticoDeExamen
	
    Definir opcion Como Entero
    Definir saldo, monto Como Real
    Definir continuar Como Caracter
	
    saldo <- 1000
	
    Repetir
        Escribir "------ CAJERO AUTOMÁTICO CREADO POR JAIR ------"
        Escribir "1. Consultar saldo"
        Escribir "2. Retirar dinero"
        Escribir "3. Depositar dinero"
        Escribir "4. Salir"
        Escribir "Seleccione una opción por favor (1-4): "
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
                Escribir "Depósito exitoso. Nuevo saldo: $", saldo
				
            Caso 4:
                Escribir "Gracias por usar el cajero automático creado por Jair."
			
				
            De Otro Modo:
                Escribir "Opción inválida."
        FinSegun
		
        Escribir ""
        Escribir "¿Desea realizar otra transacción? (S/N): "
        Leer continuar
		
    Hasta Que continuar = "N" o continuar = "n"
	
FinAlgoritmo
