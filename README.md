# RummyQ-PractIA-
Practica de lógica computacional. IA (Programación declarativa con Prolog). Jugadas validas para Rummy Q

# Validador de Rummy Q

### _¿En qué consiste?_
> Rummy Q es un juego de mesa que consta con fichas numeradas 
> del 1-13, y con colores entre [amarillo,negro,azul,rojo].
> El juego consiste en construir trios y seguidillas con las fichas,  
> respetando ciertas reglas/parámetros para que estas   
> construcciones/movimientos sean válidas.  

[Este programa comprobará si un movimiento es válido o no]
#### ¿Qué reglas hay para que un movimiento sea válido?
#####  ✨Trios
Un trio será válido cuando:  
- Conste MÍNIMO de 3 fichas, MAXIMO de 4. 
- Todas las fichas sean el MISMO NÚMERO.
- Las 3 o 4 fichas, deberán ser de DISTINTOS COLORES. 

###### Trios VÁLIDOS se ven así: 
    [(1, amarillo),(1, negro),(1, azul)]
    [(5, azul),(5, negro),(5, amarillo), (5, rojo)]
###### Trios INVÁLIDOS se ven así: 
    [(1, amarillo),(1, negro)]
    [(4, amarillo),(4, negro),(4, amarillo)]
    [(5, azul),(3, negro),(5, amarillo), (5, rojo)]
    [(6, azul),(6, negro),(6, amarillo), (6, rojo), (6, rojo)]

#####  ✨Seguidillas 
Una seguidilla será válida cuando:  
- Conste MÍNIMO de 4 fichas, SIN MAXIMO. 
- Todas las fichas sean del MISMO COLOR.
- Las 4 (o más) fichas, deberán SEGUIR una SECUENCIA u ORDEN. 

###### Seguidillas VÁLIDOS se ven así: 
    [(1, azul),(2, azul),(3, azul), (4, azul)]
    [(6, rojo),(7, rojo),(8, rojo),(9, rojo),(10, rojo),(11, rojo)]
###### Seguidillas INVÁLIDOS se ven así: 
    [(1, negro),(2, negro)]
    [(3, amarillo),(4, amarillo),(5, amarillo)]
    [(6, rojo),(7, rojo),(9, rojo),(10, rojo)]
    [(6, azul),(7, negro),(8, azul),(9, azul),(10, azul)]

#### ¿Cómo lo chequea nuestro programa?
[Prolog]
Se ha hecho uso del paradigma declarativo de programación, y se ha empleado el lenguaje de programación Prolog. 

Se han declarado un conjunto de reglas básicas y de claúsulas que permiten evaluar cuando un movimento/jugada es válida o no. Basandosé en estudiar y revisar las relaciones entre entidades. 

El programa consta de 2 clausulas principales, llamadas 'Turno_valido(X, Y)' donde X e Y son listas, X se refiere a los/el color del cual son las fichas. Y es una lista con los números. 

*Para efectos de eficiencia de uso, los colores se han numerado del 1-4*
*Donde: [Amarillo = 1, Azul = 2, Rojo = 3, Negro = 4]*
##### Se puede preguntar si X moviento es válido como: 
_?-turno_valido([color/colores*], [trio/seguidilla*])_ :

_?-turno_valido([1], [3,4,5,6,7])_
···Donde el 1 representa el color amarillo···
    
_?-turno_valido([4, 3, 2], [8,8,8])_
···Donde (4 = negro, 3 = rojo, 2 = azul)···

Si el movimiento es válido, la aplicación devolverá 'true'. De no serlo, devolderá 'false'. Ejemplo: 

_?-turno_valido([1], [3,4,5,6,7])_
=True

_?-turno_valido([4, 3, 2], [8,8,8])_
=True

_?-turno_valido([4, 2], [1,2,3,4,5])_
=False

_?-turno_valido([4, 2, 2], [8,8,8])_
=False

_?-turno_valido([4, 3, 2, 1], [3,3,3,3])_
=True
