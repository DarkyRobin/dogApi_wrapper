module DogApi
  class Requests
    def list_breed
      request('/breeds', :get)
    end
  end
end