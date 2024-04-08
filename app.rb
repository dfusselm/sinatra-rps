require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:root)
end

get("/rock") do
  @player_move = "rock"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample  

if @comp_move == "rock"
  @outcome = "tied"
elsif @comp_move == "paper"
  @outcome = "lost"
elsif @comp_move == "scissors"
  @outcome = "won"
end

  erb(:rps)

end

get("/paper") do
  @player_move = "paper"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample  

if @comp_move == "rock"
  @outcome = "won"
elsif @comp_move == "paper"
  @outcome = "tied"
elsif @comp_move == "scissors"
  @outcome = "lost"
end

  erb(:rps)

end

get("/scissors") do
  @player_move = "scissors"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample  

if @comp_move == "rock"
  @outcome = "lost"
elsif @comp_move == "paper"
  @outcome = "won"
elsif @comp_move == "scissors"
  @outcome = "tied"
end

  erb(:rps)

end
