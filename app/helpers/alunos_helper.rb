module AlunosHelper
  def formatar_data_nascimento(data_nascimento)
    data_nascimento.strftime("%d/%m/%Y")
  end  
  def formatar_cpf(cpf)
    cpf_formatado = cpf.gsub(/\D/, '')
    cpf_formatado.insert(3, '.').insert(7, '.').insert(11, '-')
  end

  
end
