require 'spec_helper'

describe "Paginas Estaticas" do

  subject { page }

  describe "Inicio Pagina" do
    before { visit root_path }

    it { should have_content("Centro Yeonca\'n") }
    it { should have_title(titulo_completo('')) }
    it { should_not have_title('| Inicio') }
  end

  describe "Idea Pagina" do
    before { visit idea_path }

    it { should have_content('Idea') }
    it { should have_title(titulo_completo('Idea')) }
  end

  describe "Somos Pagina" do
    before { visit somos_path }

    it { should have_content('Somos') }
    it { should have_title(titulo_completo('Somos')) }
  end

  describe "Contacto Pagina" do
    before { visit contacto_path }

    it { should have_content('Contacto') }
    it { should have_title(titulo_completo('Contacto')) }
  end
end