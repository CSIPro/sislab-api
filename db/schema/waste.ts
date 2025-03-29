import { pgTable, serial, timestamp, varchar } from "drizzle-orm/pg-core";

export const wastes = pgTable("wastes", {
  id: serial("id").primaryKey(),
  name: varchar("name").notNull(),
  chemicalNotation: varchar("chemical_notation").notNull(),
  container: varchar("container"),
  treatment: varchar("treatment").default("Neutralizar y verter al drenaje"),
  createdAt: timestamp("created_at", { withTimezone: true }).defaultNow(),
  updatedAt: timestamp("updated_at", { withTimezone: true }).defaultNow(),
});

export type WasteInsert = typeof wastes.$inferInsert;
export type WasteSelect = typeof wastes.$inferSelect;
