module ApplicationHelper
    def toggle_order(attribute)
        if session[:sort] == attribute
            session[:order] == "asc" ? "desc" : "asc"
        else
            "asc"
        end
    end

    def sort_symbol(attribute)
        if session[:sort] == attribute
            session[:order] == "asc" ? "↑" : "↓"
        else
            ""
        end
    end

    def sort_highlight(attribute)
        if session[:sort] == attribute
            session[:order] == "asc" ? "sort-asc" : "sort-desc"
        else
            ""
        end
    end
end
