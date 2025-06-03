Algoritmo menu_opciones//José Campaña
	Escribir "menu principal de opciones"
	Repetir// se busca repetir segun hasta que se digite el numero 4 para salir 
		Escribir "consultar saldo digite 1"
		Escribir "retirar dinero digite 2"
		Escribir "depositar dinero digite 3"
		Escribir "digite 4 para salir"
		leer num
		Segun num Hacer //se busca crear un menu de opciones
			1:
				Escribir "su saldo inicial es de 1000"
				Escribir "desea hacer otra operacion?"
			2:
				Escribir "cuanto dinero desea retirar"
				leer retD
				
					Si retD<=1000 Entonces
						saldoACTL <- 1000-retD 
						efectivo <- 1000-saldoACTL
						Escribir "su saldo es de ", saldoACTL, " y retiro ", efectivo
						Escribir "desea hacer otra operacion?"
					SiNo //se busca evitar que se retire mas dinero del presente
						Repetir
							Escribir "el retiro supera al saldo inicial"
							Escribir "digite 4 e intente de nuevo"
							leer num2
							Si num2<>4 Entonces //se condiciona el colocar el numero 4 para salir
								Escribir ""
							Fin Si
						Hasta Que num2=4
					Fin Si
				
			3:
				Escribir "dinero que desea depositar"
				leer depsto
				saldoTOT<- (1000-retD)+depsto //se busca actualizar el saldo total en caso de que existan retiros// 
				Escribir "su saldo despues del deposito es de: ", saldoTOT 
				Escribir "desea hacer otra operacion?"
			4:
				Escribir "proceso terminado"
					De Otro Modo: escribir "digite un numero que se encuentre dentro del rango"
		Fin Segun
	Hasta Que num = 4 
FinAlgoritmo
