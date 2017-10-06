require "ordinalize_full/integer"

module TemplateHelpers
  DESC_TRUNCATE_MAX = 80

  def ordinalize(number)
    number.ordinalize
  end

  def user_link(user)
    "[@#{user}](https://github.com/#{user})"
  end

  def beautify_desc(desc)
    desc = desc.gsub("\n", ", ")
  end
end
