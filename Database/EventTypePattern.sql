-- Table: public.EventTypePattern

-- DROP TABLE IF EXISTS public."EventTypePattern";

CREATE TABLE IF NOT EXISTS public."EventTypePattern"
(
    "ID" integer NOT NULL DEFAULT nextval('"EventTypePattern_ID_seq"'::regclass),
    "EventTypeID" integer NOT NULL,
    "Name" character varying(150) COLLATE pg_catalog."default" NOT NULL,
    "Content" character varying(500) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "EventTypePattern_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "EventTypePattern_typeid" FOREIGN KEY ("EventTypeID")
        REFERENCES public."EventType" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."EventTypePattern"
    OWNER to root;