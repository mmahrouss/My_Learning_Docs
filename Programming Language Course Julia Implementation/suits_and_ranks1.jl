# Suits Definition
abstract type Suit end
struct Clubs <: Suit end
struct Diamonds <: Suit end
struct Hearts <: Suit end
struct Spades <: Suit end

# Rank Definition
abstract type Rank end
struct Jack <: Rank end
struct Queen <: Rank end
struct King <: Rank end
struct Ace <: Rank end
struct Num <: Rank num::Integer end

# Card Definition
struct Card
    suit::Suit
    rank::Rank
end
# Color Definition
abstract type Color end
struct Red <: Color end
struct Black <: Color end

#functions
function card_color(c::Card)::Color
    suit = c.suit
    if isa(suit,Clubs)
        Black()
    elseif isa(suit,Spades)
        Black()
    elseif isa(suit,Diamods)
        Red()
    elseif isa(suit,Hearts)
        Red()
    end
end

print(card_color(Card(Clubs(), Num(2)))) # Should be Black()
