module DiceGame

export play_dice

Die = Vector{Int}



function play_dice(a::Die, b::Die)
    a_wins = 0
    b_wins = 0

    for x ∈ a
        for y ∈ b
            if x > y
                a_wins += 1
            elseif x < y
                b_wins += 1
            end
        end
    end

    total = a_wins + b_wins
    return a_wins // total
end

function play_dice(a::Die, b::Die, c::Die)
    a_wins = 0
    b_wins = 0
    c_wins = 0

    for x ∈ a
        for y ∈ b
            for z ∈ c 
                if x > max(y,z)
                    a_wins += 1 
                elseif y > max(x,z)
                    b_wins += 1 
                elseif z > max(x,y)
                    c_wins += 1
                end
            end
        end
    end

    total = a_wins + b_wins + c_wins
    return (a_wins, b_wins, c_wins) .// total

end

end # module
