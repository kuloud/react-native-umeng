
# react-native-mob

[![npm version](https://badge.fury.io/js/react-native-mob.svg)](https://badge.fury.io/js/react-native-mob)

## 开始

`$ npm install react-native-mob --save`

### 自动配置

`$ react-native link react-native-mob`

### 手动配置


### Android
打开`android/bulid.gradle`，添加以下仓库
```
······
allprojects {
    repositories {
        ·····
        maven {
            url "https://repo1.maven.org/maven2/"
        }
    }
}
······
```

## 集成

以下初始化，可以不在app初始化的时候集成。在应用启动的时候自己选择初始化，用于隐私合规
![](https://help-static-aliyun-doc.aliyuncs.com/assets/img/zh-CN/7678468261/p303155.jpg)

### iOS

编辑`AppDelegate.m`

```
#import <UMCommon/UMCommon.h>

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  [UMConfigure initWithAppkey:@"XXXXXXXX" channel:@"App Store"];
}
```

### Android


`MainApplication.java`

```
import com.maochunjie.mumeng.RNReactNativeMumengModule;

···
public void onCreate() {
  super.onCreate();
  RNReactNativeMumengModule.init(this, "XXXXX", "Umeng", null);
}
```

如果采用js端初始化，则需要进行预初始化

`MainApplication.java`

```
import com.maochunjie.mumeng.RNReactNativeMumengModule;

···
public void onCreate() {
  super.onCreate();
  RNReactNativeMumengModule.preInit(this, "XXXXX", "Umeng");
}
```



## 使用
```javascript
import * as mUmeng from 'react-native-react-native-mumeng';

// 初始化
initSDK = async ()=>{
    alert(JSON.stringify(await mUmeng.initSDK({
        appKey: '', //你的友盟appkey
        debug: 'true',
        channel: 'RNTest'
    })));
};

// 获取MAC地址
getInfo = async () => {
    alert(JSON.stringify(await mUmeng.getInfo()));
}
```
  