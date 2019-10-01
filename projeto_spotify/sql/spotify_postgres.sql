CREATE TABLE artista (
    id		serial PRIMARY KEY NOT NULL,
    nome 	  TEXT,
    popularidade  INTEGER,
    seguidores    INTEGER
);

CREATE TABLE genero (
    id        serial PRIMARY KEY NOT NULL,
    nome 	  TEXT
);

CREATE TABLE musica (
    id            serial PRIMARY KEY NOT NULL,
    nome          TEXT,
    url           TEXT, 
    id_artista	  INTEGER,
    FOREIGN KEY(id_artista) REFERENCES artista(id)
);

CREATE TABLE pais (
    id        serial PRIMARY KEY NOT NULL,
    sigla 	  TEXT,
    nome    TEXT
);

CREATE TABLE artista_genero (
    id serial PRIMARY KEY NOT NULL,
    id_artista INTEGER,
    id_genero INTEGER,
    FOREIGN KEY(id_artista) REFERENCES artista(id),
    FOREIGN KEY(id_genero) REFERENCES genero(id)
);

CREATE TABLE pais_musica (
    id serial PRIMARY KEY NOT NULL,
    id_pais INTEGER,
    id_musica INTEGER,
    posicao       INTEGER,
    streams       INTEGER,
    FOREIGN KEY(id_pais) REFERENCES pais(id),
    FOREIGN KEY(id_musica) REFERENCES musica(id)
);
