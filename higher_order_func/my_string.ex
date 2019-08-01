defmodule MyString do
  def capitalize_words(title) do
    words = String.split(title)
    capitalized_words = Enum.map(words, &String.capitalize/1)
    Enum.join(capitalized_words, " ")
  end

  def pipe_capitalize_words(title) do
    title 
     |> String.split() 
     |> Enum.map(&String.capitalize/1) 
     |> Enum.join(" ")
  end
end

# MyString.capitalize_words("title to be capitalized")
# "Title To Be Capitalized"