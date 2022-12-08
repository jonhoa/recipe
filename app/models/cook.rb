class Cook < ApplicationRecord
  def seperate_instructions
    instructions.split(",")
  end
end
