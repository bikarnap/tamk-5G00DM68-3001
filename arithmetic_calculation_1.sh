#!/bin/bash
# arithmetic_calculation_1.sh

num_of_calculations="$1"

add()
{
    echo "$1 + $2 = $(($1+$2))"   
}

subtract()
{
    echo "$1 - $2 = $(($1-$2))"
}

multiply()
{
    echo "$1 * $2 = $(($1*$2))"
}

divide()
{
    echo "$1 / $2 = $(($1/$2))"
}

remainder()
{
    echo "$1 % $2 = $(($1%$2))"
}


main()
{
    
    while [[ $num_of_calculations -gt 0 ]]
    do
        echo -n "Give the first operand: "
        read operand1

        echo -n "Give the second operand: "
        read operand2

        echo -n "Give operation: "
        read operation

        case "$operation" in

            "+")  add $operand1 $operand2
                ;;
            "-")  subtract $operand1 $operand2
                ;;
            "*")  multiply $operand1 $operand2
                ;;
            "/") divide $operand1 $operand2
                ;;
            "%") remainder $operand1 $operand2
                ;;
            *) echo "Unknown operation!"
                ;;
        esac
        num_of_calculations=$(($num_of_calculations - 1))
    done
}

main