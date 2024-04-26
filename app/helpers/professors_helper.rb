module ProfessorsHelper
  def formatar_data_nascimento(data_nascimento)
    if data_nascimento.present?
      data_nascimento.strftime("%d/%m/%Y")
    else
      # Handle the case when data_nascimento is nil or empty
      # You can return a default value or an empty string, depending on your requirements
      ""
    end
  end

  def formatar_cpf(cpf)
    cpf_formatado = cpf.gsub(/\D/, '')
    # Rest of your code for formatting CPF
  end
end