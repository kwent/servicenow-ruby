module ServiceNow
  class Client::Tables < Api
    def initialize(connection, table_name)
      super(connection)
      @table_name = table_name
    end

    def all(params = {})
      get_many "table/#{@table_name}", params
    end

    def find(sys_id)
      get_one "table/#{@table_name}/#{sys_id}"
    end

    def create(params = {})
      post "table/#{@table_name}", params
    end

    def update(sys_id, params = {})
      patch "table/#{@table_name}/#{sys_id}", params
    end
  end
end