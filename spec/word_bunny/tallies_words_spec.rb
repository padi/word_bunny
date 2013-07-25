require 'spec_helper'

describe WordBunny::TalliesWords do
  describe ".execute" do
    it "should return a hash of words and their tally count" do
      expect(described_class.execute("word tally")).
        to eq([["word", 1], ["tally", 1]])
      expect(described_class.execute("something else")).
        to eq([["something", 1],["else", 1]])
      expect(described_class.execute("word word word tally tally")).
        to eq([["word", 3],["tally", 2]])
    end

    it "should NOT be case sensitive" do
      expect(described_class.execute("Word TallY")).
        to eq([["word", 1],["tally", 1]])
    end

    it "should ignore punctuation marks" do
      expect(described_class.execute("Word TallY;")).
        to eq([["word", 1],["tally", 1]])
    end

    it "should detect words with hyphen" do
      expect(described_class.execute("one-word-with-hyphen;")).
        to eq([["one-word-with-hyphen", 1]])
    end

    it "should show result from highest tally to lowest" do
      expect(described_class.execute("word tally tally")).
        to eq([["tally", 2], ["word", 1]])
    end
  end
end

