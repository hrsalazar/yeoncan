require 'spec_helper'

describe Usuario do
	before { @usuario = Usuario.new(nombre: "Hector", correo: "hector@hrsalazar.com")}

	subject {@usuario}

	it { should respond_to(:nombre)}
	it { should respond_to(:correo)}
  
  	it { should be_valid }

  	describe "Nombre no existe" do
  		before { @usuario.nombre = "" }
  		it { should_not be_valid }
  	end

  	describe "Nombre menor a 50 caracteres" do
  		before { @usuario.nombre = "a"*51 }
  		it { should_not be_valid}
  	end

  	describe "Correo no existe" do
  		before {@usuario.correo = ""}
  		it { should_not be_valid}
  	end
end
