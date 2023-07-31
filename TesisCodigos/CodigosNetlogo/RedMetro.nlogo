turtles-own [
  suceptible?
  enfermo?
  recuperado?
  inmune?

  tiempo-enfermo
  inmunidad-restante
]

globals [
  %infectados
  %recuperados
  %inmunes
  duracion-inmunidad
  Suceptibles
  Infectados
  Recuperados
  capacidad
]

breed [estaciones estacion]
estaciones-own[nombre]
breed [personas persona]

to linea7
  set-default-shape estaciones "circle"
  create-estaciones 13
  ask estacion 45 [
    setxy -10 -12
    set size 0.5
    set color orange
    set nombre "Barranca del Muerto"
    create-link-with estacion 46]
  ask estacion 46 [
    setxy -10 -10
    set size 0.8
    set color orange
    set nombre "Mixcoac"
    create-link-with estacion 47]
  ask estacion 47 [
    setxy -10 -7
    set size 0.5
    set color orange
    set nombre "San Antonio"
    create-link-with estacion 48]
  ask estacion 48 [
    setxy -10 -4
    set size 0.5
    set color orange
    set nombre "San Pedro de los Pinos"
    create-link-with estacion 49]
  ask estacion 49 [
    setxy -10 0
    set size 0.8
    set color orange
    set nombre "Tacubaya"
    create-link-with estacion 50]
  ask estacion 50 [
    setxy -14 5
    set size 0.5
    set color orange
    set nombre "Constituyentes"
    create-link-with estacion 51]
  ask estacion 51 [
    setxy -14 7
    set size 0.5
    set color orange
    set nombre "Auditorio"
    create-link-with estacion 52]
  ask estacion 52 [
    setxy -14 9
    set size 0.5
    set color orange
    set nombre "Polanco"
    create-link-with estacion 53]
  ask estacion 53 [
    setxy -14 11
    set size 0.5
    set color orange
    set nombre "San Joaquin"
    create-link-with estacion 42]
  ask estacion 54 [
    setxy -14 15
    set size 0.5
    set color orange
    set nombre "Refineria"
    create-link-with estacion 42]
  ask estacion 55 [
    setxy -14 17
    set size 0.5
    set color orange
    set nombre "Camarones"
    create-link-with estacion 54]
  ask estacion 56 [
    setxy -16 19
    set size 0.5
    set color orange
    set nombre "Aquiles Serdan"
    create-link-with estacion 55]
  ask estacion 57 [
    setxy -14 20.5
    set size 0.8
    set color orange
    set nombre "El Rosario"
    create-link-with estacion 56]
end

to linea2
  set-default-shape estaciones "circle"
  create-estaciones 23
  ask estacion 22 [
    setxy 14 -22
    set size 0.5
    set color blue
    set nombre "Taxqueña"
    create-link-with estacion 23]
  ask estacion 23 [
    setxy 12 -20
    set size 0.5
    set color blue
    set nombre "General Anaya"
    create-link-with estacion 24]
  ask estacion 24 [
    setxy 10 -18
    set size 0.8
    set color blue
    set nombre "Ermita"
    create-link-with estacion 25]
  ask estacion 25 [
    setxy 10 -15.5
    set size 0.5
    set color blue
    set nombre "Portales"
    create-link-with estacion 26]
  ask estacion 26 [
    setxy 10 -13.5
    set size 0.5
    set color blue
    set nombre "Nativitas"
    create-link-with estacion 27]
  ask estacion 27 [
    setxy 10 -11.5
    set size 0.5
    set color blue
    set nombre "Villa de Cortes"
    create-link-with estacion 28]
  ask estacion 28 [
    setxy 10 -8.5
    set size 0.5
    set color blue
    set nombre "Xola"
    create-link-with estacion 29]
  ask estacion 29 [
    setxy 10 -6
    set size 0.5
    set color blue
    set nombre "Viaducto"
    create-link-with estacion 30]
  ask estacion 30 [
    setxy 10 -2
    set size 0.8
    set color blue
    set nombre "Chabacano"
    create-link-with estacion 31]
  ask estacion 31 [
    setxy 10 2
    set size 0.5
    set color blue
    set nombre "San Antonio Abad"
    create-link-with estacion 32]
  ask estacion 32 [
    setxy 10 4
    set size 0.8
    set color blue
    set nombre "Pino Suarez"
    create-link-with estacion 33]
  ask estacion 33 [
    setxy 10 6
    set size 0.5
    set color blue
    set nombre "Allende"
    create-link-with estacion 34]
  ask estacion 34 [
    setxy 10 8
    set size 0.5
    set color blue
    set nombre "Zocalo"
    create-link-with estacion 35]
  ask estacion 35 [
    setxy 6 8
    set size 0.8
    set color blue
    set nombre "Bellas Artes"
    create-link-with estacion 14]
  ask estacion 36 [
    setxy -2 8
    set size 0.5
    set color blue
    set nombre "Revolucion"
    create-link-with estacion 14]
  ask estacion 37 [
    setxy -4 8
    set size 0.5
    set color blue
    set nombre "San Cosme"
    create-link-with estacion 36]
  ask estacion 38 [
    setxy -6 9
    set size 0.5
    set color blue
    set nombre "Normal"
    create-link-with estacion 37]
  ask estacion 39 [
    setxy -8 10
    set size 0.5
    set color blue
    set nombre "Colegio Militar"
    create-link-with estacion 38]
  ask estacion 40 [
    setxy -10 11
    set size 0.5
    set color blue
    set nombre "Popotla"
    create-link-with estacion 39]
  ask estacion 41 [
    setxy -12 12
    set size 0.5
    set color blue
    set nombre "Cuitlahuac"
    create-link-with estacion 40]
  ask estacion 42 [
    setxy -14 13
    set size 0.8
    set color blue
    set nombre "Tacuba"
    create-link-with estacion 41]
  ask estacion 43 [
    setxy -16 13
    set size 0.5
    set color blue
    set nombre "Panteones"
    create-link-with estacion 42]
  ask estacion 44 [
    setxy -18 13
    set size 0.5
    set color blue
    set nombre "Cuatro Caminos"
    create-link-with estacion 43]
end

to linea3
  set-default-shape estaciones "circle"
  create-estaciones 22
  ask estacion 0 [
    setxy 0 -20
    set size 0.5
    set color 66
    set nombre "Universidad"
    create-link-with estacion 1]
  ask estacion 1 [
    setxy 0 -18
    set size 0.5
    set color 66
    set nombre "Copilco"
    create-link-with estacion 2]
  ask estacion 2 [
    setxy 0 -16
    set size 0.5
    set color 66
    set nombre "Miguel Ángel de Quevedo"
    create-link-with estacion 3]
  ask estacion 3 [
    setxy 0 -14
    set size 0.5
    set color 66
    set nombre "Viveros"
    create-link-with estacion 4]
  ask estacion 4 [
    setxy 0 -12
    set size 0.5
    set color 66
    set nombre "Coyoacan"
    create-link-with estacion 5]
  ask estacion 5 [
    setxy 2 -10
    set size 0.8
    set color 66
    set nombre "Zapata"
    create-link-with estacion 6]
  ask estacion 6 [
    setxy 2 -8
    set size 0.5
    set color 66
    set nombre "División del Norte"
    create-link-with estacion 7]
  ask estacion 7 [
    setxy 2 -6
    set size 0.5
    set color 66
    set nombre "Eugenia"
    create-link-with estacion 8]
  ask estacion 8 [
    setxy 2 -4
    set size 0.5
    set color 66
    set nombre "Etiopia"
    create-link-with estacion 9]
  ask estacion 9 [
    set color 66
    set size 0.8
    setxy 2 -2
    set nombre "Centro Medico"
    create-link-with estacion 10]
  ask estacion 10 [
    setxy 2 0
    set size 0.5
    set color 66
    set nombre "Hospital General"
    create-link-with estacion 11]
  ask estacion 11 [
    setxy 2 2
    set size 0.5
    set color 66
    set nombre "Niños Heroes"
    create-link-with estacion 12]
  ask estacion 12 [
    setxy 2 4
    set size 0.8
    set color 66
    set nombre "Balderas"
    create-link-with estacion 13]
  ask estacion 13 [
    setxy 2 6
    set size 0.5
    set color 66
    set nombre "Juárez"
    create-link-with estacion 14]
  ask estacion 14 [
    setxy 2 8
    set size 0.8
    set color 66
    set nombre "Hidalgo"
    create-link-with estacion 15]
  ask estacion 15 [
    setxy 2 10
    set size 0.8
    set color 66
    set nombre "Guerrero"
    create-link-with estacion 16]
  ask estacion 16 [
    setxy 2 12
    set size 0.5
    set color 66
    set nombre "Tlatelolco"
    create-link-with estacion 17]
  ask estacion 17 [
    setxy 4 14
    set size 0.8
    set color 66
    set nombre "La Raza"
    create-link-with estacion 18]
  ask estacion 18 [
    setxy 4 16
    set size 0.5
    set color 66
    set nombre "Potrero"
    create-link-with estacion 19]
  ask estacion 19 [
    setxy 4 18
    set size 0.8
    set color 66
    set nombre "Deportivo 18 de Marzo"
    create-link-with estacion 20]
  ask estacion 20 [
   setxy 4 20
    set size 0.5
    set color 66
    set nombre "Indios Verdes"
  ]
  ask estacion  21 [die]

end

to linea4
  set-default-shape estaciones "circle"
  create-estaciones 10
  ask estacion 58 [
    setxy 14 -6
    set size 0.8
    set color cyan
    set nombre "Santa Anita"
    create-link-with estacion 59]
  ask estacion 59 [
    setxy 14 -2
    set size 0.8
    set color cyan
    set nombre "Jamaica"
    create-link-with estacion 60
    create-link-with estacion 30]
  ask estacion 60 [
    setxy 14 2
    set size 0.5
    set color cyan
    set nombre "Fray Servando"
    create-link-with estacion 61]
  ask estacion 61 [
    setxy 14 4
    set size 0.8
    set color cyan
    set nombre "Calendaria"
    create-link-with estacion 62]
  ask estacion 62 [
    setxy 14 8
    set size 0.8
    set color cyan
    set nombre "Morelos"
    create-link-with estacion 63]
  ask estacion 63 [
    setxy 14 10
    set size 0.5
    set color cyan
    set nombre "Canal del Norte"
    create-link-with estacion 64]
  ask estacion 64 [
    setxy 16 12
    set size 0.8
    set color cyan
    set nombre "Consulado"
    create-link-with estacion 65]
  ask estacion 65 [
    setxy 16 14
    set size 0.5
    set color cyan
    set nombre "Bondojito"
    create-link-with estacion 66]
  ask estacion 66 [
    setxy 16 16
    set size 0.5
    set color cyan
    set nombre "Talisman"
    create-link-with estacion 67]
  ask estacion 67 [
    setxy 16 18
    set size 0.8
    set nombre "Martin Carrera"
    set color cyan]
end

to linea5
  set-default-shape estaciones "circle"
  create-estaciones 11
  ask estacion 68 [
    setxy -2 20
    set size 0.5
    set color yellow
    set nombre "Politecnico"
    create-link-with estacion 69]
  ask estacion 69 [
    setxy -2 18
    set size 0.8
    set color yellow
    set nombre "Instituto del Petroleo"
    create-link-with estacion 70]
  ask estacion 70 [
    setxy 1 16
    set size 0.5
    set color yellow
    set nombre "Autobuses del Norte"
    create-link-with estacion 17]
  ask estacion 71 [
    setxy 7 12
    set size 0.5
    set color yellow
    set nombre "Misterios"
    create-link-with estacion 17]
  ask estacion 72 [
    setxy 11 12
    set size 0.5
    set color yellow
    set nombre "Valle Gomez"
    create-link-with estacion 71
    create-link-with estacion 64]
  ask estacion 73 [
    setxy 19 11.5
    set size 0.5
    set color yellow
    set nombre "Eduardo Molina"
    create-link-with estacion 64]
  ask estacion 74 [
    setxy 22 9.5
    set size 0.5
    set color yellow
    set nombre "Aragon"
    create-link-with estacion 73]
  ask estacion 75 [
    setxy 25  7.5
    set size 0.8
    set color yellow
    set nombre "Oceania"
    create-link-with estacion 74]
  ask estacion 76 [
    setxy 25  5
    set size 0.5
    set color yellow
    set nombre "Terminal Aerea"
    create-link-with estacion 75]
  ask estacion 77 [
    setxy 25  3
    set size 0.5
    set color yellow
    set nombre "Hangares"
    create-link-with estacion 76]
  ask estacion 78 [
    setxy 25  0
    set size 0.8
    set color yellow
    set nombre "Pantitlan"
    create-link-with estacion 77]
end

to lineaA
  set-default-shape estaciones "circle"
  create-estaciones 9
  ask estacion 79 [
    setxy 25 -4
    set size 0.5
    set color magenta
    set nombre "Agricola Oriental"
    create-link-with estacion 78]
  ask estacion 80 [
    setxy 25 -8
    set size 0.5
    set color magenta
    set nombre "Canal de San Juan"
    create-link-with estacion 79 ]
  ask estacion 81 [
    setxy 25 -13
    set size 0.5
    set color magenta
    set nombre "Tepalcates"
    create-link-with estacion 80]
  ask estacion 82 [
    setxy 28 -16
    set size 0.5
    set color magenta
    set nombre "Guelatao"
    create-link-with estacion 81]
  ask estacion 83 [
    setxy 30 -18
    set size 0.5
    set color magenta
    set nombre "Peñon Viejo"
    create-link-with estacion 82]
  ask estacion 84 [
    setxy 32 -20
    set size 0.5
    set color magenta
    set nombre "Acatitla"
    create-link-with estacion 83]
  ask estacion 85 [
    setxy 32 -22
    set size 0.5
    set color magenta
    set nombre "Santa Marta"
    create-link-with estacion 84]
  ask estacion 86 [
    setxy 32 -24
    set size 0.5
    set color magenta
    set nombre "Los Reyes"
    create-link-with estacion 85]
  ask estacion 87 [
    setxy 34 -26
    set size 0.5
    set color magenta
    set nombre "La Paz"
    create-link-with estacion 86]
end

to linea6
  set-default-shape estaciones "circle"
  create-estaciones 7
  ask estacion 88 [
    setxy -12 18.5
    set size 0.5
    set color 13
    set nombre "Tezozomoc"
    create-link-with estacion 57]
  ask estacion 89 [
    setxy -10 16.5
    set size 0.5
    set color 13
    set nombre "UAM-Azcapotzalco"
    create-link-with estacion 88]
  ask estacion 90 [
    setxy -8 16.5
    set size 0.5
    set color 13
    set nombre "Ferreria/Arena Ciudad de Mexico"
    create-link-with estacion 89]
  ask estacion 91 [
    setxy -6 16.5
    set size 0.5
    set color 13
    set nombre "Norte 45"
    create-link-with estacion 90]
  ask estacion 92 [
    setxy -4 17
    set size 0.5
    set color 13
    set nombre "Vallejo"
    create-link-with estacion 91
    create-link-with estacion 69 ]
  ask estacion 93 [
    setxy 1 18
    set size 0.5
    set color 13
    set nombre "Lindavista"
    create-link-with estacion 69
    create-link-with estacion 19]
  ask estacion 94 [
    setxy 12 18
    set size 0.5
    set color 13
    set nombre "La villa-Basilica"
    create-link-with estacion 19
    create-link-with estacion 67]

end

to linea8
  set-default-shape estaciones "circle"
  create-estaciones 16
  ask estacion 95 [
    setxy 6 10
    set size 0.8
    set color 53
    set nombre "Garibaldi"
    create-link-with estacion 35
    create-link-with estacion 15]
  ask estacion 96 [
    setxy 6 6
    set size 0.5
    set color 53
    set nombre "San Juan de Letran"
    create-link-with estacion 35]
  ask estacion 97 [
    setxy 6 4
    set size 0.8
    set color 53
    set nombre "Salto del Agua"
    create-link-with estacion 96
    create-link-with estacion 12]
  ask estacion 98 [
    setxy 7 2
    set size 0.5
    set color 53
    set nombre "Doctores"
    create-link-with estacion 97]
  ask estacion 99 [
    setxy 8.5 0
    set size 0.5
    set color 53
    set nombre "Obrera"
    create-link-with estacion 98
    create-link-with estacion 30]
  ask estacion 100 [
    setxy 12 -4
    set size 0.5
    set color 53
    set nombre "La viga"
    create-link-with estacion 30
    create-link-with estacion 58]
  ask estacion 101 [
    setxy 16 -8
    set size 0.5
    set color 53
    set nombre "Coyuya"
    create-link-with estacion 58]
  ask estacion 102 [
    setxy 18 -10
    set size 0.5
    set color 53
    set nombre "Iztacalco"
    create-link-with estacion 101]
  ask estacion 103 [
    setxy 18 -12
    set size 0.5
    set color 53
    set nombre "Apatlaco"
    create-link-with estacion 102]
  ask estacion 104 [
    setxy 18 -14
    set size 0.5
    set color 53
    set nombre "Aculco"
    create-link-with estacion 103]
  ask estacion 105 [
    setxy 18 -16
    set size 0.5
    set color 53
    set nombre "Escuadron 201"
    create-link-with estacion 104]
  ask estacion 106 [
    setxy 18 -18
    set size 0.8
    set color 53
    set nombre "Atlalilco"
    create-link-with estacion 105]
  ask estacion 107 [
    setxy 20 -18
    set size 0.5
    set color 53
    set nombre "Iztapalapa"
    create-link-with estacion 106]
  ask estacion 108 [
    setxy 22 -18
    set size 0.5
    set color 53
    set nombre "Cerro de la Estrella"
    create-link-with estacion 107]
  ask estacion 109 [
    setxy 24 -20
    set size 0.5
    set color 53
    set nombre "UAM-I"
    create-link-with estacion 108]
  ask estacion 110 [
    setxy 26 -22
    set size 0.5
    set color 53
    set nombre "Constitucion de 1917"
    create-link-with estacion 109]

end

to linea9
  set-default-shape estaciones "circle"
  create-estaciones 7
  ask estacion 111 [
    setxy -6 -2
    set size 0.5
    set color brown
    set nombre "Patriotismo"
    create-link-with estacion 49]
  ask estacion 112 [
    setxy -2 -2
    set size 0.5
    set color brown
    set nombre "Chilpancingo"
    create-link-with estacion 111
    create-link-with estacion  9]
  ask estacion 113 [
    setxy 6 -2
    set size 0.5
    set color brown
    set nombre "Lazaro Cardenas"
    create-link-with estacion 9
    create-link-with estacion 30]
  ask estacion 114 [
    setxy 16 -2
    set size 0.5
    set color brown
    set nombre "Mixiuhca"
    create-link-with estacion 59]
  ask estacion 115 [
    setxy 18 -2
    set size 0.5
    set color brown
    set nombre "Velodromo"
    create-link-with estacion 114]
  ask estacion 116 [
    setxy 20 -2
    set size 0.5
    set color brown
    set nombre "Ciudad Deportiva"
    create-link-with estacion 115]
  ask estacion 117 [
    setxy 22 -2
    set size 0.5
    set color brown
    set nombre "Puebla"
    create-link-with estacion 116
    create-link-with estacion 78]

end

to linea1
 set-default-shape estaciones "circle"
 create-estaciones 13
 ask estacion 118 [
    setxy -12 0
    set size 0.5
    set color pink
    set nombre "Observatorio"
    create-link-with estacion 49]
 ask estacion 119 [
    setxy -9 1
    set size 0.5
    set color pink
    set nombre "Juanacatlan"
    create-link-with estacion 49]
  ask estacion 120 [
    setxy -8 2
    set size 0.5
    set color pink
    set nombre "Chapultepec"
    create-link-with estacion 119]
  ask estacion 121 [
    setxy -7 3
    set size 0.5
    set color pink
    set nombre "Sevilla"
    create-link-with estacion 120]
  ask estacion 122 [
    setxy -4 4
    set size 0.5
    set color pink
    set nombre "Insurgentes"
    create-link-with estacion 121]
  ask estacion 123 [
    setxy -1 4
    set size 0.5
    set color pink
    set nombre "Cuauhtemoc"
    create-link-with estacion 122
    create-link-with estacion 12 ]
  ask estacion 124 [
    setxy 8 4
    set size 0.5
    set color pink
    set nombre "Isabel la Catolica"
    create-link-with estacion 97
    create-link-with estacion 32
    create-link-with estacion 61]
  ask estacion 125 [
    setxy 18 5.5
    set size 0.8
    set color pink
    set nombre "Merced"
    create-link-with estacion 61]
  ask estacion 126 [
    setxy 19 4.7
    set size 0.5
    set color pink
    set nombre "Moctezuma"
    create-link-with estacion 125
    create-link-with estacion 62]
  ask estacion 127 [
    setxy 20 3.7
    set size 0.5
    set color pink
    set nombre "Balbuena"
    create-link-with estacion 126]
  ask estacion 128 [
    setxy 21 2.7
    set size 0.5
    set color pink
    set nombre "Boulevard Puerto Aéreo"
    create-link-with estacion 127]
  ask estacion 129 [
    setxy 22 1.7
    set size 0.5
    set color pink
    set nombre "Gomez Farias"
    create-link-with estacion 128]
  ask estacion 130 [
    setxy 23 0.7
    set size 0.5
    set color pink
    set nombre "Zaragoza"
    create-link-with estacion 129
    create-link-with estacion 78]
end

to lineaB
  set-default-shape estaciones "circle"
  create-estaciones 16
  ask estacion 131 [
    setxy 0 10
    set size 0.5
    set color grey
    set nombre "Buenavista"
    create-link-with estacion 15]
  ask estacion 132 [
    setxy 8.5 10
    set size 0.5
    set color grey
    set nombre "Lagunilla"
    create-link-with estacion 95]
  ask estacion 133 [
    setxy 11 10
    set size 0.5
    set color grey
    set nombre "Tepito"
    create-link-with estacion 132
    create-link-with estacion 62]
  ask estacion 134 [
    setxy 20 6.2
    set size 0.5
    set color grey
    set nombre "Ricardo Flores Magon"
    create-link-with estacion 125]
  ask estacion 135 [
    setxy 22 6.8
    set size 0.5
    set color grey
    set nombre "Romero Rubio"
    create-link-with estacion 134
    create-link-with estacion 75]
  ask estacion 136 [
    setxy 27 9
    set size 0.5
    set color grey
    set nombre "Deportivo Oceania"
    create-link-with estacion 75]
  ask estacion 137 [
    setxy 27 11
    set size 0.5
    set color grey
    set nombre "Bosque de Aragon"
    create-link-with estacion 136]
  ask estacion 138 [
    setxy 27 13
    set size 0.5
    set color grey
    set nombre "Villa de Aragon"
    create-link-with estacion 137]
  ask estacion 139 [
    setxy 27 15
    set size 0.5
    set color grey
    set nombre "Nezahualcoyotl"
    create-link-with estacion 138]
  ask estacion 140 [
    setxy 27 17
    set size 0.5
    set color grey
    set nombre "Impulsora"
    create-link-with estacion 139]
  ask estacion 141 [
    setxy 27 19
    set size 0.5
    set color grey
    set nombre "Rios de los Remedios"
    create-link-with estacion 140]
  ask estacion 142 [
    setxy 27 21
    set size 0.5
    set color grey
    set nombre "Muzquiz"
    create-link-with estacion 141]
  ask estacion 143 [
    setxy 27 23
    set size 0.5
    set color grey
    set nombre "Ecatepec"
    create-link-with estacion 142]
  ask estacion 144 [
    setxy 27 25
    set size 0.5
    set color grey
    set nombre "Olimpica"
    create-link-with estacion 143]
  ask estacion 145 [
    setxy 27 27
    set size 0.5
    set color grey
    set nombre "Plaza Aragon"
    create-link-with estacion 144]
  ask estacion 146 [
    setxy 27 29
    set size 0.5
    set color grey
    set nombre "Ciudad Azteca"
    create-link-with estacion 145]
end

to linea12
  set-default-shape estaciones "circle"
  create-estaciones 16
  ask estacion 147 [
    setxy -6 -10
    set size 0.5
    set color 43
    set nombre "Insurgente Sur"
    create-link-with estacion 46]
  ask estacion 148 [
    setxy -2 -10
    set size 0.5
    set color 43
    set nombre "Hospital 20 de Noviembre"
    create-link-with estacion 147
    create-link-with estacion 5]
  ask estacion 149 [
    setxy 5.5 -13.5
    set size 0.5
    set color 43
    set nombre "Parque de los venados"
    create-link-with estacion 5]
  ask estacion 150 [
    setxy 7.5 -15.5
    set size 0.5
    set color 43
    set nombre "Eje central"
    create-link-with estacion 149
    create-link-with estacion 24]
  ask estacion 151 [
    setxy 14 -18
    set size 0.5
    set color 43
    set nombre "Mexicaltzingo"
    create-link-with estacion 24
    create-link-with estacion 106]
  ask estacion 152 [
    setxy 18 -21
    set size 0.5
    set color 43
    set nombre "Culhuacan"
    create-link-with estacion 106]
  ask estacion 153 [
    setxy 18 -23
    set size 0.5
    set color 43
    set nombre "San Andres Tomatlan"
    create-link-with estacion 152]
  ask estacion 154 [
    setxy 18 -26
    set size 0.5
    set color 43
    set nombre "Lomas Estrella"
    create-link-with estacion 153]
  ask estacion 155 [
    setxy 20 -26
    set size 0.5
    set color 43
    set nombre "Calle 11"
    create-link-with estacion 154]
  ask estacion 156 [
    setxy 22 -26
    set size 0.5
    set color 43
    set nombre "Periferico Oriente"
    create-link-with estacion 155]
  ask estacion 157 [
    setxy 23.5 -26
    set size 0.5
    set color 43
    set nombre "Tezonco"
    create-link-with estacion 156]
  ask estacion 158 [
    setxy 25 -26
    set size 0.5
    set color 43
    set nombre "Olivos"
    create-link-with estacion 157]
  ask estacion 159 [
    setxy 26.5 -26
    set size 0.5
    set color 43
    set nombre "Nopalera"
    create-link-with estacion 158]
  ask estacion 160 [
    setxy 28.5 -26
    set size 0.5
    set color 43
    set nombre "Zapotitlan"
    create-link-with estacion 159]
  ask estacion 161 [
    setxy 30.5 -28
    set size 0.5
    set color 43
    set nombre "Tlaltenco"
    create-link-with estacion 160]
  ask estacion 162 [
    setxy 32.5 -30
    set size 0.5
    set color 43
    set nombre "Tlahuac"
    create-link-with estacion 161]
end

to setup-redmetro
  linea3
  linea2
  linea7
  linea4
  linea5
  lineaA
  linea6
  linea8
  linea9
  linea1
  lineaB
  linea12
end

;; now, separate the square by regions("Delegaciones"), each color represent an one "Delegacion"

to del-Coyoacan

  (foreach [-1 -2 -3 -4 -5 0 1 2 3 9 10 11 12 13 14 15][
    [a] -> ask patch a -28 [set pcolor 89]])

  (foreach [-19 -21 -24 -25 -26 -27][
    [b] ->
    (foreach [-1 -2 -3 -4 -5 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15][
      [a] -> ask patch a b [set pcolor 89]])])

  (foreach [-22 -23][
    [b] ->
    (foreach [-1 -2 -3 -4 -5 -6 -7 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15][
      [a] -> ask patch a b [set pcolor 89]])])

  (foreach [-1 -2 -3 -4 -5 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17][
    [a] -> ask patch a -20 [set pcolor 89]])

  (foreach [-1 -2 -3 -4 -5 0 1 2 3 4 5 6 7 8 9][
    [a] -> ask patch a -18 [set pcolor 89]])

  (foreach [-1 -2 -3 -4 -5 0 1 2 3 4 5 6 7][
    [a] -> ask patch a -17 [set pcolor 89]])

  (foreach [-1 -2 -3 -4 -5 0 1 2 3 4 5 6 ][
    [a] -> ask patch a -16 [set pcolor 89]])

  (foreach [ 0 1 2 3 4 5 6 ][
    [a] -> ask patch a -15 [set pcolor 89]])

  (foreach [0 1 2 3 4][
    [a] -> ask patch a -14 [set pcolor 89]])

  (foreach [-12 -13][
    [b] ->
    (foreach [ 0 1 2 3 ][
      [a] -> ask patch a b [set pcolor 89]])])

end

to del-BenitoJ

  (foreach [10 11 12][
    [a] -> ask patch a -18 [set pcolor 19]])

  (foreach [8 9 10 11 12][
    [a] -> ask patch a -17 [set pcolor 19]])

  (foreach [-15 -16][
    [b] ->
    (foreach [7 8 9 10 11 12][
      [a] -> ask patch a b [set pcolor 19]])])

  (foreach [5 6 7 8 9 10 11 12][
    [a] -> ask patch a -14 [set pcolor 19]])

  (foreach [-12 -13][
    [b] ->
    (foreach [ 4 5 6 7 8 9 10 11 12][
      [a] -> ask patch a b [set pcolor 19]])])

  (foreach [-7 -8 -9 -10 -11][
    [b] ->
    (foreach [-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12][
      [a] -> ask patch a b [set pcolor 19]])])

  (foreach [-4 -5 -6 ] [
    [b] ->
    (foreach [-10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10][
      [a] -> ask patch a b [set pcolor 19]])])

end

to del-Iztapalapa

  (foreach [26 27 28 29 30 31 32 33 34 35][
    [a] -> ask patch a -9  [set pcolor 49]])

  (foreach [20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
    [a] -> ask patch a -10 [set pcolor 49]])

  (foreach [16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
    [a] -> ask patch a -11 [set pcolor 49]])

  (foreach [-12 -13 -14 -15 -16 -17 -18][
    [b] ->
    (foreach [13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 49]])])

  (foreach [13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
    [a] -> ask patch a -19 [set pcolor 49]])

  (foreach [-20 -21 -22 -23 -24 -25][
    [b] ->
    (foreach [18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 49]])])

  (foreach [18 19 20 21 22 34 35][
    [a] -> ask patch a -26 [set pcolor 49]])

end

to del-Iztacalco
  (foreach [13 14 15][
    [a] -> ask patch a -11 [set pcolor 128]])

  (foreach [13 14 15 16 17 18 19][
    [a] -> ask patch a -10 [set pcolor 128]])

  (foreach [13 14 15 16 17 18 19 20 21 22 23 24 25 26][
    [a] -> ask patch a -9 [set pcolor 128]])

  (foreach [-7 -8][
    [b] ->
    (foreach [13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 128]])])

  (foreach [-4 -5 -6][
    [b] ->
    (foreach [11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 128]])])

  (foreach [-3 -2 -1 0][
    [b] ->
    (foreach [25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 128]])])
end

to del-Tlahuac

  (foreach [22 23 24 25 26 27 28 29 30 31 32 33][
    [a] -> ask patch a -26 [set pcolor 68]])

  (foreach [-27 -28 -29 -30 -31 -32 -33 -34][
    [b] ->
    (foreach [18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 68]])])

  (foreach [28 29 30 31 32 33 34 35][
    [a] -> ask patch a -35 [set pcolor 68]])

end

to del-Xochimilco

  (foreach [-21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31][
    [b] ->
    (foreach [16 17][
      [a] -> ask patch a b [set pcolor 38]])])

  (foreach [12 13 14 15 16 17][
    [a] -> ask patch a -32 [set pcolor 38]])

  (foreach [-33 -34][
    [b] ->
    (foreach [8 9 10 11 12 13 14 15 16 17][
      [a] -> ask patch a b [set pcolor 38]])])

  (foreach [8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27][
    [a] -> ask patch a -35 [set pcolor 38]])

end

to del-Tlalpan

  (foreach [4 5 6 7 8][
    [a] -> ask patch  a -28 [set pcolor 138]])

  (foreach [-29 -30 -31][
    [b] ->
    (foreach [-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15][
      [a] -> ask patch a b [set pcolor 138]])])

  (foreach [-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11][
    [a] -> ask patch a -32 [set pcolor 138]])

  (foreach [-33 -34 -35][
    [b] ->
    (foreach [-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7][
      [a] -> ask patch a b [set pcolor 138]])])

end

to del-Venustiano

  (foreach [-3 -2 -1 0][
    [b] ->
    (foreach [12 13 14 15 16 17 18 19 20 21 22 23 24][
      [a] -> ask patch a b [set pcolor 28]])])

  (foreach [1 2 3 4 5 6 7][
    [b] ->
    (foreach [12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 28]])])

end

to del-Alvaro

  (foreach [-12 -13 -14 -15 ][
   [b] ->
   (foreach [-1 -2 -3 -4 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 117]])])

  (foreach [-16 -17 -18 -19 -20 -21][
   [b] ->
   (foreach [-6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 117]])])

  (foreach [-23 -22][
   [b] ->
   (foreach [-8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 117]])])

  (foreach [-11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0][
    [b] ->
    (foreach [-11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
      [a] -> ask patch a b [set pcolor 117]])])

end

to del-Magdalena

  (foreach [-22 -23][
    [b] ->
    (foreach [-12 -13 -14 -15 -16 -17 -18 -19][
      [a] -> ask patch a b [set pcolor 87]])])

  (foreach [-24 -25 -26 -27 -28][
   [b] ->
   (foreach [-6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 87]])])

  (foreach [-29 -30 -31 -32 -33 -34 -35][
   [b] ->
   (foreach [-12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 87]])])

end

to del-Miguel

  (foreach [-3 -2 -1 0][
    [b] ->
    (foreach [-10 -9 -8 -7 -6][
      [a] -> ask patch a b [set pcolor 78]])])

  (foreach [1 2 3 4 5 6 7 8 9 10 11 12 13 14][
   [b] ->
   (foreach [-6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 78]])])

   (foreach [-14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
     [a] -> ask patch a 15 [set pcolor 78]])

end

to del-cuauhtemoc

  (foreach [-3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13][
    [b] ->
    (foreach [-5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11][
      [a] -> ask patch a b [set pcolor 108]])])

end

to del-Azcapo

  ask patch  -5 14 [set pcolor 6]
  ask patch  -4 14 [set pcolor 6]

  (foreach [-4 -5 -6 -7 -8 -9 -10 -11 -12 -13][
    [a] -> ask patch a 15 [set pcolor 6]])

  (foreach [16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
   [b] ->
   (foreach [-4 -5 -6 -7 -8 -9 -10 -11 -12 -13 -14 -15 -16 -17 -18 -19 -20 -21 -22 -23 -24 -25 -26 -27 -28 -29 -30 -31 -32 -33 -34 -35][
    [a] -> ask patch a b [set pcolor 6]])])

end

to del-Gustavo

  (foreach [14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
   [b] ->
   (foreach [-3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
    [a] -> ask patch a b [set pcolor 57]])])

  (foreach [8 9 10 11 12 13][
    [b] ->
    (foreach [12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35][
      [a] -> ask patch a b [set pcolor 57]])])

end

to Delegaciones
  del-Coyoacan
  del-BenitoJ
  del-Iztacalco
  del-Iztapalapa
  del-Tlahuac
  del-Xochimilco
  del-Tlalpan
  del-Venustiano
  del-Alvaro
  del-Magdalena
  del-Miguel
  del-cuauhtemoc
  del-Azcapo
  del-Gustavo
end

to poblacion
  ;create-personas 263
  ;[
  ;  set shape "circle"
  ;  suceptible
  ;  move
  ;]

  (foreach [ 89 19 49 128 68 28 117 78 108 6 57 ]
    [ [a] -> ask n-of 25 (patches with [pcolor = a])[
    sprout-personas 1[
        move
        suceptible
  ]]])

end

to move-to-regions
  ask personas with [suceptible?][
    move]
end

;to move-to-regions
;
;  (foreach [ 89 19 49 128 68 28 117 78 108 6 57 ]
;    [ [b] -> ask personas-on patches with [pcolor = b][
;      move
;      if pcolor != b [move-to one-of patches with [pcolor = b]]]])
;end

to move-to-estaciones
  ask estaciones [
    let p one-of link-neighbors
    ask personas in-radius 3 [
      ;set color 122
      move-to p
      let s random-float 1.0
      if s < 0.3 [
        fd 6

      ]
  ]]
end

to contar
  set Suceptibles (count personas with[color = 92])
  set Infectados  (count personas with [color = red])
  set Recuperados (count personas with [color = green])
end

to suceptible
  set suceptible? true
  set enfermo? false
  set recuperado? false
  set color 92
end

to infectado
  set enfermo? true
  set recuperado? false
  set tiempo-enfermo tiempo-enfermo + 1
  set color red
end

to recuperado
  set enfermo? false
  set recuperado? true
  set color green
end

to infectarse
  if not enfermo?[
    if random-float 100 < infecciosidad
          [infectado]]

end

to recuperarse
  if tiempo-enfermo < dias-recuperacion[
  if random-float 100 < duracion-enfermedad
      [recuperado]]
end


to SIR
  ask personas with [suceptible?][
    infectarse]
  ask personas with [enfermo?][
    recuperarse]
end

to move
  lt  (random 180) - 90
  rt  (random 180) - 90
  fd .5
end

to setup
  clear-all
  setup-redmetro
  Delegaciones
  poblacion
  reset-ticks
end

to go
  move-to-estaciones
  SIR
  contar
  move-to-regions
  tick
end
@#$#@#$#@
GRAPHICS-WINDOW
209
11
1140
943
-1
-1
13.0
1
10
1
1
1
0
0
0
1
-35
35
-35
35
0
0
1
ticks
30.0

BUTTON
18
79
81
112
NIL
setup\n
NIL
1
T
OBSERVER
NIL
7
NIL
NIL
1

BUTTON
108
80
171
113
NIL
go
T
1
T
OBSERVER
NIL
8
NIL
NIL
1

MONITOR
15
317
90
362
Suceptibles
Suceptibles
17
1
11

SLIDER
15
210
187
243
infecciosidad
infecciosidad
0
1.7265
1.7
.1
1
NIL
HORIZONTAL

SLIDER
15
263
188
296
dias-recuperacion
dias-recuperacion
0
14
14.0
1
1
dias
HORIZONTAL

MONITOR
105
318
178
363
Infectados
Infectados
17
1
11

MONITOR
54
374
140
419
Recuperados
Recuperados
3
1
11

PLOT
5
432
205
582
plot1
dias
población 
0.0
71.0
0.0
10.0
true
false
"" ""
PENS
"S" 1.0 0 -15582384 true "" "plot Suceptibles"
"I" 1.0 0 -2674135 true "" "plot Infectados"
"R" 1.0 0 -10899396 true "" "plot Recuperados"

SLIDER
18
159
190
192
duracion-enfermedad
duracion-enfermedad
0
21
3.0
1
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
