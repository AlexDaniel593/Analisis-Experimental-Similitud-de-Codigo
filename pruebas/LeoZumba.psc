Algoritmo digitoS
	Definir num, sumar, digito, a,b,c,d Como Entero
	Escribir "Ingrese un n�mero entero no mayor a 5 cifras"
	Leer num
	Si num>99999 y num<0 Entonces
		Escribir "El n�mero que ingreso no es valido para la operaci�n"
	SiNo
		digito<-num%10 //Encontramos el c�digo para calcular cada d�gito
		a<-trunc(num/10)%10//Truncamos la divisi�n del num y el MOD para encontrar el segundo d�gito
		b<-trunc(num/100)%10// As� continuamente dividimos num para encontrar el tercer d�gito
		c<-trunc(num/1000)%10
		d<-trunc(num/10000)%10
		sumar<-digito+a+b+c+d
	FinSi
	Escribir "Los d�gitos son: " , d, c, b, a, digito
	Escribir "La suma de sus d�gitos es: ",sumar
	
FinAlgoritmo
