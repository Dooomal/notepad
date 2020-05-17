

class Link < Post
  def initialize
      super
      @url = ''

  end

  def read_from_console
    puts "Адресс ссылки"
    @url = STDIN.gets.chomp

    puts "Что за ссылка?"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Время создания #{@created_at.strftime("%Y_%m_%d  %H_%M_%S")} \n\r \n\r "
    return  [@url, @text, time_string]

  end

end