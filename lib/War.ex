defmodule War do
  @moduledoc """
    Documentation for `War`.
  """

  @doc """
    Function stub for deal/1 is given below. Feel free to add
    as many additional helper functions as you want.

    The tests for the deal function can be found in test/war_test.exs.
    You can add your five test cases to this file.

    Run the tester by executing 'mix test' from the war directory
    (the one containing mix.exs)
  """




  def deal(card) do
      playerPile = card

      |> Enum.map(fn x ->
        case x do
          x when x != 1 -> x
          _ -> 14
        end
      end)

      |> Stream.with_index

      |> Enum.reduce([[], []], fn ({x, i}, [player1pile, player2pile]) ->
        if rem(i, 2) !== 0 do

          [player1pile, player2pile ++ [x]]
        else
           [player1pile ++ [x], player2pile]
        end
      end)


      [player1pile | [player2pile]] = playerPile
      player1pile = Enum.reverse(player1pile)
      player2pile = Enum.reverse(player2pile)


      Enum.map(roundExecution(player1pile, player2pile, []), fn x ->
        case x do
         x when x != 14 -> x
         _ -> 1
        end
      end)
    end

    def roundExecution(player1pile, player2pile, playerGamepile) do
      case {length(player1pile), length(player2pile)} do
        {0, 0} ->
          if length(playerGamepile) > 0 do

            Enum.sort_by(playerGamepile, &(-&1))
          else

            :draw
          end

        {0, _} -> player2pile
        {_, 0} -> player1pile

        {_, _} ->

          firstCard = hd(player1pile)
          secondCard = hd(player2pile)


          player1pile = tl(player1pile)
          player2pile = tl(player2pile)


          playerGamepile = playerGamepile ++ [firstCard, secondCard]

          card_Comparsion(firstCard, secondCard, player1pile, player2pile, playerGamepile)
      end
    end


    def card_Comparsion(firstCard, secondCard, player1pile, player2pile, playerGamepile) do
      gamePileSorted = Enum.sort_by(playerGamepile, &(-&1))

      case {firstCard, secondCard} do
        {a, b} when a > b -> roundExecution(player1pile ++ gamePileSorted, player2pile, [])
        {a, b} when a < b -> roundExecution(player1pile, player2pile ++ gamePileSorted, [])
        _ -> gameStrategy(player1pile, player2pile, gamePileSorted)
      end
    end



    def gameStrategy(player1pile, player2pile, playerGamepile) do
      case {length(player1pile), length(player2pile)} do
        {0, 0} -> Enum.sort_by(playerGamepile, &(-&1))
        {0, _} -> roundExecution(player1pile, player2pile ++ playerGamepile, [])
        {_, 0} -> roundExecution(player1pile ++ playerGamepile, player2pile, [])
        {_, _} ->
          firstCard = hd(player1pile)
          secondCard = hd(player2pile)
          player1pile = tl(player1pile)
          player2pile = tl(player2pile)
          playerGamepile = playerGamepile ++ [firstCard, secondCard]
          roundExecution(player1pile, player2pile, playerGamepile)
      end
    end

end
