Proceso Cajero_Automatico
    Definir saldo, opcion, retiro, deposito Como Real
    Definir continuar Como Caracter
	
    saldo <- 1000
	
    Repetir
        Escribir "========== Cajero Automático =========="
        Escribir "1. Consultar saldo"
        Escribir "2. Retirar dinero"
        Escribir "3. Depositar dinero"
        Escribir "4. Salir"
        Escribir "Seleccione una opción (1-4):"
        Leer opcion
		
        Si opcion < 1 o opcion > 4 Entonces
            Escribir "Opción inválida. Intente nuevamente."
        Sino
            Si opcion = 1 Entonces
                Escribir "Su saldo actual es: $", saldo
            FinSi
			
            Si opcion = 2 Entonces
                Escribir "Ingrese cantidad a retirar:"
                Leer retiro
				
                Si retiro > saldo Entonces
                    Escribir "Fondos insuficientes. Su saldo es: $", saldo
                Sino
                    saldo <- saldo - retiro
                    Escribir "Retiro exitoso. Nuevo saldo: $", saldo
                FinSi
            FinSi
			
            Si opcion = 3 Entonces
                Escribir "Ingrese cantidad a depositar:"
                Leer deposito
                Si deposito <= 0 Entonces
                    Escribir "Monto inválido. Debe ser mayor que 0."
                Sino
                    saldo <- saldo + deposito
                    Escribir "Depósito exitoso. Nuevo saldo: $", saldo
                FinSi
            FinSi
			
            Si opcion = 4 Entonces
                Escribir "Gracias por usar el cajero automático."
                continuar <- "N"
            Sino
                Escribir "¿Desea realizar otra operación? (S/N):"
                Leer continuar
                continuar <- Mayusculas(continuar)
            FinSi
        FinSi
    Hasta Que continuar = "N"
	
FinProceso
