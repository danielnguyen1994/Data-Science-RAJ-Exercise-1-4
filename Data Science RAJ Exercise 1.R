#In diesem Programm versucht der User eine Zahl von 0 - 100 zu erraten, dabei stehen ihm 5 Versuche zur Verfuegung
neuerunde <- 1

while(neuerunde == 1){
  zufallswert <- sample(1:100, 1)
  print("Erraten Sie eine Nummer von 0 - 100:")
  versuche <- 5
  
  while (versuche > 0){
    versuche <- versuche - 1
    auswahl = as.integer(readline())
    if(auswahl == zufallswert){
      print(paste("Richtig erraten die Zahl war", zufallswert))
      versuche <- -1
    } else if(versuche == 0){
      print(paste(auswahl, "ist leider Falsch, die richtige Zahl ist", zufallswert))
    } else{ 
      print(paste(auswahl, "ist leider Falsch, versuchen Sie es erneut (Noch", versuche , "Versuche)"))
    }
  }
  
  print("Neue runde starten? 1 =  Ja, 0 = Nein")
  neustarten = as.integer(readline())
  if(neustarten == 1){
    neuerunde <- 1
  } 
  if(neustarten == 0){
    neuerunde <- 0
  }
}
print("Spiel vorbei")




