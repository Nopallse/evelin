
const User = require("../models/UserModel.js");
const jwt = require('jsonwebtoken');



function checkUserLoggedIn(req) {
  const refreshToken = req.cookies.refreshToken;
  console.log('refreshToken:', refreshToken);
  
  let user = null;

  if (refreshToken) {
      try {
          const decoded = jwt.verify(refreshToken, process.env.REFRESH_TOKEN_SECRET);
          user = {
              userId: decoded.userId,
              role: decoded.role,
          };

          console.log('User logged in:', user);
          
      } catch (error) {
          console.error('Token invalid or expired:', error.message);
          return { user: null };
      }
  }
  return { user };
}


const getUser = async (req, res) => {
  // Destructure 'user' from the result of checkUserLoggedIn
  const loggedInUser = await checkUserLoggedIn(req, res);

  try {
    // Use the 'loggedInUser' object to fetch user details
    const user = await User.findOne({
      where: { id: loggedInUser.user.userId },
    });

    console.log('User found:', user );
    return user;
  } catch (error) {
    console.error('Error while fetching user:', error);
    return null;
  }
};


module.exports = {
    getUser
  };
  