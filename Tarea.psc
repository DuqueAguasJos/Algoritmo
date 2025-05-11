Algoritmo MenuBasico
	definir opcio como entero
	
	Repetir
		escribir "=====Menu====="
		escribir "1. Calculadora de vuelto"
		escribir "2. Conversor de kilogramos a libras y viceversa"
		escribir "3. Calculadora de descuentos"
		escribir "4. Calcular iva"
		Escribir "5. Comparación de precios"
		Escribir "6. Clasificador de edad"
		escribir "7. Identificador numero par y multiplo de 10"
		escribir "8. puntaje del 1 al 10"
		Escribir "9. multiplo de 3, 9 y 12"
		escribir "10. Calculadora de propina"
		Escribir "11. Clasificador de compra"
		escribir "12. Positivo al doble y negativo en positivo"
		escribir "13. Verificador de acceso por edad y dinero"
		escribir "14. Descuento por edad y monto"
		escribir "15. Cálculo de cambio exacto con billetes de $10 y $5"
		escribir "16. Categorizador de día de la semana"
		escribir "17. Clasificador de producto por precio unitario"
		escribir "18. Determinador de bisiesto (año)"
		escribir "19. Conversor de horas a minutos y segundos"
		escribir "20. Verificador de triple de un número"
		escribir "21. Determinar riesgo por síntomas múltiples para el efecto tienes"
		escribir "22. Clasificador de presion arterial"
		escribir "23. Mostrar saludo personalizado"
		escribir "24. Detectar si el carácter ingresado es una vocal"
		escribir "25. Detectar si el carácter ingresado es una consonante"
		escribir "26. Comparar si dos nombres ingresados son iguales"
		escribir "27. Verificar si una letra es mayúscula o minúscula"
		escribir "28. Mostrar nombre completo del cliente"
		escribir "29. Verificar si una palabra es corta o larga"
		escribir "30. Contar los caracteres y convertir a mayúsculas cualquier frase"
		escribir "31. Salir"
		escribir "ingrese una opción"
		leer opcio
		
		Segun opcio Hacer
			1:
				escribir " Calculadora de vuelto"
				calcularvuelto()
			2:
				Escribir "conversor de peso Kg a Libra y viceversa"
				Conversorpeso()
			3:
				Escribir "Descuento de compra"
				descuentocompra()
			4: 
				escribir "Calcular iva"
				calculo_iva()
			5:
				escribir "Comparación de precios"
				comparacion_de_precio()
			6:
				escribir "Clasificador de edad"
				clasificador_de_edad()
			7:
				escribir "Identificador numero par y multiplo de 10"
				identificador_numeropar_o_impar()
			8:
				escribir "Puntaje del 1 al 10"
				puntaje()
			9: 
				escribir "Multiplo de 3, 9 y 12"
				multi()
			10:
				escribir "Propina por nivel de servicio"
				propin()
			11:
				escribir "Clasificador de compra"
				clasificado_de_compra()
			12:
				escribir "Doble de positivo y convertir negativo a positivo"
				positiv_negativ_neutro()
			13:
				escribir "Verificador de acceso por edad y dinero"
				tienda_edad_dinero()
			14:
				escribir "Descuento por edad y monto"
				descuentoedadmonto()
			15:
				escribir "Cálculo de cambio exacto con billetes de $10 y $5"
				vueltobillete()
			16:
				escribir "Categorizador de día de la semana"
				diasemana()
			17:
				escribir "Clasificador de producto por precio unitario"
				clasificadordeproducto()
			18:
				escribir "Determinador de bisiesto (año)"
				determinarbisiesto()
			19:
				escribir "Conversor de horas a minutos y segundos"
				conversordehoras()
			20:
				Escribir "Verificador de triple de un número"
				verificadordetriple()
			21: 
				escribir "Determinar riesgo por síntomas múltiples para el efecto tienes"
				riesgo()
			22:
				escribir "Clasificador de presion"
				presion()
			23:
				escribir "Mostrar saludo personalizado"
				nombrepersonalizado()
			24:
				escribir "Detectar si el carácter ingresado es una vocal"
				vocales()
			25: 
				escribir "Detectar si el carácter ingresado es una consonante"
				consonanteverificar()
			26:
				Escribir "Comparar si dos nombres ingresados son iguales"
				compararnombre()
			27:
				escribir "Verificar si una letra es mayúscula o minúscula"
				verificadordemayuscula
			28: 
				escribir "Mostrar nombre completo del cliente"
				nombrecompleto()
			29:
				escribir "Verificar si una palabra es corta o larga"
				palabracortaolarga()
			30:
				escribir "Contar los caracteres y convertir a mayúsculas cualquier frase"
				contarymayuscula
			31:
				escribir "Saliendo del programa..."
			De Otro Modo:
				Escribir "Opción no valida"
		Fin Segun
	Hasta Que opcion =31
	
FinAlgoritmo




//Ejercicio 1: Calculadora de vuelto
	//Pedir costo y dinero recibido. Calcular y mostrar el vuelto o advertir si no alcanza.
	//bozquejo                                                                  operaciones posibles en el caso:
	//entrada      proceso                           salida                    costo:10                   costo:10                 costo:5
	//costo(leer) calcular(costo y dinero recibido)                            dinero:10  = 10 - 10= 0    dinero: 20 = 20-10= 10   dinero:2 = 5-2= 3(el dinero faltante)       
	//dinero(leer)
	//vuelto(calcular) dinero - costo                el vuelto para el cliente
	//faltante(calcular) costo- dinero               el dinero faltante si no alcanza el minimo
	
	//            Si costo<0 o dinero<0 Entonces
	//               escribir "Error: Los numero no pueden ser negativos"
	//            Sino
	//              Si dinero>=costo Entonces
	//                 vuelto<- dinero-costo
	//                 Escribir "El vuelto del dinero a entregar es: $",( vuelto) " Dolares"
	//                  sino
	//                      faltante<- costo- dinero
	//                  escribir "Dinero insuficiente. Faltan $", faltante, " para completar el pago."
	
funcion calcularvuelto
	
	definir costo, dinero, vuelto, faltante como real
	
	costo<-0; dinero<-0; vuelto<-0; faltante<-0
	
	escribir "ingrese el costo del producto:"
	leer costo
	
	escribir "ingrese el dinero recibido"
	leer dinero
	
	Si costo<0 o dinero<0 Entonces
		escribir "Error: Los numero no pueden ser negativos"
	SiNo
		Si dinero>=costo Entonces
			vuelto<- dinero-costo
			Escribir "El vuelto del dinero a entregar es: $",( vuelto) " Dolares"
		sino
			faltante<- costo- dinero
			escribir "Dinero insuficiente. Faltan $", faltante, " para completar el pago."
		Fin Si
	Fin Si
FinFuncion



//Ejercicio 2: Conversor de kilogramos a libras y viceversa
//Convertir entre kilogramos y libras. Mostrar el resultado.
//entrada = opcio(leer); kilogramo(asignar) 0.453592; libra(asignar) 2.20462; resultado(calcular)    L a Kg: 0.453592;   
//Kg a l: 2.20462
//proceso  = si opcio=1 entonces
//           resultado<- kilogramo * 2.20462
//            escribir "Resultado en de libra a kilogramo es: ", resultado                                 Posibles Caso 
//          sino                                                                                           kilogramo (500) * 2.20462=  1.102,31 
//           si opcio=2 Entonces
//            resultado<- l * 0.453592 
//            escribir "resultado de kilogramo a libra es: ", resultado
//           sino 
//             escribir "Los valores no son validos"
//          finsi
//           FinSi
	
//salida   =   escribir "Resultado en de libra a kilogramo es: ", resultado
//            escribir "resultado de kilogramo a libra es: ", resultado
Funcion conversorpeso
	definir opcio Como Entero
	definir kilogramo, libra, resultado Como Real
	
	kilogramo<- 0
	libr<- 0
	resultado<- 0
	
	escribir "Elija la opcion 1 si quiere convertir kilogramo a libra"
	escribir "Elija la opcion 2 si quiere convertir libra a kilogramo"
	escribir "Elija 1 o 2"
	leer opcio
	
	si opcio =1 Entonces
		escribir "ingrese su valor en kilogramo"
		leer kilogramo 
		resultado<- kilogramo * 2.20462
		escribir "el resultado de kilogramo a libra es: ", resultado
	SiNo
		si opcio=2 Entonces
			escribir "ingrese su peso en libra"
			leer libra
			resultado<- libra * 0.453592
			escribir "el resultado de libra a kilogramo es: ", resultado
		SiNo
			escribir "los valores no son validos"
		FinSi
	FinSi
FinFuncion

//Ejercicio 3: Calculadora de descuentos
//Aplicar 0%, 5% o 10% de descuento según el monto de compra.

//entrada = descuento(leer) (0, 5 , 10), compra(leer), descuentoapli, subtotal (calcular), total(calcular) como real       5 *   5/100
//proceso = elegir el descuento que desea aplicar                                                                      compra * (descuento/100)= 5*0.05= 0.25
//descuentoapli<- compra *(descuento/100)                                                                              5 - 0.25 = $4.75
//subtotal<- compra - subtotal                                                                                         5*(10/100)=5*0.10= 0.50
//total<- subtotal                                                                                                      5-0.50= $4.50

Funcion descuentocompra
	definir descuento, compra, descuentoapli, subtotal, total Como Real
	descuento<- 0
	compra<- 0
	descuentoapli<-0
	subtotal<- 0 
	total<- 0
	escribir "Ingrese el monto de compra"
	leer compra
	
	escribir "Ingrese el descuento que desea aplicar (0%, 5%, 10%)"
	leer descuento
	
	descuentoapli<- compra *(descuento/100)
	subtotal<- compra - descuentoapli
	total<- subtotal
	
	escribir "El descuento aplicado es: ", descuentoapli
	escribir "Subtotal de la compra es: ", subtotal
	escribir "total a pagar es: ", total
FinFuncion

//Ejercicio 4: Cálculo del IVA (12%)
//Pedir un precio sin IVA y calcular el precio con IVA incluido del 15% con un descuento del 30%

//entrada: precio(leer) 0, iva(asignar) 15, descuento(asignar) 30, subtotal(calcular) 0, total(calcular) 0

//Proceso:                                                                   100 *(30/100)= 100*30.00= 30
//         descuento<- precio *(descuento/100)                               100-30= $70
//         iva<- precio *(iva/100)                                           70 * (15/100) = 70* 0.15= 10.5
//       subtotal<- precio - descuento + iva                                  70 + 10.5 =$80.5
//        total<- subtotal
//salida: escribir "el precio del producto es: ", precio
//        escribir "el descuento aplicado es: ", descuento
//        escribir "El iva del 15%: ", iva
//        escribir "el subtotal de la compra es: ", subtotal
//       escribir "el total de la compra es: ", total

Funcion calculo_iva
	definir precio, iva, descuento, subtotal, total Como Real
	precio<- 0; iva<- 15; descuento<- 30; subtotal<- 0; total<- 0
	
	escribir "Ingrese el precio de todos los productos: "; leer precio
	
	descuento<- precio*(descuento/100)
	iva<- precio*(iva/100)
	subtotal<- precio -descuento + iva
	total<- subtotal
	
	escribir "el precio del producto es: ", precio
	escribir "el descuento aplicado es: ", descuento
	escribir "El iva del 15%: ", iva
	escribir "el subtotal de la compra es: ", subtotal
	escribir "el total de la compra es: ", total
FinFuncion


//Ejercicio 5: Comparación de precios entre dos productos
//Pedir dos precios. Mostrar cuál es mayor, menor o si son iguales.

//entrada: precio1(leer), precio2(leer)
//Proceso: si precio1>precio2 Entonces                                              precio1(1)  precio2(3)= precio 2 es mayor que precio 1
//           escribir "precio1 es mayor y precio2 es menor"                         precio1(5)  precio2(2)= precio 1 es mayor que precio 2
//         SiNo                                                                     precio1(5)  precio2(5)= precio 1 y precio 2 son iguales
//            si precio 2> precio1 Entonces
//           escribir "precio2 es mayor y precio 1 es menor"
//          sino 
//            si precio1= precio2 Entonces
//           escribir "precio 1 y precio 2 son iguales

//salida:
//           escribir "precio1 es mayor y precio2 es menor"
//           escribir "precio2 es mayor y precio 1 es menor"
//           escribir "precio 1 y precio 2 son iguales

Funcion comparacion_de_precio
	definir precio1, precio2 como real
	precio1<- 0
	precio2<- 0
	
	escribir "ingrese su primer precio"
	leer precio1
	
	escribir "ingrese su segundo precio"
	leer precio2
	
	Si precio1>precio2 Entonces
		escribir "precio 1 es mayor y precio 2 es menor"
	SiNo
		Si precio2> precio1 Entonces
			escribir "precio 2 es mayor y precio 1 es menor"
		SiNo
			Si precio1=precio2 Entonces
				escribir "precio 1 y precio 2 son iguales"
			Fin Si
		Fin Si
	Fin Si
FinFuncion

//Ejercicio 6: Clasificador de edad del cliente
//Pedir edad. Indicar si es niño (0-12), joven (13-17), adulto (18-64), adulto mayor (65+)

//entrada: edad(leer) como entero                                edad(5) = es niño
//Proceso si edad>=0 Entonces                                    edad(14) = es joven
//         sino                                                  edad (19) = es adulto 
//           si edad>=13                                         edad (67) = es adulto mayor
//           SiNo
//             si edad>=18
//              SiNo
//               si edad>=65

//salida: escribir "La edad indicada es un niño", edad
// escribir "la edad indicadaes un joven", edad
// escribir "la edad indicada es un adulto", edad
//escribir "la edad indicada es un adulto mayor", edad

Funcion clasificador_de_edad
	definir edad como entero
	edad<-0 
	
	escribir "ingrese la edad: "
	leer edad
	
	Si edad>=0 y edad<=12 Entonces
		escribir "La edad indicada es un niño de edad: ", edad
	SiNo
		Si edad>=13 y edad<=17 Entonces
			escribir "la edad indicada es un joven de edad: ", edad
		SiNo
			Si edad>=18 y edad<=64 Entonces
				escribir "la edad indicada es un adulto de edad:", edad
			SiNo
				Si edad>= 65 Entonces
					escribir "la edad indicada es un adulto mayor de edad: ", edad
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinFuncion


//Ejercicio 7: Identificador de número par o impar
//Pedir un número y decir si es par y multiplo de 10. Para el caso de par utilice el mod de
	//PseInt y para el caso de multiplo de 10 implemente usted mismo el mod.

//entrada numer(leer), multipl(calcular)                                  trunc(20/10)= 2        trunc(25/10)=2
//proceso si numer mod 2 =0 Entonces                                        20-10*2= 0            25-10*2= 5
//         escribir "el numero es par"
//        sino
//          escribir "el numero es impar"
//        FinSi

//        multiplo<- numer - (trunc(numer*10)*10)

//        si multiplo= 0 Entonces
//          escribir "el numero es multiplo de 10"
//        SiNo
//           escribir "el numero no es multiplo de 10"
//        FinSi

//salida :         escribir "el numero es par"
//            escribir "el numero es multiplo de 10"

funcion identificador_numeropar_o_impar
	definir numer, multipl	Como Entero
	numer<-0
	multipl<-0
	
	escribir "ingrese el numero"
	leer numer
	
	Si numer mod 2=0 Entonces
		escribir "el numero es par"
	SiNo
		escribir "el numero es impar"
	Fin Si
	
	multipl<- numer- (trunc(numer/10))*10
	
	Si multipl=0 Entonces
		escribir "el numero es multiplo de 10"
	SiNo
		escribir "el numero no es multiplo de 10"
	Fin Si
FinFuncion


//Ejercicio 8: Evaluador de puntuación de servicio
//Pedir una puntuación del 1 al 10 e interpretar como "Malo", "Regular", "Bueno",
//"Excelente".

//entrada puntuacion(leer)
//Proceso si puntuacion>=0 y puntuacion<=4                               puntuacion(3) = malo
//         escribir "la puntacion es malo"                               puntuacion (6) = regular
//        SiNo                                                           puntuacion ( 9) = bueno 
//          si puntacion >= 5 y <= 7                                     punutuacion (10) = excelente
//                                                                       puntuacion (15) = Error
//         SiNo
//           si puntacion >=8 y <=9

//          SiNo
//           si puntacion >=10 y <=10

//           SiNo

//salida
//escribir "la puntacion es malo"
//escribir "el puntaje es regular"
//escribir " el puntaje es bueno"
//escribir "el puntaje es excelente"
//escribir "el puntaje no es valido"

Funcion puntaje
	definir puntuacion Como Entero
	puntuacion<-0
	
	escribir "ingrese el puntaje: (1...10) "
	leer puntuacion
	
	si puntuacion>=0 y puntuacion<=4
		escribir "el puntaje es malo"
		SiNo
		 si puntuacion>=5 y puntuacion<=7
		  escribir "el puntaje es regular"
		SiNo
		  si puntuacion>=8 y puntuacion<=9
			 escribir " el puntaje es bueno"
		  SiNo
			  si puntuacion>=10 y puntuacion<=10
		         escribir "el puntaje es excelente"
			 SiNo
				 escribir "el puntaje no es valido"
			 FinSi
		 FinSi
	 FinSi
 FinSi
FinFuncion

//Ejercicio 9: Verificador de múltiplo de 3 o múltiplo de 9 o múltiplo de 12
//Pedir un número.

//entrada numer(leer)                                                                 numer (27) mod 3= 0         numer (36) mod 3= 0
//Proceso si numer mod 3= 0 o numer mod 9= 0 o numer mod 12=0                         numer (27) mod 9 = 0        numer(36) mod 9 = 0
//         escribir "El numero es multiplo de 3, 9 y 12"                              numer (27) mod 12= 3        numer ( 36) 12 = 0   
//        SiNo                                                                        no es multiplo               si es multiplo.
//         escribir "el numero no es multiplo de 3, 9 y 12"
//        finsi

//salida escribir "El numero es multiplo de 3, 9 y 12"
//escribir "el numero no es multiplo de 3, 9 y 12"

Funcion multi
	definir numer Como Entero
	
	numer<-0
	escribir "ingrese un numero que sea multiplo de 3, 9 o 12"
	leer numer
	
	si numer mod 3=0 o numer mod 9=0 o numer mod 12=0
		escribir "el numero es multiplo de 3, 9 o 12"
	SiNo
		escribir "el numero no es multiplo de 3, 9 o 12"
	FinSi
FinFuncion

//Ejercicio 10: Calculadora de propina
	//Pedir valor de la cuenta. Calcular propina del 10% o 15% según nivel de servicio.

//entrada: valor(leer), propina10(asignar), propina15(asignar), propina0(asignar), total(calcular), Servicio(leer), propina
//Proceso:  Si servicio = malo                                               valor (100) * (10/100)= 10
//           propina<- valor * (propina0/100)                                100+ 10 = 110
//           total<- valor + propina                                         valor (100) * (15/100) = 15
//          sino                                                             100 + 15 = 115
//            si servicio = bueno
//              propina<- valor *(propina10/100)
//              total<- valor + propina
//            SiNo
//              si servicio = excelente
//               propina<- valor *(propina15/100)
//               total<- valor + propina
//               sino 
//               Escribir "no es valido su descripcion del servicio"
//salida:
//escribir "la propina asignada al nivel del servicio malo es 0%: ", propina
// escribir "la propina asignada al nivel del servicio bueno es 10%: ", propina
// escribir "la propina asignada al nivel del servico bueno es 15%: ", propina
// escribir "el total de la cuenta es : ", total

funcion propin
	definir valo, propina10, propina15, propina0, total, propina Como Real
	definir servicio como caracter
	
	valo<- 0; propina10<- 10; propina15<- 15; propina0<- 0; total<- 0; propina<- 0
	servicio<- ""
	escribir "ingrese el valor de la cuenta"; Leer valo
	Escribir "Describir el servicio brindado (malo, bueno, excelente)"; leer servicio
	
	
	Si servicio="malo" Entonces
		propina<- valo * (propina0/100)
		total<- valo + propina
		escribir "la propina asignada al nivel del servicio malo es 0%: ", propina
		escribir "el total de la cuenta es : ", total
	SiNo
		Si servicio="bueno" Entonces
			propina<- valo *(propina10/100)
			total<- valo + propina
			escribir "la propina asignada al nivel del servicio bueno es 10%: ", propina
			escribir "el total de la cuenta es : ", total
		SiNo
			Si servicio="excelente" Entonces
				propina<- valo *(propina15/100)
				total<- valo + propina
				escribir "la propina asignada al nivel del servico bueno es 15%: ", propina
				escribir "el total de la cuenta es : ", total
			SiNo
				Escribir "no es valido su descripcion del servicio"
			Fin Si
		Fin Si
	Fin Si
FinFuncion


//Ejercicio 11: Clasificador de monto de compra
//Categorizar la compra: "baja" (<$10), "media" ($10-30), "alta" (>$30)

//entrada:compra(leer)
//Proceso si compra >=0 y compra <=10                                       compra (9) = la compra es baja
//          "Escribir "La compra es baja"                                  compra (25) = la compra es media
//        SiNo                                                             compra (35) = la compra es alta
//           si compra <= 30 
//            escribir "La compra es media"
//           SiNo
//            si compra > 30
//                escribir "La compra es alta"
//salida : La compra es baja
// la compra es media
// la compra es alta

Funcion clasificado_de_compra
	definir compra Como Real
	compra<- 0
	
	escribir "Ingrese el monto de la compra"; leer compra
	
	Si compra >=0 y compra <=10 Entonces
		escribir "La compra es baja"
	SiNo
		Si compra <=30 Entonces
			escribir "La compra es media"
		SiNo
			Si compra >30 Entonces
				escribir "La compra es alta"
			SiNo
				escribir "Los datos no son validos"
			Fin Si
		Fin Si
	Fin Si
FinFuncion


//Ejercicio 12: Determinar si un número es positivo deberá presentar el doble del
	//	número, Si es negativo lo convierte a positivo y lo presenta . Si es cero presenta el
	//	número es neutro
	//	Pedir un número y clasificar su signo.

//entrada numer(leer), total(calcular)                                                        numer(5) *2 =10 
//Proceso si numer>0                                                                          numer(-15) * (-1) = 15
//          total<- numer *2                                                                  numer (0) = es neutro
//        SiNo
//           si numer<0
//            total<- numer *(-1)
//           sino
//             escribir "el numero es neutro"
//salida  
//escribir "el numero es positivo y el doble de eso es: ", total
//escribir "el numero es negativo y positivo es: ", total
//escribir "el numero es neutro"

Funcion positiv_negativ_neutro
	definir numer, total Como Entero
	
	numer<- 0; total<- 0
	
	escribir "ingrese el numero: "; leer numer
	
	Si numer>0 Entonces
		total<- numer *2
		escribir "El numero es positivo y el doble de eso es: ", total
	SiNo
		Si numer<0 Entonces
			total<- numer *(-1)
			escribir "el numero es negativo y al convertirlo en positivo es: ", total
		SiNo
			escribir "el numero es neutro"
		Fin Si
	Fin Si
FinFuncion

//Ejercicio 13: Verificador de acceso por edad y dinero
//Permitir entrar a la tienda si tiene más de 18 años y al menos $1.
//entrada:edad(leer)0, dinero(leer)0
//Proceso: si edad >=18 y dinero>=1                                                         edad(19) y dinero (5) = puede entrar a la tienda
//          Escribir "Puede entrar a la tienda"                                             edad (19) y dinero (0) = no puede entrar a la tienda
//         SiNo                                                                             edad (17) y dinero (5) = no puede entrar a la tienda 
//          escribir "No cuenta lo asignado para entrar a tienda"
//salida
//          Escribir "Puede entrar a la tienda"
//          escribir "No cuenta lo asignado para entrar a tienda"

Funcion tienda_edad_dinero
	definir edad Como Entero; definir dinero Como Real
	
	edad<- 0
	dinero<- 0
	escribir "Ingrese la edad del cliente: "; leer edad
	escribir "Ingrese el dinero que tiene el cliente: $"; leer dinero
	
	Si edad>=18 y dinero>= 1 Entonces
		escribir "puede entrar a la tienda"
	SiNo
		escribir "No cuenta lo asignado para entrar a tienda"
	Fin Si
	
FinFuncion

//Ejercicio 14: Descuento por edad y monto
//Aplicar descuento especial solo si el cliente es mayor de 60 y compra más de $50. Si no lo es
	//	aplica el iva del 15% con un descuento solo del 5%

//entrada edad(leer), compra(leer), iva(asignar)15, descuento(asignar) 5, descuentoespecial(leer), subtotal, total, descuen, 
//totaliva
//Proceso si edad >=60 y compra>=50
//          descuen<- compra*(descuentoespecial/100)                                      edad (67) y compra (70) = compra *(descuentoespecial(20)/100)
//          iva<- 0                                                                       = 14
//          totaliva<- compra*(iva/100)                                                   70 - 14 =56
//          subtotal<- compra -descuen + iva                                              56 * (iva (0) /100) = 56
//          total<- subtotal                                                
//        sino                                                                            edad (25) y compra (70) = compra * (descuento (5) /100)= 3.5
//          descuen<- compra*(descuento/100)                                              70 - 3.5= 66.5
//          iva<- 15                                                                      66.5 * (iva (15) /100) = 9.98
//          totaliva<- compra*(iva/100)                                                   66.5 + 9.98= $76.48
//          subtotal<- compra- descuen+iva
//          total<- subtotal
//salida
//escribir "El precio de su compra es: ", compra
// escribir "el descuento especial aplicado es: ", descuen
// escribir "el iva incluido es: ", totaliva
// escribir "el subtotal de su compra es", subtotal
//escribir "el total de a pagar es: ", total

Funcion descuentoedadmonto
	definir edad como entero 
	definir compra, iva, descuento, descuentoespecial, subtotal, total, descuen, totaliva Como Real
	edad<-0; compra<-0; iva<- 15; descuento<-5; descuentoespecial<-0;subtotal<-0;total<-0;descuen<-0;totaliva<-0
	escribir "ingrese la edad del cliente: "; leer edad
	escribir "Ingrese el precio de la compra: "; leer compra
	
	Si edad>=60 y compra>=50 Entonces
		Escribir "ingrese el descuento especial: ";leer descuentoespecial
		iva<-0
		descuen<- compra*(descuentoespecial/100)
		totaliva<- compra*(iva/100)
		subtotal<- compra -descuento + iva
		total<- subtotal
		escribir "Su descuento especial es de: ", descuen
		escribir "El subtotal de su compra es: ", subtotal
		escribir "El total de iva aplicado es 0%: ", totaliva
		escribir "el total de su compra es: ", total
	SiNo
		descuento<-5
		descuen<-compra*(descuento/100)
		totaliva<- compra * (iva/100)
		subtotal<- compra - descuento + iva
		total<- subtotal
		escribir "Su descuento es: ", descuen
		escribir "su iva aplicado es 15%: ", totaliva
		escribir "su subtotal es: ", subtotal
		escribir "el total de la compra es: ",total
	Fin Si
FinFuncion

//Ejercicio 15: Cálculo de cambio exacto con billetes de $10 y $5
//Pedir valor del vuelto y mostrar cuántos billetes de $10 y $5 necesita.

//entrada billete10(calcular), billete5(calcular), vuelto(leer)                       trunc(vuelto(20)/10)= 2
//Proceso billete10<- trunc(vuelto/10)                                                trunc(vuelto(27)/10) = 2     billete5<- siempre sera 1
//        escribir "el vuelto de los billetes de 10 es de : ", billete10              para las monedas podemos poner mod 5= 2 monedas
//        escribir "el vuelto de los billetes de 5 es de : 1"
//salida

funcion vueltobillete
	Definir billete10, billete5, vuelto como real
	billete10<-0; vuelto<- 0
	escribir "ingrese el vuelto que desea dar"; leer vuelto
	billete10<- trunc(vuelto/10)
	billete5<- vuelto mod 5
	escribir "El vuelto de los billetes de 10 es de : ", billete10
	escribir "el vuelto de los billetes de 5 es de : 1"
	escribir "las monedas que faltan son: ", billete5 " dolares"
FinFuncion


//Ejercicio 16: Categorizador de día de la semana
//Pedir número del 1 al 7 y mostrar qué día es. Validar entrada.
//entrada numer (leer) 0
//proceso 
//Segun numer Hacer                                                   numer(6)= sabado 
//	1:                                                                numer(5)= viernes
//		Lunes                                                        numer (8) = No es valido
//	2:
//		Martes
//	3:
//		Miercoles
//  4:
//      Jueves
//  5:
//      Viernes
//  6:
//      Sabado
//  7:
//      Domingo
//	De Otro Modo:
//		NO ES VALIDO
//Fin Segun
//salida: escribir "El dia (1) de la semana es: ", numer

Funcion diasemana
	definir numer Como Entero
	numer<-0
	
	ESCRIBIR "ingresa el numero de dia de la semana que quiere saber (1...7)"; leer numer
	
	Segun numer Hacer
		1:
			escribir "El día 1 de la semana es lunes"
		2:
			escribir "el día 2 de la semana es martes"
		3:
			escribir "el día 3 de la semana es miercoles"
		4:
			escribir "el día 4 de la semana es jueves"
		5:
			escribir "el día 5 de la semana es viernes"
		6:
			escribir "el día 6 de la semana es sabado"
		7:
			escribir "el día 7 de la semana es domingo"
		De Otro Modo:
			Escribir "NO ES VALIDO"
	Fin Segun
FinFuncion

//Ejercicio 17: Clasificador de producto por precio unitario
//Pedir precio unitario y decir si es "económico", "regular" o "caro"

//entrada precio (leer) 0                                      <=20 : precio economico;  <=100 : precio regular;  >100 : caro
//Proceso si precio>=0 y precio<=20                            
//          escribir "El precio es económico"
//        sino
//           si precio<=100 
//             escribir "el precio es regular"
//           SiNo
//              si precio>100 
//                escribir "El precio es caro"
//salida
//escribir "El precio es económico"
//escribir "el precio es regular"
//escribir "El precio es caro"

Funcion clasificadordeproducto 
	definir precio como real
	
	precio<- 0
	
	escribir "Ingresa para clasificar el precio unitario"
	leer precio
	
	Si precio>=0 y precio<=20 Entonces
		escribir "el precio es económico"
	SiNo
		Si precio <= 100 Entonces
			escribir "el precio es regular"
		SiNo
			Si precio>100 Entonces
				escribir "el precio es caro"
			SiNo
				escribir "No es valido"
			Fin Si
		Fin Si
	Fin Si
FinFuncion


//Ejercicio 18: Determinador de bisiesto (año)
//Pedir un año. Indicar si es bisiesto usando regla condicional (mod 4 y mod 100, mod 400).

//entrada anio (leer)                                                                                          NO ES AÑO BISIESTO
//proceso                                                                            anio(2026) mod 4 = 2  y  anio(2026) mod 100 =26  o   anio (2026) mod 400 =26
//Si anio mod 4 = 0 y anio mod 100 <> 0 o anio mod 400 Entonces                                              SI ES AÑO BISIESTO
//	escribir "el año"(, anio)" es bisiesto"                                        anio (2024) mod 4 = 0  y   anio (2024) mod 100 =24  o  anio (2024) mod 400 = 24
//SiNo
//	escribir "el año"(, anio)" no es bisiesto"
//salida

Funcion determinarbisiesto
	definir anio Como Entero
	anio<- 0
	escribir "Ingrese el año para indicar si es bisiesto"; leer anio
	
	Si anio mod 4=0 y anio mod 100 <> 0 o anio mod 400= 0 Entonces
		escribir "el año ",( anio)," es bisiesto"
	SiNo
		escribir "el año ",( anio)," no es bisiesto"
	Fin Si
FinFuncion


//Ejercicio 19: Conversor de horas a minutos y segundos
//Pedir horas y calcular su equivalencia en minutos y segundos                                horas(5) * 60 = 300 minutos
//entrada: horas(leer) 0, minutos(calcular) 0 , segundos(calcular)0                           horas (5) * 3600= 18.000 segundos
//Proceso: minutos<- horas * 60
//         segundos<- horas * 3600 
//salida:ESCRIBIR "La hora que asignaste en minutos es:", minutos
//         escribir "la hora que asignaste en segundos es:", segundos

Funcion conversordehoras
	definir hora, minuto, segund Como Entero
	escribir "Ingrese la hora que desee convertir en minutos y segundos"
	leer hora
	
	minutos<- hora*60
	segund<- hora*3600
	
	escribir "La hora que asignaste en minutos es: ", minutos
	escribir "la hora asignada en segundos es: ", segund
FinFuncion

//Ejercicio 20: Verificador de triple de un número
	//Pedir dos números. Verificar si el segundo es el triple del primero
//entrada numero1(leer),numero2(leer) 
//Proceso si num2 = num1 *3                                                                        num(5) = num2 (3) * 3 = no es el triple del primero
//          escribir "el segundo numero es el triple del primero"                                  num(15) = num2(5) *3 = si es el triple del primero
//        sino 
//          Escribir "el segundo numero NO es el triple del primero"
//
//salida Escribir "el segundo numero NO es el triple del primer
//escribir "el segundo numero es el triple del primero"

funcion verificadordetriple
	definir num1, num2 Como Entero
	num1<-0; num2<- 0
	
	escribir "ingrese su primer numero: "; leer num1
	escribir "ingrese su segundo numero para saber si es el triple del primero"; leer num2
	
	Si num2 = num1*3 Entonces
		escribir "el segundo numero es el triple del primero"
	SiNo
		escribir "el segundo numero NO es el triple del primero"
	Fin Si
FinFuncion

//Ejercicio 21: Determinar riesgo por síntomas múltiples para el efecto tienes
	//	Escribir "¿Tiene fiebre? (SI/NO):"
	//	Escribir "¿Tiene dificultad para respirar? (SI/NO):"
	//	Escribir "¿Tiene dolor en el pecho? (SI/NO):"
	//	Si los tres síntomas son "SI" muestre un mensaje "Alto riesgo: Derivar a emergencia"
	//		caso contrario muestre "Riesgo bajo o medio"

//entrada fiebre, respirar, pecho como caracter
//proceso si fiebre = SI y respirar = SI y pecho = SI                             fiebre = si     respirar =si     pecho = no     = riesgo bajo o medio
//           escribir                                                             fiebre =si     respirar =si      pecho = si  =  alto riesgo: derivar a emergencia
//        SiNo
//           Escribir 
//salida: escribir "Alto riesgo: derivar a emergencia"
//         escribir "Riesgo bajo o medio

funcion riesgo
	definir fiebre, respirar, pecho como caracter
	fiebre<- ""
	respirar<- ""
	pecho<- ""
	
	escribir "¿Tiene fiebre? (SI/NO)"; leer fiebre
	escribir "¿Tiene dificultad para respirar? (SI/NO)"; leer respirar
	escribir "¿Tiene dolor de pecho? (SI/NO)"; leer pecho
	
	si fiebre = "SI" y respirar = "SI" y pecho = "SI" Entonces
		escribir "Alto riesgo: Derivar a emergencia"
	SiNo
		escribir "Riesgo bajo o medio"
	FinSi
FinFuncion

//22. La tienda desea implementar una función básica en su sistema para identificar el estado
//de salud de los clientes que se toman la presión arterial en su tienda. Para ello, solicita un
	//pequeño algoritmo que reciba la presión sistólica como entrada y muestre una clasificación
	//médica básica según la siguiente tabla:
	//	Presión Sistólica Clasificación
	//	Menor a 90 Presión baja
	//	Entre 90 y 120 Presión normal
	//	Entre 121 y 139 Prehipertensión
//	140 o más Hipertensión

//entrada: Presionsistolica como entero                                          presion= 70 = presion baja
//proceso: si presionsitolica <= 90                                              presion = 95 = presion normal
//          escribir                                                             presion = 125 = presionsitolica
//         SiNo                                                                  presion = 150 = presionsitolica
//          si presionsitolica <= 120
//           Escribir 
//          SiNo
//            si presionsitolica >= 121 y presionsitolica <=139
//             Escribir
//            SiNo
//              si presionsitolica >= 140 
//                 Escribir 

//salida: escribir "Presion baja"
// escribir "Presion normal"
// escribir "prehipertension
// escribir "hipertension"

funcion presion
	definir presionsitolica Como Entero
	presionsitolica<- 0
	escribir "Ingrese la presión del paciente: "; leer presionsitolica
	
	si presionsitolica<= 90
		escribir "Presión baja"
	SiNo
		si presionsitolica <=120
			escribir "Presión normal"
		SiNo
			si presionsitolica >=121 y presionsitolica <= 139
				escribir "Prehipertensión"
			SiNo
				si presionsitolica >=140
					escribir "Hipertensión"
				SiNo
					Escribir "Los valores no son validos"
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

//Ejercicio 23: Mostrar saludo personalizado
//Ingresar nombre y mostrar saludo: ¡Hola, [nombre]!

//entrada: nombre (leer)
// proceso: Escribir "¡Hola ", nombre, " Espero estes muy bien"
// salida: Hola , (nombre) espero estes muy bien

Funcion nombrepersonalizado
	definir nombre como cadena
	nombre<- ""
	Escribir "Ingrese su nombre: "; leer nombre
	
	escribir "¡Hola ", nombre, " Espero estes muy bien!"
FinFuncion

//Ejercicio 24: Detectar si el carácter ingresado es una vocal
//	Ingresar una letra. Verificar si es a, e, i, o, u

//entrada: vocal (leer) Como Caracter                                                       vocal = a = es vocal
//proceso: si vocal = "a" o vocal ="e" o vocal = "i" o vocal = "o" o vocal = "u"            vocal = k = no es vocal
//salida: escribir "El catacter que ingresaste es una vocal"
//         escibir "el caracter que ingresaste no es una vocal"

Funcion vocales
	definir vocal como caracter
	vocal<- ""
	escribir "Ingrese el caracter para saber si es una vocal (a, e, i, o, u) (A, E, I, O, U)" ; leer vocal
	
	si vocal = "a" o vocal ="e" o vocal = "i" o vocal = "o" o vocal = "u" entonces
		escribir "El caracter que ingresaste es una vocal"
	SiNo
		Si vocal = "A" o vocal ="E" o vocal = "I" o vocal = "O" o vocal = "U"  Entonces
			escribir "El caracter que ingresaste es una vocal"
		SiNo
			Escribir "El caracter que ingresaste NO es una vocal"
		Fin Si
	FinSi
FinFuncion

//Ejercicio 25: Detectar si el carácter ingresado es una consonante
//Ingresar una letra. Verificar si es una consonante (sin validaciones complejas).

//entrada: letra (leer) como caracter
// proceso: si letra <> "a" Y letra <> "e" Y letra <> "i" Y letra <> "o" Y letra <> "u" Entonces            letra=  Gg = es consonante 
//            Escribir                                                                                      letra = a = no es consonante
//           SiNo
//            Escribir 

//salida: escribir "La letra es una consonante"
//        escribir "La letra NO es una consonante"

Funcion consonanteverificar
	definir letra, letraminuscula Como Caracter
	letra<- ""
	escribir "Ingrese su caracter para verificar si es una consonante"; leer letra
	
	letraminuscula <- Minusculas(letra)
	
	Si letraminuscula <>"a" y letraminuscula <>"e" y letraminuscula <>"i" y letraminuscula <>"o" y letraminuscula <>"u"  Entonces
		escribir "La letra es una consonante"
	SiNo
		escribir "La letra NO es una consonante"
	Fin Si
FinFuncion

//Ejercicio 26: Comparar si dos nombres ingresados son iguales
	//	Pedir dos nombres y verificar si son iguales (texto exacto).

//entrada: nombre1(leer)"", nombre2(leer)"" como cadena                                   nombre(juan) = nombre(jostin) = no es igual
//proceso: si nombre1 = nombre2 Entonces                                                  nombre(jostin) = nombre(jostin) = es igual
//          escribir 
//         SiNo
//          escribir 
//salida:"Los dos nombres ingresados son iguales"
//"Los dos nombres ingresados NO son iguales"

Funcion compararnombre
	definir nombre1, nombre2 como cadena
	
	nombre1<-""
	nombre2<-""
	
	escribir "Ingrese el primer nombre para comparar con el segundo"; leer nombre1
	escribir "ingrese el segundo nombre para comparar con el primero"; leer nombre2
	
	si nombre1=nombre2 Entonces
		escribir "Los dos nombres ingresados son iguales"
	SiNo
		escribir "Los dos nombres ingresados NO son iguales"
	FinSi
FinFuncion

//Ejercicio 27: Verificar si una letra es mayúscula o minúscula
//Ingresar una letra. Comparar con su versión en mayúscula/minúscula

//entrada: letra(leer)"", letramayus(calcular)"" como caracter

//proceso letramayus<- Letramayuscula(letra)

// si letra = letramayus Entonces
//     escribir "La letra es mayuscula"
// SiNo
//     escribir "La letra es minuscula"

funcion verificadordemayuscula
	definir letra, letramayus Como Caracter
	letra<- ""; letramayus<- ""
	escribir "Su ingrese su letra para saber si es Mayúscula o Minúscula"; leer letra
	letramayus<- Mayusculas(letra)
	
	si letra = letramayus Entonces
		escribir "La letra es Mayusculas"
	SiNo
		escribir "La letra es Minusculas"
	FinSi
FinFuncion

//Ejercicio 28: Mostrar nombre completo del cliente
//Pedir nombre y apellido por separado. Mostrar nombre completo.                       Nombre(jostin); apellido(duque) = Hola cliente Jostin Duque 
//entrada: nombre (leer) "", apellido (leer)"" como cadena
// proceso: escribir, nombre y apellido
// salida: escribir " Hola cliente ", nombre , "", apellido

Funcion nombrecompleto
	definir nombre, apellido como cadena
	nombre<- ""; apellido<- ""
	escribir "Ingrese nombre del cliente: "; leer nombre
	escribir "Ingrese el apellido del cliente: "; leer apellido
	
	Escribir "Hola cliente ", nombre , " ", apellido
FinFuncion

//Ejercicio 29: Verificar si una palabra es corta o larga
//	Pedir una palabra. Si tiene más de 6 caracteres, decir "larga"; si no, "corta"

//entrada: palabra (leer)"" como cadena                                        Hola = 4 palabras = corta
//longitu (calcular) 0 como entero                                             Comoestas= 9 palabras = larga
// proceso: longitud(palabra)
// si longitud > 8 Entonces
//    escribir "la palbra es larga"
// SiNo
//     escribir "la palabra es corta"

Funcion palabracortaolarga
	definir palabra Como Caracter; definir longitu Como Entero
	escribir "Ingrese su palabra para verificar si es larga o corta: "; leer palabra
	
	longitu<- Longitud(palabra)
	
	si longitu >=8 Entonces
		escribir "la palabra es larga"
	SiNo
		escribir "la palabra es corta"
	FinSi
FinFuncion

//Ejercicio 30: Contadar los caracteres y convertir a mayúsculas cualquier frase (sin
//recorrer)
//Pedir frase. Usar funciones de PseInt de cadenas para este ejercicio

//entrada: frase(leer)"", mayuscu(calcular)"", longitu(calcular)0
//proceso: mayuscu<- Mayusculas(frase)
	//longitu<- Longitud(frase)
	
//salida:	Escribir "La cantidad de caracteres es: ", Longitu
//	escribir "tu frase en Mayusculas es: ", Mayuscu
	
Funcion contarymayuscula
	definir frase, mayuscu Como cadena; definir longitu Como Entero
	escribir "Escriba su frase: "; leer frase
	
	mayuscu<- Mayusculas(frase)
	longitu<- Longitud(frase)
	
	escribir "Los caracteres contados de su frase es: ", Longitu
	escribir "Tu frase en mayuscula es: ", Mayuscu
	
FinFuncion
	