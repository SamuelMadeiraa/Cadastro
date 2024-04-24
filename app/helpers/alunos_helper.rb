module AlunosHelper
  def formatar_data_nascimento(data_nascimento)
    data_nascimento.strftime("%d/%m/%Y")
  end
  def formatar_cpf(cpf)
    cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  end
  
end
