# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_07_125441) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aluno_disciplinas", force: :cascade do |t|
    t.bigint "aluno_id", null: false
    t.bigint "disciplina_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_aluno_disciplinas_on_aluno_id"
    t.index ["disciplina_id"], name: "index_aluno_disciplinas_on_disciplina_id"
  end

  create_table "alunos", force: :cascade do |t|
    t.string "nome_completo"
    t.string "cpf"
    t.date "data_nascimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "turma_id", null: false
    t.string "email"
    t.bigint "disciplina_id"
    t.index ["disciplina_id"], name: "index_alunos_on_disciplina_id"
    t.index ["turma_id"], name: "index_alunos_on_turma_id"
  end

  create_table "alunos_disciplinas", id: false, force: :cascade do |t|
    t.bigint "aluno_id", null: false
    t.bigint "disciplina_id", null: false
    t.index ["aluno_id", "disciplina_id"], name: "index_alunos_disciplinas_on_aluno_id_and_disciplina_id", unique: true
    t.index ["aluno_id"], name: "index_alunos_disciplinas_on_aluno_id"
    t.index ["disciplina_id"], name: "index_alunos_disciplinas_on_disciplina_id"
  end

  create_table "blibliotecas", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplina_professores", force: :cascade do |t|
    t.bigint "disciplina_id", null: false
    t.bigint "professor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_disciplina_professores_on_disciplina_id"
    t.index ["professor_id"], name: "index_disciplina_professores_on_professor_id"
  end

  create_table "disciplina_professors", force: :cascade do |t|
    t.bigint "disciplina_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_disciplina_professors_on_disciplina_id"
  end

  create_table "disciplinas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas_professors", force: :cascade do |t|
    t.bigint "disciplina_id", null: false
    t.bigint "professor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_disciplinas_professors_on_disciplina_id"
    t.index ["professor_id"], name: "index_disciplinas_professors_on_professor_id"
  end

  create_table "discplina_alunos", force: :cascade do |t|
    t.bigint "aluno_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_discplina_alunos_on_aluno_id"
  end

  create_table "discplina_professors", force: :cascade do |t|
    t.bigint "professor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_discplina_professors_on_professor_id"
  end

  create_table "matricula_disciplinas", force: :cascade do |t|
    t.bigint "aluno_id", null: false
    t.bigint "disciplinas_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_matricula_disciplinas_on_aluno_id"
    t.index ["disciplinas_id"], name: "index_matricula_disciplinas_on_disciplinas_id"
  end

  create_table "matriculas", force: :cascade do |t|
    t.string "numero_matricula"
    t.bigint "aluno_id", null: false
    t.bigint "professor_id", null: false
    t.bigint "turma_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "disciplina_id", null: false
    t.index ["aluno_id"], name: "index_matriculas_on_aluno_id"
    t.index ["disciplina_id"], name: "index_matriculas_on_disciplina_id"
    t.index ["professor_id"], name: "index_matriculas_on_professor_id"
    t.index ["turma_id"], name: "index_matriculas_on_turma_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome_completo"
    t.string "aniversario"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.date "data_nascimento"
    t.bigint "turma_id"
    t.index ["turma_id"], name: "index_professors_on_turma_id"
  end

  create_table "professors_turmas", id: false, force: :cascade do |t|
    t.bigint "professor_id", null: false
    t.bigint "turma_id", null: false
  end

  create_table "turmas", force: :cascade do |t|
    t.string "turma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "professor_id"
  end

  add_foreign_key "aluno_disciplinas", "alunos"
  add_foreign_key "aluno_disciplinas", "disciplinas"
  add_foreign_key "alunos", "disciplinas"
  add_foreign_key "alunos_disciplinas", "alunos"
  add_foreign_key "alunos_disciplinas", "disciplinas"
  add_foreign_key "disciplina_professores", "disciplinas"
  add_foreign_key "disciplina_professores", "professors"
  add_foreign_key "disciplina_professors", "disciplinas"
  add_foreign_key "disciplinas_professors", "disciplinas"
  add_foreign_key "disciplinas_professors", "professors"
  add_foreign_key "discplina_alunos", "alunos"
  add_foreign_key "discplina_professors", "professors"
  add_foreign_key "matricula_disciplinas", "alunos"
  add_foreign_key "matricula_disciplinas", "disciplinas", column: "disciplinas_id"
  add_foreign_key "matriculas", "alunos"
  add_foreign_key "matriculas", "disciplinas"
  add_foreign_key "matriculas", "professors"
end
