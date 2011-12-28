module ApplicationHelper

    def modules
        return @@modules if !(@@modules ||= {}).empty?

        Rails::Application::Railties.engines.each {
            |engine|
            mod = const_get( engine.class.to_s.split( "::" ).first )
            next if !mod.respond_to?( :keystone? )
            @@modules[mod] = engine
        }
        @@modules
    end

    def title
        if controller.action_name == "index"
            "All #{controller.controller_name.titleize}"
        else
            "#{controller.action_name.titleize} #{controller.controller_name.titleize.singularize}"
        end
    end

    def create_or_update_string
        if controller.action_name == "new"
            "Create"
        else
            "Update"
        end
    end

    extend self
end
