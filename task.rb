require 'date'

class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp
    puts "К какому времени нужно сделать? Введите в формате ДД.ММ,ГГГГ, например 02.05.2021"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)


  end

  def to_strings
    time_string = "Время создания #{@created_at.strftime("%Y.%m.%d  %H_%M_%S")} \n\r \n\r "
    deadline = "Крайний срок #{@due_date}"
    return [deadline, @text, time_string]

  end
end