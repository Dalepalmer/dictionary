require('rspec')
require('term')

describe(Term) do
  before() do
    Term.clear()
  end

  describe(".clear") do
    it("clears the field between specs") do
      Term.new("Carrot", "Is Orange")
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

  # describe("#add") do
  #   it("adds an object to the array") do
  #     new_word = Term.new("Carrot", "Is Orange")
  #     new_word.add("Ingredient to my favorite cake")
  #     expect(Term.all()).to(eq("Carrot", "Is Orange", "Ingredient to my favorite cake"))
  #   end
  # end

  describe("#save") do
    it("saves a term") do
      new_word = Term.new("Carrot", "Is Orange")
      new_word.save()
      expect(Term.all()).to(eq([new_word]))
    end
  end
end
