defmodule MyString do
  def capitalize_words(title) do
    words = String.split(title)
    capitalized_words = Enum.map(words, &String.capitalize/1)
    Enum.join(capitalized_words, " ")
  end

  def pipe_capitalize_words(title) do
    title 
    |> String.split() 
    |> capitalize_all
    |> join_with_whitespace
  end

  def capitalize_all(words) do
    Enum.map(words, &String.capitalize/1)
  end

  def join_with_whitespace(words) do
    Enum.join(words, " ")
  end

end

# MyString.capitalize_words("title to be capitalized")
# "Title To Be Capitalized"