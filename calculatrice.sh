#!/bin/bash

WORK=$true

function gestionsignal() {
    echo "C'est fini"
    exit 0
}

trap gestionsignal  SIGUSR1

while [ WORK ]
do
    echo "nombre 1"
    read NBONE
    echo "operand"
    read OPERAND
    echo "nombre 2"
    read NBTWO
    echo "you have entered the value"
    echo $NBONE
    echo $OPERAND
    echo $NBTWO
    echo "And the result is !"
    echo $[ $NBONE $OPERAND $NBTWO ]
done