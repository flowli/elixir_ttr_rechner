defmodule TtrRechner do
  @moduledoc """
  Documentation for TTR-Rechner.
  """

  @doc """
  Berechnet deinen neuen TTR-Wert nach einem Spiel.
  """
  def new_ttr_score(ttr_score, opponent_ttr_score, won, change_constant = 16) do
    new_ttr_score_if_won = ttr_score + (
      1 - (1 / (1 + :math.pow(10, (opponent_ttr_score - ttr_score) / 150)))) * change_constant
    if won do
      round(new_ttr_score_if_won)
    else
      round(new_ttr_score_if_won - change_constant)
    end
  end
end
