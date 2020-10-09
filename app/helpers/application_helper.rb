module ApplicationHelper
    def flash_type_to_class flash_type
        case flash_type.to_sym
        when :notice then "alert alert-info"
        when :error then "alert alert-danger"
        when :success then "alert alert-success"
        end
    end
end