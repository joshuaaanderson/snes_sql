-- Table: public.all_snes_titles

-- DROP TABLE IF EXISTS public.all_snes_titles;

CREATE TABLE IF NOT EXISTS public.all_snes_titles
(
    title character varying(1000) COLLATE pg_catalog."default",
    year character varying(4) COLLATE pg_catalog."default",
    publisher character varying(1000) COLLATE pg_catalog."default",
    developer character varying(1000) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.all_snes_titles
    OWNER to postgres;