module ApplicationHelper

	def titulo_completo(titulo_pagina)
		titulo_base = "Centro Yeonca\\'n"
		if titulo_base.empty?
			titulo_base
		else
			"#{titulo_base} | #{titulo_pagina}"
		end
	end
end
