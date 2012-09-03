class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
  player1_move = m1[1]
  player2_move = m2[1]
  winner = 'none'
  
  if player1_move == player2_move
    winner = player1
    return winner
  else-if player1_move == "R"
    if player2_move == "S"
      winner = player1
    else
      winner = player2
  else-if player1_move == "S"
    if player2_move == "R"
      winner = player2
    else 
      winner = player1
  else-if player1_move = "P"
    if player2_move == "R"
      winner = player1
    else
      winner = player2
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
end
