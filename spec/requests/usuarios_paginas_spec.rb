require 'spec_helper'

describe "UsuariosPaginas" do
  describe "GET /usuarios_paginas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get usuarios_paginas_index_path
      response.status.should be(200)
    end
  end
end
