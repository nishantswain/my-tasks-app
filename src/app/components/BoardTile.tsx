import Image from 'next/image';
import Link from 'next/link';
import React from 'react';

const BoardTile = ({ board }) => {
  return (
    <div key={board.id} className="board-tile">
      <Link href={`/board/${board.id}`}>
        <div className="board-tile-image">
          <Image
            src={board.boardImage}
            alt={board.boardName + ' image'}
            width={100}
            height={100}
          />
        </div>
        <div className="board-tile-board-name" style={{ position: 'absolute' }}>
          {board.boardName}
        </div>
      </Link>
    </div>
  );
};

export default BoardTile;
