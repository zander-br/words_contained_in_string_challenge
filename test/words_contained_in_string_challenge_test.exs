defmodule WordsContainedInStringChallengeTest do
  use ExUnit.Case

  describe "words_contained_in_string/2" do
    test "should return only the words that are contained in the string" do
      input = "vmoqmqpdasofgdjapoqnpcoqwmdeiqwdhnfph"
      words = ["casa", "banana"]

      words_contained = WordsContainedInStringChallenge.words_contained_in_string(input, words)

      assert words_contained == ["casa"]
    end
  end
end
