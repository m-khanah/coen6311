-- Table: public.Users

-- DROP TABLE IF EXISTS public."Users";

CREATE TABLE IF NOT EXISTS public."Users"
(
    "Fullname" character varying(150) COLLATE pg_catalog."default" NOT NULL,
    "Email" character varying(150) COLLATE pg_catalog."default" NOT NULL,
    "Isstudent" bit(1) NOT NULL,
    "ID" integer NOT NULL DEFAULT nextval('"Users_ID_seq"'::regclass),
    CONSTRAINT "Users_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Users"
    OWNER to root;