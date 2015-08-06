class Fixnum
  define_method(:coin_combo) do

    quarter_value = 25
    dime_value = 10
    nickel_value = 5
    penny_value = 1

    quarter_number = 0
    dime_number = 0
    nickel_number = 0
    penny_number = 0

    change_value_quarter = self - quarter_value
    message = []

    until change_value_quarter < 0
      quarter_number = quarter_number.+(1)
      change_value_quarter = change_value_quarter.-(quarter_value)
    end

    change_value_dime = self - (quarter_number * quarter_value) - dime_value

    until change_value_dime < 0
      dime_number = dime_number.+(1)
      change_value_dime = change_value_dime.-(dime_value)
    end

    change_value_nickel = self - (quarter_number * quarter_value) - (dime_value * dime_value) - nickel_value

    until change_value_nickel < 0
      nickel_number = nickel_number.+(1)
      change_value_nickel = change_value_nickel.-(nickel_value)
    end

    change_value_penny = self - (quarter_number * quarter_value) - (dime_value * dime_value) - (nickel_value * nickel_number) - penny_value

    until change_value_penny < 0
      penny_number = penny_number.+(1)
      change_value_penny = change_value_penny.-(penny_value)
    end

    message.push("You will need")
    q_string = quarter_number.to_s
    message.push(q_string)
    message.push("quarter(s),")
    d_string = dime_number.to_s
    message.push(d_string)
    message.push("dime(s),")
    n_string = nickel_number.to_s
    message.push(n_string)
    message.push("nickel(s),")
    p_string = penny_number.to_s
    message.push(p_string)
    message.push("penn(y/ies).")

    message_string = message.join(" ")

    return message_string

  end
end
