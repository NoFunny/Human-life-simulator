require_relative 'io'

class Loop
  def loop(menu, human, checks)
    while checks.alive?
      menu.draw(human)

      case gets.chomp
      when '1' then human.go_to_work
      when '2' then human.contemplate_nature
      when '3' then human.drink_wine_and_watch_tv_series
      when '4' then human.go_to_the_bar
      when '5' then human.drink_with_marginalized_people
      when '6' then human.sing_in_the_subway
      when '7' then human.sleep
      when '8' then save_progress(human)
      when '9' then human = load_progress(checks)
      else puts("Неизвестная команда, #{human.name} не всемогущий")
      end

      checks.checks
    end
  end
end
