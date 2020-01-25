import {createAppContainer, createSwitchNavigator} from 'react-navigation';

import Login from './pages/Login';
import Home from './pages/Home';

export default createAppContainer(
  createSwitchNavigator({
    Login,
    Home
  }),
);