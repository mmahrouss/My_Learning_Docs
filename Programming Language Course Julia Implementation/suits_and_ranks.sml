(* Dan Grossman, Coursera PL, HW2 Provided Code *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int
type card = suit * rank

datatype color = Red | Black

fun card_color c =
  case c of
      (Clubs,_) => Black
     |(Spades,_) => Black
     |(Diamonds,_) => Red
     |(Hearts,_) => Red 
