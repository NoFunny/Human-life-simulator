require_relative 'cause'

class Loop
  # @param [Object] human
  # @param [Object] checks
  def loop(human, actions, checks, boundaries)
    menu = Menu.new
    cause = Cause.new
    loop = 1
    while loop
      menu.draw_state(human)
      menu.draw_actions
      action = gets.chomp
      case action.to_s
      when '1'
        actions.go_to_work(human)
      when '2'
        actions.contemplate_nature(human)
      when '3'
        actions.drink_wine_and_watch_tv_series(human)
      when '4'
        actions.go_to_the_bar(human)
      when '5'
        actions.drink_with_marginalized_people(human)
      when '6'
        actions.sing_in_the_subway(human)
        human.money = human.money + 50 if human.mana > 40 && human.mana < 70
      when '7'
        actions.sleep(human)
      else
        print("Неизвестная команда, #{human.name} не всемогущий")
      end
      boundaries.check_boundaries(checks, human)
      loop = false unless checks.dead?(human)
    end
    menu.draw_state(human)
    cause.message(human)
  end
end
