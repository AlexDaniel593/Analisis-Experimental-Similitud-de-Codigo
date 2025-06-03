Proceso Cajero_Automatico
    Definir saldo, opcion, retiro, deposito Como Real
    Definir continuar Como Caracter
	
    saldo <- 1000
	
    Repetir
        Escribir "========== Cajero Autom�tico =========="
        Escribir "1. Consultar saldo"
        Escribir "2. Retirar dinero"
        Escribir "3. Depositar dinero"
        Escribir "4. Salir"
        Escribir "Seleccione una opci�n (1-4):"
        Leer opcion
		
        Si opcion < 1 o opcion > 4 Entonces
            Escribir "Opci�n inv�lida. Intente nuevamente."
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
                    Escribir "Monto inv�lido. Debe ser mayor que 0."
                Sino
                    saldo <- saldo + deposito
                    Escribir "Dep�sito exitoso. Nuevo saldo: $", saldo
                FinSi
            FinSi
			
            Si opcion = 4 Entonces
                Escribir "Gracias por usar el cajero autom�tico."
                continuar <- "N"
            Sino
                Escribir "�Desea realizar otra operaci�n? (S/N):"
                Leer continuar
                continuar <- Mayusculas(continuar)
            FinSi
        FinSi
    Hasta Que continuar = "N"
	
FinProceso
