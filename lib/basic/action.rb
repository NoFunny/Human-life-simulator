require_relative '../io/io_adapter'

class Action
  attr_accessor :func, :label

  def initialize(func = '', label = '')
    @func = func
    @label = label
  end

  def actions_list
    [
      Action.new('go_to_work', 'Пойти на работу'),
      Action.new('contemplate_nature', 'Созерцать природу'),
      Action.new('drink_wine_and_watch_series', 'Пить вино и смотреть сериалы'),
      Action.new('go_to_bar', 'Сходить в бар'),
      Action.new('drink_with_marginalized_people', 'Выпить с маргиналами'),
      Action.new('sing_in_subway', 'Петь в метро'),
      Action.new('sleep', 'Спать'),
      Action.new('save_progress', 'Сохранить прогресс'),
      Action.new('load_progress', 'Загрузить прогресс')
    ]
  end

  def get_available_actions(human)
    actions = actions_list
    actions.each_with_index do |action, index|
      actions.delete_at(index) unless action.send action.func, human, true
    end
  end

  def go_to_work(human, flag = nil)
    return human.mana < 50 && human.tired < 10 if flag

    human.happiness -= 5
    human.mana -= 30
    human.money += 100
    human.tired += 70
  end

  def contemplate_nature(human, flag = nil)
    return flag if flag

    human.happiness += 1
    human.mana -= 10
    human.tired += 10
  end

  def drink_wine_and_watch_series(human, flag = nil)
    return flag if flag

    human.happiness -= 1
    human.mana += 30
    human.tired += 10
    human.health -= 5
    human.money -= 20
  end

  def go_to_bar(human, flag = nil)
    return flag if flag

    human.happiness += 1
    human.mana += 60
    human.tired += 40
    human.health -= 10
    human.money -= 100
  end

  def drink_with_marginalized_people(human, flag = nil)
    return flag if flag

    human.happiness += 5
    human.health -= 80
    human.mana += 90
    human.tired += 80
    human.money -= 150
  end

  def sing_in_subway(human, flag = nil)
    return flag if flag

    human.happiness += 1
    human.mana += 10
    human.money += human.mana > 40 && human.mana < 70 ? 60 : 10
    human.tired += 20
  end

  def sleep(human, flag = nil)
    return flag if flag

    human.health += 90 if human.mana < 30
    human.happiness -= 3 if human.mana > 70
    human.mana -= 50
    human.tired -= 70
  end

  def save_progress(human, flag = nil)
    return flag if flag

    IOAdapter.new.save_progress(human)
  end

  def load_progress(human, flag = nil)
    return flag if flag

    IOAdapter.new.load_progress(human)
  end
end
