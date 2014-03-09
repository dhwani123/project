class ReputationChangeObserver
def update(changed_data)
description = changed_data[:description]

if changed_data[:merit_object]
sash_id = changed_data[:merit_object].sash_id
cubestudent = Cubestudent.where(sash_id: sash_id).first
end

merit_action = Merit::Action.find changed_data[:merit_action_id]
controller = merit_action.target_model
action = merit_action.action_method
when = merit_action.created_at

Notification.create(
cubestudent: cubestudent,
what: description,
where: "#{posts}##{create}",
when: when)
end 
end