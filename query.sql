-------1------------
SELECT * FROM Users
WHERE DateOfBirth BETWEEN '01-01-2000' and '12-31-2004'

-------2----------
SELECT * FROM Posts
WHERE PostedBy = 4;

-------3----------
SELECT GroupName
FROM Groups;

-------4----------
SELECT * FROM GroupMembershipRequests
WHERE GroupMembershipRequestsID = 2;

-------5----------
SELECT * FROM Users

Join Friends ON 
   Users.UserID = Friends.FriendBeingAdded OR Users.UserID = Friends.FriendWhoAdded
WHERE (FriendWhoAdded = 2 OR FriendBeingAdded = 2)
AND User.UserID is not 2
AND isAccepted = True;

-------6-----------
SELECT * FROM Friends
WHERE FriendWhoAdded = 1;

-------7-----------
SELECT *
FROM Posts
WHERE GroupID = 2;

-------8----------
SELECT * 
FROM GroupMembershipRequests
WHERE GroupID = 2
  AND IsGroupMemberShipAccepted = FALSE;

