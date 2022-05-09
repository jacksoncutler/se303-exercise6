class Button

  def initialize(label, x, y, foreground_color, is_dark_mode)
    @label = label
    @x = x
    @y = y
    @foreground = is_dark_mode ? darken_foreground(foreground_color) : lighten_foreground(foreground_color)
    @secondary is_dark_mode ? '#111111' : '#E0E0E0'
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
  if is_dark_mode
    paint(label_text, x, y, darken_foreground(foreground_color), '#111111')
  else
    paint(label_text, x, y, lighten_foreground(foreground_color), '#E0E0E0')
  end
end

def darken_foreground(color)
  color - 10
end

def lighten_foreground(color)
  color + 10
end