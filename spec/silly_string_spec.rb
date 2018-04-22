require 'spec_helper'

describe "Silly Strings" do

  it "contains your favorite word" do
    your_favorite_word = get_variable_from_file('./silly_string.rb', 'your_favorite_word')
    
    expect(your_favorite_word).to be_a(String)
    expect(your_favorite_word).to_not be_empty, "Did you put a String inside your_favorite_word?"
  end
  

  
  it 'capitalizes your_favorite_word' do
    your_favorite_word = get_variable_from_file('./silly_string.rb', 'your_favorite_word')
    favorite_word_in_all_caps = get_variable_from_file('./silly_string.rb', 'favorite_word_in_all_caps')

    expect(favorite_word_in_all_caps).to eq(your_favorite_word.upcase), "Did you upcase your_favorite_word?"
  end


  it 'lowercases all the letters in phrase' do
    lowercased_phrase = get_variable_from_file('./silly_string.rb', 'lowercased_phrase')

    expect(lowercased_phrase).to eq("IM NOT SHOUTING".downcase), "Did you downcase phrase?"
  end

  it 'counts how many letters are in big_word' do
    letter_count = get_variable_from_file('./silly_string.rb', 'letter_count')

    expect(letter_count).to eq("supercalifragilisticexpialidocious".length), "Did you size big_word?"
  end

  it 'counts how many letters are in big_word' do
    bigger_word = get_variable_from_file('./silly_string.rb', 'bigger_word')
    new_letter_count = get_variable_from_file('./silly_string.rb', 'new_letter_count')

    expect(bigger_word).to eq("supercalifragilisticexpialidociouswowmom"), "Did you add wow and mom to big_word?"
    expect(new_letter_count).to eq("supercalifragilisticexpialidociouswowmom".length), "Did you size bigger_word?"
  end

  it 'Properly capitalizes the first letter in proper_sentence' do
    proper_sentence = get_variable_from_file('./silly_string.rb', 'proper_sentence')

    expect(proper_sentence).to eq("i really like programming.".capitalize), "Did you capitalize proper_sentence?"
  end

  it 'substitutes all "A" for "O" and "a" for "o" in sentence' do
    sentence = get_variable_from_file('./silly_string.rb', 'sentence')

    expect(sentence).to eq(sentence.gsub("A", "O").gsub("a", "o")), "Did you gsub 'A' for 'O' and 'a' for 'o'?"
  end
end
