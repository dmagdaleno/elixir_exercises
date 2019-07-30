defmodule PointCounter do
  def count(abilities) do
    %{strength: strength_value} = abilities
    %{dexterity: dexterity_value} = abilities
    %{intelligence: intelligence_value} = abilities
    strength_value*2 + dexterity_value*3 + intelligence_value*3
  end
end