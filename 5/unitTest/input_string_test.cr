require "spec"
require "./../5/input_string"

describe "InputString" do
  describe "#is_nice?" do
    it "returns true if it has 3 min vowels, at least one char repeats and has not a blacklisted string" do
      InputString.new("ugknbfddgicrmopn").is_nice?.should be_true
      InputString.new("aaa").is_nice?.should be_true
    end

    it "returns false if it has less than 3 min vowels, no char repeats or is in blacklisted string" do
      InputString.new("jchzalrnumimnmhp").is_nice?.should be_false
      InputString.new("haegwjzuvuyypxyu").is_nice?.should be_false
      InputString.new("dvszwmarrgswjxmb").is_nice?.should be_false
    end
  end
end
