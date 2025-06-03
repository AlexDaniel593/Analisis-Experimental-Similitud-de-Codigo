Proceso TaniaRubyGuagalango
	Definir num, suma, digito Como Entero;
	suma<-0;
	Escribir "Ingrese un numero entero de hasta 5 cifras";
	leer num;
	Si num>=0 y num<=99999 Entonces
		Mientras num>0 Hacer
			digito<- num MOD 10;
			suma<-suma+digito;
			num<-num/10;
		FinMientras
		Escribir "la suma de los numeros es:", suma;
	SiNo
		Escribir "numero fuera de rango";
	FinSi
FinProceso