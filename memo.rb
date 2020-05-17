# frozen_string_literal: true

class Memo < Post
  def read_from_console
    @text = []

    puts 'Вводите информацию, как закончите, наберите (end)'
    line = nil

    while line != 'end'
      line = STDIN.gets.chomp
      @text << line

    end

    @text.pop
  end

  def to_strings
    time_string = "Время создания #{@created_at.strftime('%Y.%m.%d  %H:%M:%S')} \n\r \n\r "
    @text.unshift(time_string)
end
end
