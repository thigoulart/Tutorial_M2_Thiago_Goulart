BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "formacao" (
	"curso"	TEXT,
	"id_formacao"	INTEGER NOT NULL,
	"data_inicio"	TEXT NOT NULL,
	"data_fim"	TEXT NOT NULL,
	"cod_pessoa"	INTEGER NOT NULL,
	"descricao"	TEXT NOT NULL,
	FOREIGN KEY("cod_pessoa") REFERENCES "pessoa"("cod_pessoa"),
	PRIMARY KEY("id_formacao")
);
CREATE TABLE IF NOT EXISTS "experiencia" (
	"nome_empresa"	TEXT NOT NULL,
	"data_inicio"	TEXT NOT NULL,
	"data_fim"	TEXT NOT NULL,
	"cargo"	TEXT NOT NULL,
	"cod_pessoa"	INTEGER NOT NULL,
	"id_experiencia"	INTEGER,
	"descricao"	TEXT NOT NULL,
	FOREIGN KEY("cod_pessoa") REFERENCES "pessoa"("cod_pessoa"),
	PRIMARY KEY("id_experiencia" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "habilidades" (
	"cod_pessoa"	INTEGER NOT NULL,
	"habilidade_1"	TEXT,
	"habilidade_2"	TEXT,
	"habilidade_3"	TEXT,
	"id_habilidades"	INTEGER NOT NULL,
	FOREIGN KEY("cod_pessoa") REFERENCES "pessoa"("cod_pessoa"),
	PRIMARY KEY("id_habilidades" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "pessoa" (
	"cod_pessoa"	INTEGER NOT NULL,
	"nome"	TEXT NOT NULL,
	"cargo"	TEXT NOT NULL,
	"foto"	TEXT,
	PRIMARY KEY("cod_pessoa" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "realizacoes" (
	"instituicao"	TEXT NOT NULL,
	"ano"	INTEGER NOT NULL,
	"descricao"	TEXT,
	"id_realizacoes"	INTEGER NOT NULL,
	"cod_pessoa"	INTEGER NOT NULL,
	FOREIGN KEY("cod_pessoa") REFERENCES "pessoa"("cod_pessoa"),
	PRIMARY KEY("id_realizacoes")
);
CREATE TABLE IF NOT EXISTS "sobre" (
	"endereco"	TEXT NOT NULL,
	"id_sobre"	INTEGER,
	"cod_pessoa"	INTEGER NOT NULL,
	"telefone"	INTEGER,
	"email"	INTEGER NOT NULL,
	"descricao"	TEXT,
	FOREIGN KEY("cod_pessoa") REFERENCES "pessoa"("cod_pessoa"),
	PRIMARY KEY("id_sobre" AUTOINCREMENT)
);
COMMIT;
