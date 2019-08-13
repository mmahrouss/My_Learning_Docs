# Differences:
# Use Union Type instead of abstract type

# Suits Definition
# abstract type Suit end
struct Clubs end
struct Diamonds end
struct Hearts end
struct Spades end
Suit = Union{Clubs, Diamonds, Hearts, Spades}
# Rank Definition
struct Jack end
struct Queen end
struct King end
struct Ace end
struct Num num::Integer end
Rank = Union{Jack, Queen, King, Ace, Num}

# Card Definition
Card = NamedTuple{(:suit,:rank),Tuple{T,R}} where {T<:Suit,R<:Rank}

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

print(card_color((suit=Clubs(), rank=Num(2)))) # Should be Black()
