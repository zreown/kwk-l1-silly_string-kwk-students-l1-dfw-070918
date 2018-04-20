
require 'spec_helper'

describe "silly_string" do

  describe "#my_string" do
    it "should print out a string with the world placate" do
      expect($stdout).to receive(:puts).with("placate")
      my_string
    end
  end

  describe "#capitalize_my_string" do
    it "should print out PLACATE" do
      expect($stdout).to receive(:puts).with("PLACATE")
      capitalize_my_string
    end
  end

  describe "#downcase_my_string" do
    it "should print out placate in lowercase letters" do
      expect($stdout).to receive(:puts).with("placate")
      downcase_my_string
    end
  end

  describe "#count_letters" do
    it "should print out 7" do
      expect($stdout).to receive(:puts).with(7)
      count_letters
    end
  end

  describe "#concatonate_strings" do
    it "should print out 'to placate means to make someone less angry.'" do
      expect($stdout).to receive(:puts).with("to placate means to make someone less angry.")
      concatonate_strings
    end
  end

  describe "#capitalize_first_letter" do
    it "should print out 'To placate means to make someone less angry.'" do
      expect($stdout).to receive(:puts).with("To placate means to make someone less angry.")
      capitalize_first_letter
    end
  end

  describe "#split_my_string" do
    it "should print out every word as an individual string" do
      expect($stdout).to receive(:puts).with(["to", "placate", "means", "to", "make", "someone", "less", "angry."])
      split_my_string
    end
  end

end
