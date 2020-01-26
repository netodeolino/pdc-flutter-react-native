import React from 'react';
import {
  StyleSheet,
  View,
  Text,
  Button,
  Share
} from 'react-native';

import RNFetchBlob from "rn-fetch-blob";

export default class Home extends React.Component {

  onShare = async () => {
    try {
      const result = await Share.share({
        message: 'React Native | A framework for building native apps using React',
      });

      if (result.action === Share.sharedAction) {
        if (result.activityType) {
          // shared with activity type of result.activityType
        } else {
          // shared
        }
      } else if (result.action === Share.dismissedAction) {
        // dismissed
      }
    } catch (error) {
      alert(error.message);
    }
  }

  // actualDownload = () => {
  //   let dirs = RNFetchBlob.fs.dirs;
  //   RNFetchBlob.config({
  //     // add this option that makes response data to be stored as a file,
  //     // this is much more performant.
  //     path: dirs.DownloadDir + "/path-to-file.png",
  //     fileCache: true
  //   })
  //     .fetch(
  //       "GET",
  //       "http://www.usa-essays.com/blog/wp-content/uploads/2017/09/sample-5-1024x768.jpg",
  //       {}
  //     )
  //     .progress((received, total) => {
  //       console.log(received, total);
  //     })
  //     .then(res => {
  //       ToastAndroid.showWithGravity(
  //         "Your file has been downloaded to downloads folder!",
  //         ToastAndroid.SHORT,
  //         ToastAndroid.BOTTOM
  //       );
  //     });
  // };

  // async downloadFile() {
  //   try {
  //     const granted = await PermissionsAndroid.request(
  //       PermissionsAndroid.PERMISSIONS.WRITE_EXTERNAL_STORAGE,
  //       {
  //         title: "Storage Permission",
  //         message: "App needs access to memory to download the file "
  //       }
  //     );
  //     if (granted === PermissionsAndroid.RESULTS.GRANTED) {
  //       this.actualDownload();
  //     } else {
  //       Alert.alert(
  //         "Permission Denied!",
  //         "You need to give storage permission to download the file"
  //       );
  //     }
  //   } catch (err) {
  //     console.warn(err);
  //   }
  // }

  render() {
    return (
      <View style={{ flex: 1, padding: 20 }}>
        {/* Um porre para fazer um toolbar/header :( */}

        <View style={{ flex: 1 }}>
          <Button title="Share" onPress={() => this.onShare()} />
        </View>

        <View style={{ flex: 1 }}>
          <Button title="Download" onPress={() => this.downloadFile()} />
        </View>

        <View>
          <Button title="Home" onPress={() => this.props.navigation.navigate('Login')} />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({});