# iosmark
ios mark for your hacks

<b> Init mark view: </b>
```obj-c
WatermarkView *wm;
CGRect mainScreenBounds = [UIScreen mainScreen].bounds;
CGFloat wmWidth = 130;
CGFloat wmHeight = 50;
CGFloat wmX = CGRectGetWidth(mainScreenBounds) - wmWidth - 50;
CGFloat wmY = 50;
wm = [[WatermarkView alloc] initWithFrame:CGRectMake(wmX, wmY, wmWidth, wmHeight) titleName:@"iosdev"];
```

<b> Add mark view: </b>
```obj-c
UIWindow *keyWindow = [[UIApplication sharedApplication] keyWindow];
[keyWindow addSubview:wm];
```

<b>Sample UI of the mark:</b><br>

<div style="display: flex; justify-content: center;">
    <img src="https://github.com/ioscoderr/iosmark/blob/main/photo_2024-04-10%2013.16.35.jpeg" style="max-width: 10px; margin: 0 10px;">
</div>

### Credits:
* [iosdev](https://t.me/developerioscoder)
