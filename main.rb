class Button
  def initialize(label, x, y, foreground_color, is_dark_mode)
    @label = label
    @x = x
    @y = y
    @foreground = is_dark_mode ? darken(foreground_color) : lighten(foreground_color)
    @secondary is_dark_mode ? '#111111' : '#E0E0E0'
  end

  def draw
    paint(@label, @x, @y, @foreground, @secondary)
  end

 private

  def darken(color)
    color - 10
  end
  
  def lighten(color)
    color + 10
  end
end

def draw_button(label_text, x, y, foreground_color, is_dark_mode)
  Button.new(label_text, x, y, foreground_color, is_dark_mode).draw
end