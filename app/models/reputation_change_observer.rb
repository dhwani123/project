# reputation_change_observer.rb
class ReputationChangeObserver
  def update(changed_data)
    # description will be something like:
    #   granted 5 points
    #   granted just-registered badge
    #   removed autobiographer badge
    description = changed_data[:description]

    # If user is your meritable model, you can grab it like:
    if changed_data[:merit_object]
      sash_id = changed_data[:merit_object].sash_id
      cubestudent = Cubestudent.where(sash_id: sash_id).first
    end

    # To know where and when it happened:
    merit_action = Merit::Action.find changed_data[:merit_action_id]
    controller = merit_action.target_model
    action = merit_action.action_method
    w = merit_action.created_at

    # From here on, you can create a new Notification assuming that's an
    # ActiveRecord Model in your app, send an email, etc. For example:
    end
end