def rollDiceCommand(command)
    debug("rollDiceCommand Begin")

    m = /^sw_race_(\d+)$/.match(command)
    unless m
      return ''
    end

    debug("command", command)

    race = m[1].to_i

    case race
    when "0" then
        num = 0
        race_result = "種族：人間 \n"
        while num < 3 do
            dex, _, _ = roll(2, 6)
            agi, _, _ = roll(2, 6)
            str, _, _ = roll(2, 6)
            lif, _, _ = roll(2, 6)
            int, _, _ = roll(2, 6)
            min, _, _ = roll(2, 6)
            result += "器用：" + dex + "　敏捷：" + agi + "　筋力：" + str + "　生命：" + lif + "　知力：" + int + "　精神：" + min + '\n'
        end

    debug("rollDiceCommand result")

    return "#{race_result}"
  end