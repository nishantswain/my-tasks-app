/*
  Warnings:

  - A unique constraint covering the columns `[prevId]` on the table `BucketItem` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `description` to the `BucketItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `endDate` to the `BucketItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nextId` to the `BucketItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `prevId` to the `BucketItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `startDate` to the `BucketItem` table without a default value. This is not possible if the table is not empty.
  - Added the required column `title` to the `BucketItem` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "BucketItem" ADD COLUMN     "description" TEXT NOT NULL,
ADD COLUMN     "endDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "nextId" TEXT NOT NULL,
ADD COLUMN     "prevId" TEXT NOT NULL,
ADD COLUMN     "startDate" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "title" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "BucketItem_prevId_key" ON "BucketItem"("prevId");

-- AddForeignKey
ALTER TABLE "BucketItem" ADD CONSTRAINT "BucketItem_prevId_fkey" FOREIGN KEY ("prevId") REFERENCES "BucketItem"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
