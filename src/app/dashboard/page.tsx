import React from 'react';
import UserBoardList from '../components/UserBoardList';

const UserDashboard = () => {
  return (
    <div>
      {/* UserDashboard */}
      <h3>Welcome, User!</h3>
      <div className="user-workspace-list-container">
        User's works-space
        <div className="user-boards-list-conatiner">
          <UserBoardList/>
        </div>
      </div>
    </div>
  );
};

export default UserDashboard;
