module WordBunny
  class TalliesWords
    def self.execute text
      results = []
      text = cleanup text

      text.split.each do |word|
        index = results.find_index {
          |word_count_pair| word_count_pair.first == word
        }

        unless index
          results << [word, 1]
        else
          results[index][1] += 1
        end
      end

      results.sort {|a, b| b.last <=> a.last}
    end

    private

    def self.cleanup text
      text.downcase.gsub(/[^a-z\s%-]/,'')
    end
  end
end
