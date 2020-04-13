def translate(words)
  words.split.map { |word| trans_word(word) }.join(" ")

end

def trans_word(word)
  if word.match(/^[aiueo]/)
    word + "ay"
  elsif word[1].match(/[aieo]/)
    word[1...word.length] + word[0] + "ay"
  else
    word[2...word.length] + word[0..1] + "ay"
  end
end
