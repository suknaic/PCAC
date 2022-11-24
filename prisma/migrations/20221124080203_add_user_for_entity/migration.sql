/*
  Warnings:

  - Added the required column `usuarioId` to the `Entidade` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Entidade" ADD COLUMN     "usuarioId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "Entidade" ADD CONSTRAINT "Entidade_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
