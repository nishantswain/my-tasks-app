import Button from '@/app/components/ui/Button';
import { authOptions } from '@/lib/auth';
import { getServerSession } from 'next-auth';
import { FC } from 'react';

import React from 'react';
// interface pageProps {}
const page = async () => {
  const session = await getServerSession(authOptions);
  return <div>{JSON.stringify(session)}</div>;
};

export default page;

// import UserBoardList from '../../components/UserBoardList';

// async function fetchBoardList(): Promise<[]> {
//   let response = await fetch('http:localhost:3000/api/boards');
//   const boardList = await response.json();
//   return boardList;
// }

// const page = async ({}) => {
//   let boardList = [];
//   boardList = await fetchBoardList();
//   console.log('this is server side');
//   return (
//     <div>
//       <h3>Welcome, User!</h3>
//       <div className="user-workspace-list-container">
//         {/* User's works-space */}
//         <div className="user-boards-list-conatiner">
//           <>
//             <UserBoardList boardList={boardList} />
//           </>
//         </div>
//       </div>
//     </div>
//   );
// };

// export default page;
