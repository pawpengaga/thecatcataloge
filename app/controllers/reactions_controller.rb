class ReactionsController < ApplicationController
  before_action :set_reaction, only: %i[ show edit update destroy ]

  def new_client_reaction
    @article = Article.find(params[:reaction][:article_id])
    client_id = client_signed_in? ? current_client.id : 2
    @reaction = @article.reactions.find_by(client_id: client_id)
  
    if @reaction&.kind == params[:reaction][:kind]
      @reaction.destroy
      redirect_to article_path(@article), notice: 'Reacción eliminada exitosamente.'
    else
      @reaction ||= @article.reactions.build(client_id: client_id)
      @reaction.kind = params[:reaction][:kind]
  
      if @reaction.save
        redirect_to article_path(@article), notice: 'Reacción agregada exitosamente.'
      else
        puts @reaction.errors.full_messages
        redirect_to article_path(@article), alert: 'Error al agregar la reacción.'
      end
    end
  end

  def reaction_params
    params.require(:reaction).permit(:client_id, :article_id, :kind)
  end
end