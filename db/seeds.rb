# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html



# Load default levels
primaria = Level.create(name: 'Primaria' )

# Load Grade for Primary
	g1p = Grade.create(name: '1ero', level_id: primaria.id)

		Course.create(name: 'Ingles', grade_id: g1p.id)
		Course.create(name: 'Historia',  grade_id: g1p.id)
		Course.create(name: 'Matematicas', grade_id: g1p.id)
		Course.create(name: 'Lenguaje',  grade_id: g1p.id)

		Section.create(name: 'A', grade_id: g1p.id)
		Section.create(name: 'B', grade_id: g1p.id)



	g2p = Grade.create(name: '2do', level_id: primaria.id)

		Course.create(name: 'Ingles', grade_id: g2p.id)
		Course.create(name: 'Historia', grade_id: g2p.id)
		Course.create(name: 'Matematicas', grade_id: g2p.id)
		Course.create(name: 'Lenguaje', grade_id: g2p.id)

		Section.create(name: 'A', grade_id: g2p.id)
		Section.create(name: 'B', grade_id: g2p.id)

	g3p = Grade.create(name: '3ero', level_id: primaria.id)

		Course.create(name: 'Ingles', grade_id: g3p.id)
		Course.create(name: 'Historia', grade_id: g3p.id)
		Course.create(name: 'Matematicas', grade_id: g3p.id)
		Course.create(name: 'Lenguaje', grade_id: g3p.id)

		Section.create(name: 'A', grade_id: g3p.id)
		Section.create(name: 'B', grade_id: g3p.id)

	g4p = Grade.create(name: '4to', level_id: primaria.id)

		Course.create(name: 'Ingles', grade_id: g4p.id)
		Course.create(name: 'Historia', grade_id: g4p.id)
		Course.create(name: 'Matematicas', grade_id: g4p.id)
		Course.create(name: 'Lenguaje', grade_id: g4p.id)

		Section.create(name: 'A', grade_id: g4p.id)
		Section.create(name: 'B', grade_id: g4p.id)


	g5p = Grade.create(name: '5to', level_id: primaria.id)
		Course.create(name: 'Ingles', grade_id: g5p.id)
		Course.create(name: 'Historia', grade_id: g5p.id)
		Course.create(name: 'Matematicas', grade_id: g5p.id)
		Course.create(name: 'Lenguaje', grade_id: g5p.id)

		Section.create(name: 'A', grade_id: g5p.id)
		Section.create(name: 'B', grade_id: g5p.id)

	g6p = Grade.create(name: '6to', level_id: primaria.id)

		Course.create(name: 'Ingles', grade_id: g6p.id)
		Course.create(name: 'Historia', grade_id: g6p.id)
		Course.create(name: 'Matematicas', grade_id: g6p.id)
		Course.create(name: 'Lenguaje', grade_id: g6p.id)

		Section.create(name: 'A', grade_id: g6p.id)
		Section.create(name: 'B', grade_id: g6p.id)

secundaria = Level.create(name: 'Secundaria' )

# Load Grade for Secundary
	g1s = Grade.create(name: '1ero', level_id: secundaria.id)

		Course.create(name: 'Educacion Fisica', grade_id: g1s.id)
		Course.create(name: 'Historia Universal', grade_id: g1s.id)
		Course.create(name: 'Matematicas Financiera', grade_id: g1s.id)
		Course.create(name: 'Lenguaje y Literatura', grade_id: g1s.id)
		Course.create(name: 'Fisica', grade_id: g1s.id)
		Course.create(name: 'Biologia', grade_id: g1s.id)


		Section.create(name: 'A', grade_id: g1s.id)
		Section.create(name: 'B', grade_id: g1s.id)

	g2s = Grade.create(name: '2do', level_id: secundaria.id)

		Course.create(name: 'Educacion Fisica', grade_id: g2s.id)
		Course.create(name: 'Historia Universal', grade_id: g2s.id)
		Course.create(name: 'Matematicas Financiera', grade_id: g2s.id)
		Course.create(name: 'Lenguaje y Literatura', grade_id: g2s.id)
		Course.create(name: 'Fisica', grade_id: g2s.id)
		Course.create(name: 'Biologia', grade_id: g2s.id)

		Section.create(name: 'A', grade_id: g2s.id)
		Section.create(name: 'B', grade_id: g2s.id)

	g3s = Grade.create(name: '3ero', level_id: secundaria.id)

		Course.create(name: 'Educacion Fisica', grade_id: g3s.id)
		Course.create(name: 'Historia Universal', grade_id: g3s.id)
		Course.create(name: 'Matematicas Financiera', grade_id: g3s.id)
		Course.create(name: 'Lenguaje y Literatura', grade_id: g3s.id)
		Course.create(name: 'Fisica', grade_id: g3s.id)
		Course.create(name: 'Biologia', grade_id: g3s.id)

		Section.create(name: 'A', grade_id: g3s.id)
		Section.create(name: 'B', grade_id: g3s.id)

	g4s = Grade.create(name: '4to', level_id: secundaria.id)


		Course.create(name: 'Educacion Fisica', grade_id: g4s.id)
		Course.create(name: 'Historia Universal', grade_id: g4s.id)
		Course.create(name: 'Matematicas Financiera', grade_id: g4s.id)
		Course.create(name: 'Lenguaje y Literatura', grade_id: g4s.id)
		Course.create(name: 'Fisica', grade_id: g4s.id)
		Course.create(name: 'Biologia', grade_id: g4s.id)


		Section.create(name: 'A', grade_id: g4s.id)
		Section.create(name: 'B', grade_id: g4s.id)

	g5s = Grade.create(name: '5to', level_id: secundaria.id)


		Course.create(name: 'Educacion Fisica', grade_id: g5s.id)
		Course.create(name: 'Historia Universal', grade_id: g5s.id)
		Course.create(name: 'Matematicas Financiera', grade_id: g5s.id)
		Course.create(name: 'Lenguaje y Literatura', grade_id: g5s.id)
		Course.create(name: 'Fisica', grade_id: g5s.id)
		Course.create(name: 'Biologia', grade_id: g5s.id)

		Section.create(name: 'A', grade_id: g5s.id)
		Section.create(name: 'B', grade_id: g5s.id)
