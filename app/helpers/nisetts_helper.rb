module NisettsHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'confirm'
            confirm_nisetts_path
        elsif action_name == 'edit'
            nisett_path
        end
    end
end
