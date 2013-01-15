class Hooks < Redmine::Hook::ViewListener
	def controller_issues_new_before_save(context)
		assign_group(context)
	end

	def controller_issues_edit_before_save(context)
		assign_group(context)
	end

	def assign_group(context)
		if context[:params][:issue]
			if context[:params][:issue][:assigned_to_id].blank?
				groupName = "Helpdesk"
				#add logic here to determine groups dynamically
				targetGroup = Group.find_by_lastname(groupName)
				#it's recommended to default to a general group that is sure to exist to prevent the application from crashing if the target group cannot be found
				#if(targetGroup.nil?)
				#	targetGroup = Group.find_by_lastname("Helpdesk")
				#end
				
				context[:issue].assigned_to_id = targetGroup.id
			end
		end
	end
end