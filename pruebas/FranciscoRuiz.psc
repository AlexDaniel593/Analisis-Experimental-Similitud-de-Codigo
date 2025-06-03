Algoritmo Cajero //  Francisco Ruiz 
    Definir sal, opcion, num1, cont Como Entero
	Definir  claro, denegado Como Caracter
	
sal <- 1000  // El ejercicio dijo iniciemos con un saldo de 1000
    continuar <- 1
	
    Mientras continuar = 1 Hacer
        Escribir "QUE NECESITA:" // EL MENU QUE DICE QUE SE HAGA 
        Escribir "1. saldo"
        Escribir "2. Retidar"
        Escribir "3. Deporitar"
        Escribir "4. Adios"        // seria la opcioon final 
        Escribir "Ingrese del 1 al 4: "
        Leer opcion
		
        Si  opcioones > 4 o opcion < 1 Entonces
            Escribir "no vale ingrese los valores que se le pide" // cuando pongan un numero diferente del rango que nos establecio el ejerciico 
        Sino
            Si opcion = 1 Entonces         //LA OPCION 1 ESTARIA HAY 
                Escribir "saldo es:", sal
            FinSi
			
            Si opcion = 2 Entonces         // La opcion 2 estaria hay 
                Escribir "Cuanto retira"
                Leer num1
                Si num1 > sal Entonces
                    Escribir "No suficiente saldo"
                Sino
                    sal <- sal - num1
                    Escribir "Retiro realizado: ", sal
                FinSi
            FinSi
			
            Si opcion = 3 Entonces           //la opcion 3 estaria hay 
                Escribir "Cuanto va adepositar?"
                Leer num1
                sal <- sal + num1 // si ole sumo se hace el deposito 
                Escribir "Depocito: ", sal
            FinSi
			
            Si opcion = 4 Entonces     // 4 para salir 
                Escribir "Hasta luego"
                cont <- 0
            FinSi
        FinSi
		
        Si opcion <> 4 Entonces
            Escribir "realizar otra actividad? (1=claro , 2= denegado)"  // le quize establecer como caracter pero solo me dio la opcion de poner 1= claro
            Leer cont
        FinSi
    FinMientras
FinAlgoritmo
