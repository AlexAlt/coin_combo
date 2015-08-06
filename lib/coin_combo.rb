class Fixnum
  define_method(:coin_combo) do

    remainder_25 = self % 25
    message = []


    if remainder_25 > 0
      remainder_10 = remainder_25 % 10
      number_of_quarters = (self - remainder_25) / 25
      if remainder_10 > 0
        remainder_5 = remainder_10 % 5
        number_of_dimes = (remainder_25 - remainder_10) / 10
        if remainder_5 > 0
          remainder_1 = remainder_5
          number_of_nickels = (remainder_10 - remainder_5) / 5
          number_of_pennies = remainder_1
        elsif remainder_5 == 0
          number_of_nickels = (remainder_10 - remainder_5) / 5
          number_of_pennies = 0
        end
      elsif remainder_10 == 0
        number_of_dimes = (remainder_25 - remainder_10) / 10
        number_of_nickels = 0
        number_of_pennies = 0
      end
    elsif remainder_25 == 0
      number_of_quarters = (self - remainder_25) / 25
      number_of_dimes = 0
      number_of_nickels = 0
      number_of_pennies = 0
    end

    message.push("You will need")
    q_string = number_of_quarters.to_s
    message.push(q_string)
    message.push("quarter(s),")
    d_string = number_of_dimes.to_s
    message.push(d_string)
    message.push("dime(s),")
    n_string = number_of_nickels.to_s
    message.push(n_string)
    message.push("nickel(s),")
    p_string = number_of_pennies.to_s
    message.push(p_string)
    message.push("penn(y/ies).")

    message_string = message.join(" ")

    return message_string

  end
end
