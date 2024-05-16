# War Card Game in Elixir

**Welcome to the War Card Game implemented in Elixir! This repository contains the code for the classic card game "War" using the Elixir programming language. The project features a functional approach to game logic, including card dealing, round execution, and determining the winner.**

![giphy](https://github.com/e-basi/War-Game/assets/93174387/4409eaa4-8db6-46ff-ad55-934688e59a8d)


# Features
**Card Dealing:** The deal/1 function shuffles and deals cards to two players, ensuring an even distribution.
**Round Execution:** The roundExecution/3 function handles the core game logic, determining the outcome of each round.
**Card Comparison:** The card_Comparison/5 function compares the top cards of each player to decide the winner of the round.
**Game Strategy:** The gameStrategy/3 function manages the game state when players draw cards of equal rank.
**Customizable Game Logic:** Easily modify and extend the game logic with additional helper functions.
## Installation

**Prerequisites**

Elixir installed on your machine.
Mix, the build tool that ships with Elixir. 

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `war` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:war, "~> 0.1.0"}
  ]
end
```

