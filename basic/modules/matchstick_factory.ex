defmodule MatchstickFactory do
  @big_box 50
  @medium_box 20
  @small_box 5

  def boxes(matchstick_amount) do
    big = div(matchstick_amount, @big_box)
    big_rem = rem(matchstick_amount, @big_box)

    medium = div(big_rem, @medium_box)
    medium_rem = rem(big_rem, @medium_box)

    small = div(medium_rem, @small_box)
    small_rem = rem(medium_rem, @small_box)

    %{"big" => big, "medium" => medium, "small" => small, "remaining_matchsticks" => small_rem}
  end
end