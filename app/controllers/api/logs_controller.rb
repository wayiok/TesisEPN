module Api
  class LogsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def create
      if log_params[:query_id]
        log = Log.create(log_params.except(:query))
      else
        query = Query.create(log_params[:query])
        log = Log.create(log_params.except(:query, :query_id).merge(query_id: query.id))
      end

      if log_params[:query_id]
        if log.valid?
          render json: { log: log }
        else
          render json: log.errors.full_messages, status: :unprocessable_entity
        end
      else
        if query.valid? && log.valid?
          render json: { log: log, query: query }
        else
          render json: log.errors.full_messages << query.errors.full_messages, status: :unprocessable_entity
        end
      end
    end

    private

    def log_params
      params.permit(:query_id, :nombre_base, :nombre_usuario, :ip_log, :time_stamp_inicio_sesion, :time_stamp_log, :ataque, :tipo_ataque, query: [:nombre_query, :comando, :duracion])
    end
  end
end
