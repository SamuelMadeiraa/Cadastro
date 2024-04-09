module AlunosHelper
    def cpf_formatado(cpf)
        # Verifica se o CPF está no formato correto
        if cpf =~ /^\d{3}\.\d{3}\.\d{3}-\d{2}$/
          return true
        else
          return false
        end
      end
end
