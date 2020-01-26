import React from 'react';
import {
  StyleSheet,
  View,
  Text,
  Button,
  TextInput,
  KeyboardAvoidingView
} from 'react-native';

import axios from 'axios';

export default class Login extends React.Component {

  state = {
    email: 'login@email.com',
    password: '4321',
    err: false
  };

  login = async () => {
    const data = await axios.post('http://localhost:3000/login', {
      email: this.state.email,
      password: this.state.password
    });

    if (data.status === 200) {
      this.props.navigation.navigate('Home');
    } else {
      this.setState({ err: true });
    }
  }

  render() {
    return (
      <KeyboardAvoidingView style={{ flex: 1 }} behavior="padding">
        <View style={{ flex: 1 }}>
          <View style={{ flex: 1 }}>
            <Text style={styles.title}>
              Login
            </Text>
  
            <TextInput
              autoCapitalize="none"
              keyboardType="email-address"
              placeholder="Email"
              placeholderColor="#c4c3cb"
              style={styles.loginFormTextInput}
              value={this.state.email}
              onChangeText={email => this.setState({ email })}
            />
            
            <TextInput
              placeholder="Senha"
              placeholderColor="#c4c3cb"
              style={styles.loginFormTextInput}
              secureTextEntry={true}
              value={this.state.password}
              onChangeText={password => this.setState({ password })}
            />
  
            <Button style={styles.loginButton} title="Login" onPress={() => this.login()} />

            {this.state.err == true && <Text style={{ color: 'red', textAlign: 'center' }}>Email e/ou senha incorretos</Text>}
          </View>
        </View>
      </KeyboardAvoidingView>
    );
  }
}

const styles = StyleSheet.create({
  title: {
    fontSize: 40,
    fontWeight: "800",
    marginTop: 150,
    marginBottom: 30,
    textAlign: 'center'
  },
  loginFormTextInput: {
    height: 43,
    fontSize: 14,
    borderRadius: 5,
    borderWidth: 1,
    borderColor: '#eaeaea',
    backgroundColor: '#fafafa',
    paddingLeft: 10,
    marginLeft: 15,
    marginRight: 15,
    marginTop: 5,
    marginBottom: 5,
    width: 300
  },
  loginButton: {
    backgroundColor: '#3897f1',
    borderRadius: 5,
    height: 45,
    marginTop: 10,
  }
});