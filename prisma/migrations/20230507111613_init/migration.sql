/*
  Warnings:

  - You are about to drop the `Board` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Bucket` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `BucketItem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CheckListItem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Comment` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Company` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Reaction` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Workspace` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_WorkSpacesUserBelongsTo` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Board" DROP CONSTRAINT "Board_createdById_fkey";

-- DropForeignKey
ALTER TABLE "Board" DROP CONSTRAINT "Board_workspaceId_fkey";

-- DropForeignKey
ALTER TABLE "Bucket" DROP CONSTRAINT "Bucket_boardId_fkey";

-- DropForeignKey
ALTER TABLE "Bucket" DROP CONSTRAINT "Bucket_createdById_fkey";

-- DropForeignKey
ALTER TABLE "BucketItem" DROP CONSTRAINT "BucketItem_bucketId_fkey";

-- DropForeignKey
ALTER TABLE "BucketItem" DROP CONSTRAINT "BucketItem_prevId_fkey";

-- DropForeignKey
ALTER TABLE "CheckListItem" DROP CONSTRAINT "CheckListItem_bucketItemId_fkey";

-- DropForeignKey
ALTER TABLE "CheckListItem" DROP CONSTRAINT "CheckListItem_createdById_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_bucketItemId_fkey";

-- DropForeignKey
ALTER TABLE "Comment" DROP CONSTRAINT "Comment_parentId_fkey";

-- DropForeignKey
ALTER TABLE "Reaction" DROP CONSTRAINT "Reaction_authorId_fkey";

-- DropForeignKey
ALTER TABLE "Reaction" DROP CONSTRAINT "Reaction_commentId_fkey";

-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_companyId_fkey";

-- DropForeignKey
ALTER TABLE "Workspace" DROP CONSTRAINT "Workspace_creatorId_fkey";

-- DropForeignKey
ALTER TABLE "_WorkSpacesUserBelongsTo" DROP CONSTRAINT "_WorkSpacesUserBelongsTo_A_fkey";

-- DropForeignKey
ALTER TABLE "_WorkSpacesUserBelongsTo" DROP CONSTRAINT "_WorkSpacesUserBelongsTo_B_fkey";

-- DropTable
DROP TABLE "Board";

-- DropTable
DROP TABLE "Bucket";

-- DropTable
DROP TABLE "BucketItem";

-- DropTable
DROP TABLE "CheckListItem";

-- DropTable
DROP TABLE "Comment";

-- DropTable
DROP TABLE "Company";

-- DropTable
DROP TABLE "Reaction";

-- DropTable
DROP TABLE "User";

-- DropTable
DROP TABLE "Workspace";

-- DropTable
DROP TABLE "_WorkSpacesUserBelongsTo";

-- DropEnum
DROP TYPE "BucketItemType";

-- DropEnum
DROP TYPE "ReactionType";

-- DropEnum
DROP TYPE "Role";
