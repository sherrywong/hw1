class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
  player1 = m1
  player2 = m2
  player1_move = m1[1]
  player2_move = m2[1]
  winner = 'none'
  
  if player1_move == player2_move
    winner = player1
    return winner
  elsif player1_move == "R"
    if player2_move == "S"
      winner = player1
      return winner
    else
      winner = player2
      return winner
    end
  elsif player1_move == "S"
    if player2_move == "R"
      winner = player2
      return winner
    else 
      winner = player1
      return winner
    end
  else 
    if player2_move == "R"
      winner = player1
      return winner
    else
      winner = player2
      return winner
    end
  end
  winner
end

def rps_game_winner(game)
  # YOUR CODE HERE
    legal_moves = ["R", "P", "S"]
    player1 = game[0]
    player2 = game[1]
    raise WrongNumberOfPlayersError unless game.length == 2
    if !legal_moves.include?(player1[1]) or !legal_moves.include?(player2[1])
      raise NoSuchStrategyError
    else
      rps_result(player1, player2)
    end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  finalist1 = nil
  finalist2 = nil
  legal_moves = ["R", "P", "S"]
  if legal_moves.include?(tournament[0][1])
    return rps_game_winner(tournament)
  else
    finalist1 = rps_tournament_winner(tournament[0])
    finalist2 = rps_tournament_winner(tournament[1])        
  end
  rps_result(finalist1, finalist2)
end
