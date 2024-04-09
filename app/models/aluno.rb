class Aluno < ApplicationRecord
  belongs_to :turma, optional: true

  def formatar_cpf(cpf)
    # Remove todos os caracteres que não são dígitos
    cpf = cpf.gsub(/\D/, '')
  
    # Aplica a máscara de formatação
    cpf = cpf.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
  
    cpf
  end
end