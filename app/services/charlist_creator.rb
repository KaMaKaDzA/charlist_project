class CharlistCreator < ApplicationService
  def initialize(params, user_id)
    @name = params['name']
    @user_id = user_id
  end

  def call
    # TODO more logic for multiple systems and all fields should be involved here
    list = Dnd5eFieldsList.create(name: @name)
    charlist = Charlist.create(user_id: @user_id, system_list: list)
    charlist_data = {
      charlist_id: charlist.id,
      name: @name
    }
    { success: list.present? && charlist.present?, charlist_data: charlist_data.to_json }
  end
end
