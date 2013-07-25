module WordBunny
  class TalliesWords
    def self.execute text
      results = []
      text = cleanup text

      text.split.each do |word|
        index = results.find_index {|e| e[word]}
        unless index
          results << {word => 1}
        else
          results[index][word] += 1
        end
      end

      results.sort {|a, b| b.values.first <=> a.values.first}
    end

    private

    def self.cleanup text
      text.downcase.gsub(/[^a-z\s%-]/,'')
    end
  end
end
