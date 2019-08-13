# Differences:
# Use Union Type instead of abstract type. With a syntactic sugar.

# Suits Definition
Suit = Union{begin struct Clubs  end; Clubs end,
             begin struct Diamonds  end; Diamonds end,
             begin struct Hearts  end; Hearts end,
             begin struct Spades  end; Spades end}
# Rank Definition
Rank = Union{begin struct Jack end; Jack end,
             begin struct Queen end; Queen end,
             begin struct King end; King end,
             begin struct Ace end; Ace end,
             begin struct Num num::Integer end; Num end}

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
