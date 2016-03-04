module SplAPI
  module ResourceBasedMethods
    def gachi(params = nil, headers = nil)
      get('gachi', params, headers)
    end

    def gachi_now(params = nil, headers = nil)
      get('gachi/now', params, headers)
    end

    def gachi_next(params = nil, headers = nil)
      get('gachi/next', params, headers)
    end

    def gachi_next_all(params = nil, headers = nil)
      get('gachi/next_all', params, headers)
    end

    def gachi_rules(params = nil, headers = nil)
      get('gachi/rules', params, headers)
    end

    def regular(params = nil, headers = nil)
      get('regular', params, headers)
    end

    def regular_now(params = nil, headers = nil)
      get('regular/now', params, headers)
    end

    def regular_next(params = nil, headers = nil)
      get('regular/next', params, headers)
    end

    def regular_next_all(params = nil, headers = nil)
      get('regular/next_all', params, headers)
    end

    def fes(params = nil, headers = nil)
      get('fes', params, headers)
    end

    def fes_now(params = nil, headers = nil)
      get('fes/now', params, headers)
    end

    def fes_next(params = nil, headers = nil)
      get('fes/next', params, headers)
    end

    def fes_next_all(params = nil, headers = nil)
      get('fes/next_all', params, headers)
    end

    def maps(params = nil, headers = nil)
      get('maps', params, headers)
    end

    def weapons(params = nil, headers = nil)
      get('weapons', params, headers)
    end
  end
end
