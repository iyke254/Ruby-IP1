class String
  define_method(:count_word) do |sentences|
    clean_sentences = sentences.downcase().delete '.,!:;'
    sentences_array = clean_sentences.split(" ")
    word_to_count = self.downcase().delete(" ")
    count_output = Array.new()
      sentences_array.each() do |word|
        if word_to_count.eql?(word)
          count_output.push(1)
        else
          count_output.push(0)
        end
      end
    sum = count_output.reduce(:+)
  end
end
