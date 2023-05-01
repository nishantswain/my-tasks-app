import React from 'react';
import BoardTile from './BoardTile';

type BoardTile = {
  id: any | String;
  boardName: String;
  boardImage: String;
};

async function fetchBoardList(): Promise<[]> {
  let response = await fetch('http:localhost:3000/api/boards');
  const boardList = await response.json();
  return boardList;
}

async function UserBoardList() {
  const boardList = await fetchBoardList();
  return (
    <div>
      <h3>User Board List</h3>
      {boardList.map((board: BoardTile) => (
        <BoardTile key={board.id} board={board} />
      ))}
    </div>
  );
}

export default UserBoardList;
