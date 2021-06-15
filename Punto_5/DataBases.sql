--ELABORADO EN POSTGRE SQL

-- Tabla de Tipo Mascota
CREATE TABLE public.tipo_mascota
(
    id_tipo_mascota integer NOT NULL DEFAULT nextval('tipo_mascota_id_tipo_mascota_seq'::regclass),
    descripcion character varying(45) COLLATE pg_catalog."default",
    CONSTRAINT tipo_mascota_pkey PRIMARY KEY (id_tipo_mascota)
)

TABLESPACE pg_default;

ALTER TABLE public.tipo_mascota
    OWNER to postgres;

-- Tabla de Propietario
CREATE TABLE public.propietario
(
    id_propietrario integer NOT NULL DEFAULT nextval('propietario_id_propietrario_seq'::regclass),
    nombre character varying(45) COLLATE pg_catalog."default",
    direccion character varying(45) COLLATE pg_catalog."default",
    telefono character varying(10) COLLATE pg_catalog."default",
    correo character varying(60) COLLATE pg_catalog."default",
    comentarios text COLLATE pg_catalog."default",
    CONSTRAINT propietario_pkey PRIMARY KEY (id_propietrario)
)

TABLESPACE pg_default;

ALTER TABLE public.propietario
    OWNER to postgres;

-- Tabla de Mascota
CREATE TABLE public.mascota
(
    id_mascota integer NOT NULL DEFAULT nextval('mascota_id_mascota_seq'::regclass),
    nombre character varying(45) COLLATE pg_catalog."default",
    propietario integer,
    tipo_mascota integer,
    CONSTRAINT mascota_pkey PRIMARY KEY (id_mascota),
    CONSTRAINT mascota_propietario_fkey FOREIGN KEY (propietario)
        REFERENCES public.propietario (id_propietrario) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID,
    CONSTRAINT mascota_tipo_fkey FOREIGN KEY (tipo_mascota)
        REFERENCES public.tipo_mascota (id_tipo_mascota) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE public.mascota
    OWNER to postgres;