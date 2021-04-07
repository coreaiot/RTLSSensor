# Coreaiot 信标 SDK 微信小程序

## 安装

> NPM （推荐）
```npm
npm i @coreaiot/sensor
```

> 下载地址
[https://github.com/coreaiot/RTLSSensor/releases](https://github.com/coreaiot/RTLSSensor/releases)

## 使用

```js
const { generateAdvertisingData } = require('@coreaiot/sensor')

wx.createBLEPeripheralServer({
  success: res => {
    const server = res.server
    wx.getSystemInfo({
      success: res => {
        const data = generateAdvertisingData(res.platform, {
          id: 0xe261,
          battery: 8,
          alarm: false,
        })
        server.startAdvertising(data)
      }
    })
  }
})
```

## 函数 generateAdvertisingData 参数说明
```ts
function generateAdvertisingData(
  /**
  * 操作系统
  * 目前只支持 ios 和 android
  */
  platform: 'ios' | 'android';
  params: {
    /**
    * ID
    * MAC 地址的后两个字节
    * 值域：[0, 0xffff]
    * iOS 机器不可以是 [56E6, 9730, 0BAA, 8E5C, C403,DB34, 67F7, 2745, ACCC, 2F61]
    */
    id: number;

    /**
    * 报警状态
    */
    alarm: boolean;

    /**
    * 电池电量
    * 值域：[0, 10]
    * 实际电量为 值 * 10 * 100%
    * 例：值为 5 表示电池电量为 50%
    */
    battery: number;
  }
)
```