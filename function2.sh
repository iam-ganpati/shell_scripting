#!/bin/bash

Hello () {
    echo "hi there, I Am $1 $2"
    return 120
}

Hello Ganpat Kolhal
 ret=$?

 echo "return value is $ret "
