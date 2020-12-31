# Coreaiot 信标 SDK Cordova 插件 

- [x] iOS
- [x] Android

## 安装

```
cordova plugin add cordova-plugin-coreaiot-rtls-sensor --save
```

## 插件依赖

[cordova-support-kotlin](https://github.com/kainonly/cordova-support-kotlin)

```
cordova plugin add cordova-support-kotlin --save
```

## 使用方法

### Ble.start
##### 定义

```ts
Ble.start(successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.start(() => {
  console.log('started');
}, errCode => {
  console.error('Failed to start,', errCode);
});
```

### Ble.stop
##### 定义
```ts
Ble.stop(successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.stop(() => {
  console.log('stopped');
}, errCode => {
  console.error('Failed to stop,', errCode);
});
```

### Ble.setId
##### 定义
```ts
Ble.setId(id: number, successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.setId(0, () => {
  console.log('set id to 0');
}, errCode => {
  console.error('failed to set id', errCode);
});
```

> Id is a number from 0 to 0xffff.

### Ble.setCustomFlag (只支持 Android)
##### 定义
```ts
Ble.setCustomFlag(customFlag: number, successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.setCustomFlag(0, () => {
  console.log('set customFlag to 0');
}, errCode => {
  console.error('failed to set customFlag', errCode);
});
```

> CustomFlag is a number from 0 to 127.

### Ble.setAlarm
##### 定义
```ts
Ble.setAlarm(alarm: boolean, successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.setAlarm(true, () => {
  console.log('set alarm to true');
}, errCode => {
  console.error('failed to set alarm', errCode);
});
```

### Ble.setBattery
##### 定义
```ts
Ble.setBattery(battery: number, successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.setBattery(0, () => {
  console.log('set battery to 0');
}, errCode => {
  console.error('failed to set battery', errCode);
});
```

> Battery is a number from 0 to 10.

### Ble.setTxPowerLevel (只支持 Android)
##### 定义
```ts
Ble.setTxPowerLevel(txPowerLevel: number, successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.setTxPowerLevel(0, () => {
  console.log('set txPowerLevel to 0');
}, errCode => {
  console.error('failed to set txPowerLevel', errCode);
});
```
> TxPowerLevel 
- 0: ADVERTISE_TX_POWER_ULTRA_LOW
- 1: ADVERTISE_TX_POWER_LOW
- 2: ADVERTISE_TX_POWER_MEDIUM
- 3: ADVERTISE_TX_POWER_HIGH (default)

### Ble.setAdvertiseMode (只支持 Android)
##### 定义
```ts
Ble.setAdvertiseMode(AdvertiseMode: number, successCallback: () => void, failedCallback(errCode: number) => void)
```
##### 示例
```js
Ble.setAdvertiseMode(0, () => {
  console.log('set advertiseMode to 0');
}, errCode => {
  console.error('failed to set advertiseMode', errCode);
});
```

> AdvertiseMode
- 0: ADVERTISE_MODE_LOW_POWER
- 1: ADVERTISE_MODE_BALANCED (default)
- 2: ADVERTISE_MODE_LOW_LATENCY

