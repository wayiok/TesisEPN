module Api
  class QueriesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      query = Query.create(query_params)

      if query.valid?
        render json: { query: query }
      else
        render json: query.errors.full_messages, status: :unprocessable_entity
      end
    end

    private

    def query_params
      params.permit(:nombre_query, :comando, :duracion)
    end
  end
end
