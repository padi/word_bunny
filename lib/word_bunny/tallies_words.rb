module WordBunny
  class TalliesWords
    def self.execute text
      words = extract_words_from text
      word_histogram = words.uniq.map { |word| [word, 0] }
      words.each_with_object(word_histogram) do |word, results|
        results.each_with_index.map do |word_count_pair, index|
          results[index][1] += 1 if word_count_pair.first == word
        end
      end.sort {|a, b| b.last <=> a.last}
    end

    private

    def self.extract_words_from text
      text.downcase.gsub(/[^a-z\s%-]/,'').split
    end
  end
end
