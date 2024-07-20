-- Table: public.EventType

-- DROP TABLE IF EXISTS public."EventType";

CREATE TABLE IF NOT EXISTS public."EventType"
(
    "ID" integer NOT NULL DEFAULT nextval('"EventType_ID_seq"'::regclass),
    "Name" character varying(150) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "EventType_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."EventType"
    OWNER to root;