module ArticlesHelper
    def show_client_articles
        params[:client_id].present?
    end
end
