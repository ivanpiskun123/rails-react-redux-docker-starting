class Api::V1::DocumentsController < ApplicationController

    def index
        if(params[:user_id])
            d = Document.where(user_id: params[:user_id].to_i)
            render json:
              {
               data:  DocumentSerializer.new(d).serializable_hash
              }, status: :ok
          else
            render json:
              {
               data:  DocumentSerializer.new(Document.order('created_at DESC')).serializable_hash
              }, status: :ok
          end
    end

    def create
        d = Document.create(params[:document])
        if d.id?
            render json: {
                status: {code: 200, message: 'Document created sucessfully.'}
            }, status: :ok
        else
            render json: {
                status: {code: 500, message: 'Can\'t create Document.'}
              }, status: 500
        end
    end


    def update
        if Document.find(params[:document][:id]).update(params[:document])
            render json: {
                status: {code: 200, message: 'Document updated sucessfully.'}
            }, status: :ok
        else 
            render json: {
                status: {code: 500, message: 'Can\'t update Document.'}
              }, status: 500
        end
    end

    def destroy
        Document.find(params[:document][:id]).destroy
        render json: {
                status: {code: 200, message: 'Document deleted sucessfully.'}
            }, status: :ok
    end
end
