class ArticulosController < ApplicationController
  def new
    @boton = "Crear"
    #@articulo= Articulo.new
    @articulo= current_autor.articulos.build
  end

  def index
  end

  def create
      #@articluo= Articulo.new(articulo_params)
      @articluo= current_autor.articulos.build(articulo_params)
      if @articulo.save
        redirect_to @articulo
      else
        render 'new'
      end

  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def articulo_params
    params.require(:articulo).permit(:titulo, :contenido)
  end
end
