/*
  Warnings:

  - You are about to drop the `_UserIsPartOf` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_UserIsPartOf" DROP CONSTRAINT "_UserIsPartOf_A_fkey";

-- DropForeignKey
ALTER TABLE "_UserIsPartOf" DROP CONSTRAINT "_UserIsPartOf_B_fkey";

-- DropTable
DROP TABLE "_UserIsPartOf";

-- CreateTable
CREATE TABLE "_WorkSpacesUserBelongsTo" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_WorkSpacesUserBelongsTo_AB_unique" ON "_WorkSpacesUserBelongsTo"("A", "B");

-- CreateIndex
CREATE INDEX "_WorkSpacesUserBelongsTo_B_index" ON "_WorkSpacesUserBelongsTo"("B");

-- AddForeignKey
ALTER TABLE "_WorkSpacesUserBelongsTo" ADD CONSTRAINT "_WorkSpacesUserBelongsTo_A_fkey" FOREIGN KEY ("A") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_WorkSpacesUserBelongsTo" ADD CONSTRAINT "_WorkSpacesUserBelongsTo_B_fkey" FOREIGN KEY ("B") REFERENCES "Workspace"("id") ON DELETE CASCADE ON UPDATE CASCADE;
