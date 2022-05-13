defmodule WordsContainedInStringChallenge do
  def words_contained_in_string(input, words) do
    input_list = String.codepoints(input)

    Enum.filter(words, &is_contained?(&1, input_list))
  end

  defp is_contained?(word, input_list) do
    word
    |> String.codepoints()
    |> Enum.reduce(%{}, &create_dictionary/2)
    |> Enum.map(fn item -> has_characters?(item, input_list) end)
    |> Enum.all?()
  end

  defp create_dictionary(letter, dictionary),
    do: Map.put(dictionary, letter, Map.get(dictionary, letter, 0) + 1)

  defp has_characters?({letter, amount}, input_list) do
    input_list
    |> Enum.filter(&(&1 == letter))
    |> Enum.count()
    |> has_number_of_characteres?(amount)
  end

  defp has_number_of_characteres?(existing_amount, necessary_amount),
    do: existing_amount >= necessary_amount
end
