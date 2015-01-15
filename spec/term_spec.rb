require('rspec')
require('term')

describe(Term) do
  before() do
    Term.clear()
  end

  describe(".clear") do
    it("clears the field between specs") do
      Term.new("Carrot", ["Is Orange"])
      Term.clear()
      expect(Term.all()).to(eq([]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Term.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves a term") do
      new_word = Term.new("Carrot", "Is Orange")
      new_word.save()
      expect(Term.all()).to(eq([new_word]))
    end
  end

  describe("#list") do
    it("returns the term value") do
      test_term = Term.new("Carrot", "Is Orange")
      test_term.save()
      expect(test_term.list()).to(eq("Carrot"))
    end
  end

  describe("#show") do
    it("returns the definition value") do
      test_definition = Term.new("Carrot", "Is Orange")
      test_definition.save()
      expect(test_definition.show()).to(eq("Is Orange"))
    end
  end

  describe("#save") do
    it("saves a term") do
      new_word = Term.new("Carrot", "Is Orange")
      new_word.save()
      expect(Term.all()).to(eq([new_word]))
    end
  end

  describe(".search") do
    it("allows the user to search for a word/definition") do
      new_word = Term.new("Carrot", "Is Orange")
      new_word_two = Term.new("Apple", "Is Red")
      new_word_two.save()
      new_word.save()
      expect(Term.search("Carrot")).to(eq(new_word))
      #expect(Term.search("Zanahoria")).to(eq(new_word))
    end
  end

  describe(".search") do
    it("allows multiple definitions to be searched for one word") do
      new_word = Term.new("Carrot", ["Is Orange", "Is good" ,"Are good in soup"])
      new_word.save()
      expect(Term.search("Carrot")).to(eq(new_word))
    end
  end

describe(".search") do
  it("allows multiple definitions to be searched for multiple languages") do
    new_word = Term.new(["Carrot", "zanahoria"], ["Is Orange", "Is good" ,"Are good in soup"])
    new_word.save()
    expect(Term.search("Carrot")).to(eq([new_word]))
    expect(Term.search("zanahoria")).to(eq([new_word]))

  end
end

  # describe("add_definitions") do
  #   it("allows the user to write multiple definitions for one word")
  #   added_definition = ("Carrot", ["Is Orange", "Is Tasty"])
  #   expect(Term.all("Carrot", ["Is Orange", "Is Tasty"])).to(eq())
  # end

end
