#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar nombre de archivos del directorio actual"
    echo "2. Mostrar calendario"
    echo "3. Mostrar dia de hoy"
    echo "5. Mostrar el directorio actual"
    echo "6. Crear una carpeta"
    echo "7. Movernos por carpetas(Path absolutos y relativos)"
    echo "8. crear ficheros con nano o vi"
    echo "9. Ver las 3 primeras lineas del archivo prueba1.txt"
    echo "10. Copiar y mover ficheros"
    echo "11. Redirigir la salida de un comando ha otro"
    echo "12. Redirigir la salida de un comando a un fichero > , >>(Añadir)"
    echo "13. Redirigir el contenido de un fichero como entrada de un comandos <"
    echo "14. Ver el contenido creado con nano"
    echo "15. Abrir el archivo prueba1.txt  creado con nano"
    echo "16. Elegir el archivo a abrir con nano introduciendo su nopmbre"
    echo "17. Ver el nº de lineas del archivo con el nombre que introduzcas"
    echo "18. Mover ficheros de una carpeta a otra"
    echo "19. Ver la liena 3 del archivo prueba1.txt"
    echo "20. Concatenar la 3 priemras lineas del archivo prueba1.txt y las del archivo prueba2.txt en archivo out.txt"
    echo "21. Ver contenido de archivo out.txt"
    echo "22. Introducir valor a variable y mostrarlo por consola"
    echo "23. Ver el ID del ultimo proseco con ls por ejemplo"
    echo "24. Ver la ultima carpeta donde has estado con OLDPWD"
    echo "25. Queremos crear una tarea 5 veces"
    echo "26. Bucle for break y continue"
    echo "27. Bucle while"
    echo "4. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Mostrar nombre de archivos del directorio actual"
        ls
        read foo
        ;;
    2)
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        echo "Mostrando dia de hoy"
        date
        read foo
        ;;

    # echo "5. Mostrar el directorio actual"
    5)
        echo "Mostrar el directorio actual"
        pwd
        read foo
        ;;
    # echo "6. Crear una carpeta"
    6)
        echo "Crear una carpeta"
        mkdir carpeta1
        read foo
        ;;
    # echo "7. Movernos por carpetas(Path absolutos y relativos)"
    7)
        echo "Movernos por carpetas(Path absolutos y relativos)"
        echo "Vamos a la carpeta1"
        cd carpeta1
        read foo
        ;;
    # echo "8. crear ficheros con nano o vi"
    8)
        echo "crear ficheros con nano o vi"
        echo -n "Introducir nombre del archivo: "
        read archivo

        nano $archivo

        read foo
        ;;
    # echo "9. ver contenido de un fichero con cat, head, tail, wc -l"
    9)
        echo "ver contenido de un fichero con cat, head, tail, wc -l"
        echo "Ver las 3 primeras lineas del archivo prueba1.txt"
        head -3 ./prueba1.txt
        read foo
        ;;
    # echo "10. Copiar y mover ficheros"
    10)
        echo "Copiar y mover ficheros"
        echo "cp <fichero> <destino>"
        echo "cp prueba1.txt prueba2.txt"
        cp prueba1.txt prueba3.txt
        cat prueba3.txt

        read foo
        ;;
    # echo "11. Redirigir la salida de un comando ha otro"
    11)
        echo "Redirigir la salida de un comando ha otro"
        cat prueba1.txt | grep -n 3
        read foo
        ;;
    # echo "12. Redirigir la salida de un comando a un fichero > , >>(Añadir)"
    12)
        echo "Redirigir la salida de un comando a un fichero > , >>(Añadir)"
        ls  > prueba2.txt
        echo "Ver las 3primeras lineas del archivo prueba2.txt"
        head -3 prueba2.txt > out.txt
        read foo
        ;;
    # echo "13. Redirigir el contenido de un fichero como entrada de un comandos <"
    13)
        echo "Redirigir el contenido de un fichero como entrada de un comandos <"
        echo "Queremoscojer la 4primeras lineas de este out.txt y mostrarlas"
        head -4 < out.txt
        read foo
        ;;
    14)
        echo "Ver el contenido creado con nano de prueba1.txt"
        cat prueba1.txt
        read foo
        ;;
    15)
        echo "Abrir el archivo prueba1.txt  creado con nano"
        nano prueba1.txt
        read foo
        ;;
    16)
        echo "Elegir el archivo a abrir con nano introduciendo su nopmbre"
        echo -n "Introducir nombre del archivo: "
        read archivo2

        nano $archivo2
        
        read foo
        ;;
    17)
        echo "Ver el nº de lineas del archivo con el nombre que introduzcas"
        echo -n "Introducir nombre del archivo: "
        read archivo2

        wc -l $archivo2
        
        read foo
        ;;
    18)
        echo "Mover ficheros de una carpeta a otra"
        echo -n "Introducir nombre del archivo: y la ruta donde quieres mover"
        read archivo2
        read ruta

        mv $archivo2 $ruta 
        
        read foo
        ;;
    19)
        echo "Ver la liena 3 del archivo prueba1.txt"
        # echo -n "Introducir nombre del archivo: y la ruta donde quieres mover"
        # read archivo2
        # read ruta
        # mv $archivo2 $ruta 
        cat prueba1.txt | head -3 | tail -1
        
        read foo
        ;;
    20)
        echo "Concatenar la 3 priemras lineas del archivo prueba1.txt y las del archivo prueba2.txt en archivo out.txt"
        # echo -n "Introducir nombre del archivo: y la ruta donde quieres mover"
        # read archivo2
        # read ruta
        # mv $archivo2 $ruta 

        head -3 archivo1 >> out.txt
        head -3 archivo2 >> out.txt
        
        read foo
        ;;
    21)
        echo "Ver contenido de archivo out.txt"

        cat out.txt
        
        read foo
        ;;
    22)
        echo "Introducir valor a variable y mostrarlo por consola"
        read -p "Cliente:" cliente

        echo "Metemos la salida de ls dentro de la variable ficheros"
        ficheros=$( ls )
        echo 'Tambien funciona con ficheros=` ls `'

        echo "Hola $cliente"

        echo "Adios $ficheros"
        read foo
        ;;
    23)
        echo "Ver el ID del ultimo proseco con ls por ejemplo"
        ls > out2.txt

        echo "Numero de proceso de ls $$"

        echo "Adios $HOSTNAME"
        # Numero aleatorio
        echo "Adios $RANDOM"
        read foo
        ;;
    24)
        echo "Ver la ultima carpeta donde has estado con OLDPWD"
        echo "Ultima carpeta donde he estado $OLDPWD"
       
        read foo
        ;;
    25)
        echo "Queremos crear una tarea 5 veces"
        # Bucle for
        for i in 1 2 3 4 5 
        do
            echo "Hello $i"
        done

        # Iteamos sobre todas las lineas del comando ls
        for i in $(ls)
        do
            echo "Hola $1"
        done

        # SIntaxis de C
        for (( c=1; c<=5; c++ ))
        do
            echo "Hola $c"
        done
        read foo
        ;;
    26)
        echo "Bucle for break y continue"
        # Bucle for
        
        for i in 1 2 3 4 5
        do
            if [[ "$i" == '2' ]]; then
                break
            fi

            echo "Hello $i"
        done

        for i in $(ls)
        do
            echo "Hola $i"
        done

        for (( c=1; c<=5; c++ ))
        do

        if (( c == 2 )); then
            continue
        fi

        echo "Hola $c"
        done

        read foo
        ;;
    27)
        echo "Bucle while"
        i=0
        while [ $i -lt 5 ]
        do
            echo "Hola $i"
    
        i=$((i + 1))
        done
        echo "//////////////////////////////"
        echo "//////////////////////////////"
        i=1
        while (( i<=5 ))
        do
            echo "Hola $i"
    
            ((i ++))
        done

        read foo
        ;;

    4) exit 0 ;;
    #Alerta
    *)
        echo "Opcion invalida..."
        sleep 1
        ;;
    esac
done
