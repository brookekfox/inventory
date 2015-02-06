class GraphicNovelsController < ApplicationController
	def index
		@graphic_novels = GraphicNovel.all
	end

	def new
		@graphic_novel = GraphicNovel.new
	end

	def create
		@graphic_novel = GraphicNovel.create(params.require(:graphic_novel).permit(:title, :number, :publisher, :loaned_out))
		if @graphic_novel.save
			redirect_to graphic_novels_path
		else
			render 'new'
		end
	end

	def edit
		@graphic_novel = GraphicNovel.find(params[:id])
	end

	def update
		@graphic_novel = GraphicNovel.find(params[:id])
		if @graphic_novel = GraphicNovel.update_attributes(params.require(:graphic_novel).permit(:title, :number, :publisher, :loaned_out))
			redirect_to graphic_novels_path
		else
			render 'edit'
		end
	end

	def show
		@graphic_novel = GraphicNovel.find(params[:id])
	end

	def destroy
		@graphic_novel = GraphicNovel.find(params[:id])
		@graphic_novel.destroy
		redirect_to graphic_novels_path
	end
end
