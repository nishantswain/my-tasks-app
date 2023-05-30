/*
  Warnings:

  - You are about to drop the `_worspaces_user_added_to` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "_worspaces_user_added_to" DROP CONSTRAINT "_worspaces_user_added_to_A_fkey";

-- DropForeignKey
ALTER TABLE "_worspaces_user_added_to" DROP CONSTRAINT "_worspaces_user_added_to_B_fkey";

-- DropTable
DROP TABLE "_worspaces_user_added_to";

-- CreateTable
CREATE TABLE "_Worspaces_user_added_to" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_Bucket_items_user_is_added_to" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "_Worspaces_user_added_to_AB_unique" ON "_Worspaces_user_added_to"("A", "B");

-- CreateIndex
CREATE INDEX "_Worspaces_user_added_to_B_index" ON "_Worspaces_user_added_to"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_Bucket_items_user_is_added_to_AB_unique" ON "_Bucket_items_user_is_added_to"("A", "B");

-- CreateIndex
CREATE INDEX "_Bucket_items_user_is_added_to_B_index" ON "_Bucket_items_user_is_added_to"("B");

-- AddForeignKey
ALTER TABLE "_Worspaces_user_added_to" ADD CONSTRAINT "_Worspaces_user_added_to_A_fkey" FOREIGN KEY ("A") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Worspaces_user_added_to" ADD CONSTRAINT "_Worspaces_user_added_to_B_fkey" FOREIGN KEY ("B") REFERENCES "Workspace"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Bucket_items_user_is_added_to" ADD CONSTRAINT "_Bucket_items_user_is_added_to_A_fkey" FOREIGN KEY ("A") REFERENCES "BucketItem"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_Bucket_items_user_is_added_to" ADD CONSTRAINT "_Bucket_items_user_is_added_to_B_fkey" FOREIGN KEY ("B") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;
