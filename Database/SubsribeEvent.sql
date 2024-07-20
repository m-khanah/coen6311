-- Table: public.SubsribeEvent

-- DROP TABLE IF EXISTS public."SubsribeEvent";

CREATE TABLE IF NOT EXISTS public."SubsribeEvent"
(
    "ID" integer NOT NULL DEFAULT nextval('"SubsribeEvent_ID_seq"'::regclass),
    "UserID" integer NOT NULL,
    "DepartmentID" integer NOT NULL,
    CONSTRAINT "SubsribeEvent_pkey" PRIMARY KEY ("ID"),
    CONSTRAINT "SubsribeEvent_departmentid" FOREIGN KEY ("DepartmentID")
        REFERENCES public."Department" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "SubsribeEvent_userid" FOREIGN KEY ("UserID")
        REFERENCES public."Users" ("ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."SubsribeEvent"
    OWNER to root;