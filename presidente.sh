#!/bin/bash

#declaracion de array con el nombre de los presidentes
#se tiene que poner un _ en lugar de espacio ya que el espacio lo detecta
#como un elemento independiente del array

presidentes=('Agustin_de_Iturbide'
		'Pedro_Celestino_Negrete'
		'Guadalupe_Victoria'
		'Vicente_Guerrero'
		'Jose_Maria_Bocanegra'
		'Pedro_Velez'
		'Anastasio_Bustamante'
		'Melchor_Muzquiz'
		'Manuel_ Gomez_Pedraza'
		'Valentin_Gomez_Farias'
		'Antonio_Lopez_de_Santa_Anna'
		'Miguel_Barragan'
		'Jose_Justo_Corro'
		'Anastasil_Bustamante'
		'Antonio_LOpez_de_Santa_Anna'
		'Nicolas_Bravo'
		'Anastasio_Bustamante'
		'Francisco_Javier_Echeverria'
		'Antonio_Lopez_de_Santa_Anna'
		'Nicolas_Bravo'
		'Antonio_Lopez_de_Santa_Anna'
		'Valentin_Canalizo'
		'Antonio_Lopez_de_Santa_Anna'
		'Jose_Joaquin_de_Herrera'
		'Valentin_Canalizo'
		'Jose_Joaquin_de_Herrera'
		'Mariano_Paredes_y_Arrillaga'
		'Nicolas_Bravo'
		'Mariano_Salas'
		'Valentin_Gomez_Farias'
		'Antonio_Lopez_de_Santa_Anna'
		'Pedro_Maria_Anaya'
		'Manuel_de_la_Peña_y_Peña'
		'Jose_Joaquin_de_Herrera'
		'Mariano_Arista'
		'Juan_Bautista_Ceballos'
		'Manuel_Maria_Lombardini'
		'Antonio_Lopez_de_Santa_Anna'
		'Martin_Carrera'
		'Romulo_Diaz_de_la_vega'
		'Juan_Alvarez_Benitez'
		'Ignacio_Comonfort'
		'Benito_Juarez_Garcia'
		'Felix_Maria_Zuloaga'
		'Manuel_Robles_Pezuela'
		'Miguel_MIramon'
		'Junta_de_Regencia'
		'Fernando_Maximiliano_de_Habsburgo'
		'Sebastian_Lerdo_de_Tejada'
		'Jose_Maria_Iglesias'
		'Juan_N_Mendez'
		'Porfirio_Diaz'
		'Manuel_GOnzalez'
		'Porfirio_Diaz'
		'Francisco_Leon_de_la_Barra'
		'Francisco_I_Madero'
		'Pedro_Lascurain_Paredes'
		'Victoriano_Huerta_Ortega'
		'Francisco_S_Carvajal'
		'Venustiano_Carranza'
		'Eulalio_Gutierrez'
		'Roque_Gonzalez_Garza'
		'Francisco_Lagos_Chazaro'
		'Adolfo_de_la_Huerta'
		'Alvaro_Obregon'
		'Plutarco_ELias_Calles'
		'Emiliano_Portes_Gil'
		'Pascual_Ortiz_Rubio'
		'Abelardo_L_Rodriguez'
		'Lazaro_Cardenas_del_Rio'
		'Manuel_Avila_Camacho'
		'Miguel_Aleman_Valdes'
		'Adolfo_Ruiz_Cortines'
		'Adolfo_Lopez_Mateos'
		'Gustavo_Diaz_Ordaz'
		'Luis_Echeverria_Alvarez'
		'Jose_Lopez_Portillo_y_Pacheco'
		'Miguel_de_la_Madrid_Hurtado'
		'Carlos_Salinas_de_Gortari'
		'Ernesto_Zedillo_Ponce_de_Leon'
		'Vicente_Fox_Quesada'
		'Felipe_Calderon_Hinojosa'
		'Enrique_Peña_Nieto'
		'Andres_Manuel_Lopez_Obrador')

#declaracion de los años en el que gobernaron en el mismo orden
#en que se declararon en el array de los presidentes
#se le aregla un año mas al final el cual es 0 para que en  la ultima vuelta del ciclo no marque error
yearPresidente=('1821'
		'1823'
		'1824'
		'1829'
		'1829'
		'1829'
		'1830'
		'1832'
		'1832'
		'1833'
		'1833'
		'1835'
		'1836'
		'1837'
		'1839'
		'1839'
		'1839'
		'1841'
		'1841'
		'1842'
		'1843'
		'1843'
		'1844'
		'1844'
		'1844'
		'1844'
		'1846'
		'1846'
		'1846'
		'1846'
		'1847'
		'1847'
		'1847'
		'1848'
		'1851'
		'1853'
		'1853'
		'1853'
		'1855'
		'1855'
		'1855'
		'1855'
		'1858'
		'1858'
		'1858'
		'1859'
		'1863'
		'1864'
		'1872'
		'1876'
		'1876'
		'1876'
		'1880'
		'1884'
		'1911'
		'1911'
		'1913'
		'1913'
		'1914'
		'1914'
		'1914'
		'1915'
		'1915'
		'1920'
		'1920'
		'1924'
		'1928'
		'1930'
		'1932'
		'1934'
		'1940'
		'1946'
		'1952'
		'1958'
		'1964'
		'1970'
		'1976'
		'1982'
		'1988'
		'1994'
		'2000'
		'2006'
		'2012'
		'2018'
		'0')

#testeo de que coincida el año con el presidente
#for ((i=0; i<=84; i++))
#do
#echo " ${yearPresidente[i]}  - ${presidentes[i]} "
#done


echo "Introduzca un año para saber el presidente que estaba en curso:"

#variable que guarda el año que introduce el usuario
read year


#inicio del ciclo for
for (( i=0; i<=83; i++))
do

#la variable a se usa para indicarle al array un indice mayor a el actual
	a=$i+1;

#evalua si el año que ingreso el usuario es menor a el primer año del array
	if (( $year < ${yearPresidente[0]} )); then
		echo "Debe ingresar un año mayor a ${yearPresidente[0]}"
		break

#evalua el presidente actual para que no entre al resto del bucle
	elif (( $year >= 2018 && $year <= 2024 )); then
		echo "En el año $year el  presidente es ${presidentes[83]}"
		break

#evalua si el año del usuario es el mismo que el del array
	elif (( $year == ${yearPresidente[i]} )); then
		echo "En el año ${yearPresidente[i]} estuvo el presidente ${presidentes[i]}"

#evalua el presidente que estuvo entre la fecha de inicio de periodo y en el termino del periodo
	elif (( $year >= ${yearPresidente[i]} && $year <= ${yearPresidente[a]} )); then
		echo "En el año $year estuvo el presidente ${presidentes[i]}"

#evalua si el año del usuario a un no ha llegado
	elif (( $year >= 2021 )); then
		echo "El año $year aun no ha llegado"
		break

#fin del if
fi
#fin del for
done
