require('rspec')
require('title_case')
require("capybara/rspec")

describe('#title_case') do
  it("capitalizes the first letter of a word") do
    expect(title_case("beowulf")).to(eq("Beowulf"))
  end
  it("capitalize the first letter of two words") do
    expect(title_case("the end")).to(eq("The End"))
  end
  it("capitalize the first letter of a full sentence") do
    expect(title_case("all of these words will be capitalized")).to(eq("All Of These Words Will Be Capitalized"))
  end

end