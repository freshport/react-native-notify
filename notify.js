import {
    NativeModules,
    Platform,
    ToastAndroid
} from 'react-native'

class Notify {
    static post(
        title: string
    ): void {
        if (Platform.OS === 'ios') {
            const { Notify } = NativeModules
            if (Notify) {
                Notify.toast(title)
            }
        } else if (Platform.OS === 'android') {
            ToastAndroid.show(title, ToastAndroid.SHORT)
        }
    }
}

module.exports = Notify