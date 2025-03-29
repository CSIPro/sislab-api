ALTER TABLE "reagents" ALTER COLUMN "created_at" SET DEFAULT now();--> statement-breakpoint
ALTER TABLE "reagents" ALTER COLUMN "updated_at" SET DEFAULT now();--> statement-breakpoint
ALTER TABLE "wastes" ADD COLUMN "chemical_notation" varchar NOT NULL;