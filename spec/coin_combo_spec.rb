require('rspec')
require('coin_combo')

describe('Fixnum#coin_combo') do
  it('divides change into quarters') do
  expect(25.coin_combo()).to(eq("You will need 1 quarter(s), 0 dime(s), 0 nickel(s), 0 penn(y/ies)."))
  end

  it('divides change into dimes') do
    expect(10.coin_combo()).to(eq("You will need 0 quarter(s), 1 dime(s), 0 nickel(s), 0 penn(y/ies)."))
  end

  it('divides change into nickels') do
    expect(5.coin_combo()).to(eq("You will need 0 quarter(s), 0 dime(s), 1 nickel(s), 0 penn(y/ies)."))
  end

  it('divides change into pennies') do
    expect(1.coin_combo()).to(eq("You will need 0 quarter(s), 0 dime(s), 0 nickel(s), 1 penn(y/ies)."))
  end
end
