def rollDiceCommand(command)
    debug("rollDiceCommand Begin")

    m = /^KD(\d+)>=(\d+)$/.match(command)
    unless m
      return ''
    end

    debug("command", command)

    diceCount = m[1].to_i
    target = m[2].to_i

    total, diceText, _ = roll(diceCount, 6)
    result = (total >= target ? "成功" : "失敗")

    debug("rollDiceCommand result")

    return "(#{command}) ＞ #{total}[#{diceText}] ＞ #{result}"
  end