module WordBunny
  class TalliesWords
    def self.execute text
      words = extract_words_from text
      words.each_with_object(Hash.new(0)) do |word, results|
        results[word] += 1
      end.to_a.sort {|a, b| b.last <=> a.last}
    end

    private

    def self.extract_words_from text
      text.downcase.gsub(/[^a-z\s%-]/,'').split
    end
  end
end
