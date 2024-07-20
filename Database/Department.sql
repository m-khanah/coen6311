-- Table: public.Department

-- DROP TABLE IF EXISTS public."Department";

CREATE TABLE IF NOT EXISTS public."Department"
(
    "ID" integer NOT NULL DEFAULT nextval('"Department_ID_seq"'::regclass),
    "Name" character varying(150) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Department_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Department"
    OWNER to root;