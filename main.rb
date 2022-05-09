class Button

  def initialize(label, x, y, foreground_color, is_dark_mode)
    @label = label
    @x = x
    @y = y
    @foreground = is_dark_mode ? darken_foreground(foreground_color) : lighten_foreground(foreground_color)
    @secondary is_dark_mode ? '#111111' : '#E0E0E0'
  end

  def draw
    paint(@label, @x, @y, @foreground, @secondary)
  end

 private

  def darken_foreground(color)
    color - 10
  end
  
  def lighten_foreground(color)
    color + 10
  end
  
end

def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  button = Button.new(label_text, x, y, foreground_color, is_dark_mode)
  button.draw
end

def darken_foreground(color)
  color - 10
end

def lighten_foreground(color)
  color + 10
end