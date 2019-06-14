#!/bin/bash

cd ..

if [ ! -d RibiClasses ]; then
  git clone https://github.com/richelbilderbeek/RibiClasses
fi

if [ ! -d RibiUnits ]; then
 git clone https://github.com/richelbilderbeek/RibiUnits
fi
