.class public Lcom/keephealth/android/model/bean/DeviceModel;
.super Ljava/lang/Object;
.source "DeviceModel.java"


# instance fields
.field private alarm:Z

.field private alarmClock:Z

.field private alibaba:Z

.field private alipay:Z

.field private alipayWallet:Z

.field private allDayNotDisturbMode:Z

.field private audioBluetooth:Z

.field private baiduMap:Z

.field private baiduTieBa:Z

.field private bilibili:Z

.field private bloodGlucose:Z

.field private bloodoxygen:Z

.field private bloodpressure:Z

.field private bloodpressureCalibration:Z

.field private bluetoothName:Ljava/lang/String;

.field private boss:Z

.field private businessCards:Z

.field private calendar:Z

.field private calendarSchedule:Z

.field private calorieGoal:Z

.field private chipSolution:Ljava/lang/String;

.field private classSchedule:Z

.field private contacts:Z

.field private deviceDisableTime:Z

.field private deviceLanguage:Z

.field private deviceSetting:Z

.field private dewu:Z

.field private dialCenter:Z

.field private dialCenterA:Z

.field private dianping:Z

.field private didaTravel:Z

.field private didiTravel:Z

.field private dingding:Z

.field private douban:Z

.field private douyin:Z

.field private douyinQuick:Z

.field private drinkWaterRecordSync:Z

.field private drinkingWaterMode:Z

.field private ecg:Z

.field private ele:Z

.field private email:Z

.field private exerciseDurationGoal:Z

.field private facebook:Z

.field private facebookBusinessCards:Z

.field private familyHealth:Z

.field private feizhuTrip:Z

.field private findBracelet:Z

.field private fwVersion:Ljava/lang/String;

.field private gameTimeManagement:Z

.field private gaodeMap:Z

.field private gestureControl:Z

.field private haluoTravel:Z

.field private healthReminders:Z

.field private heart:Z

.field private heartRateIntervalAndWarning:Z

.field private heartrateAssistance:Z

.field private highPrecisionSleep:Z

.field private honorOfKings:Z

.field private hourMode12:Z

.field private hrv:Z

.field private imageSrc:Ljava/lang/String;

.field private incoming:Z

.field private insBusinessCards:Z

.field private instagram:Z

.field private jingdong:Z

.field private kaKaoTalk:Z

.field private keepHealth:Z

.field private kuaishou:Z

.field private kuaishouQuick:Z

.field private line:Z

.field private linkedin:Z

.field private maimai:Z

.field private manualBPRecording:Z

.field private manualBloodOxygen:Z

.field private manualHeartRate:Z

.field private manualHeartRateVariability:Z

.field private manualStress:Z

.field private mapNavigation:Z

.field private maxAlarmClockCount:I

.field private meituan:Z

.field private meiyou:Z

.field private messagerNotification:Z

.field private messenger:Z

.field private mett:Z

.field private model:Ljava/lang/String;

.field private momo:Z

.field private music:Z

.field private nightView:Z

.field private notDisturbMode:Z

.field private otaMode:I

.field private otherApp:Z

.field private paypalWallet:Z

.field private pedometerGoal:Z

.field private photo:Z

.field private pinduoduo:Z

.field private qq:Z

.field private qqBusinessCards:Z

.field private qqEmail:Z

.field private qunarTrip:Z

.field private railway12306:Z

.field private reset:Z

.field private screenBrightness:Z

.field private screenOnDuration:Z

.field private screenSetting:Z

.field private sedentaryReminder:Z

.field private sedentaryReminderB:Z

.field private skype:Z

.field private sleep:Z

.field private sleepDataShowType:I

.field private sms:Z

.field private sos:Z

.field private soul:Z

.field private sportModeAdapter:Z

.field private standingDurationGoal:Z

.field private stress:Z

.field private sweepConnectionBracelet:Z

.field private tantan:Z

.field private taobao:Z

.field private targetReachingReminder:Z

.field private taskAndRewards:Z

.field private telegram:Z

.field private telegramBusinessCards:Z

.field private temperature:Z

.field private tencentMap:Z

.field private tencentMeeting:Z

.field private tiktokBusinessCards:Z

.field private timezoneRequired:Z

.field private tongchengTrip:Z

.field private traffic12123:Z

.field private twitter:Z

.field private viber:Z

.field private vibrationAdjustment:Z

.field private vk:Z

.field private wallet:Z

.field private wangyiEmail:Z

.field private watchsAppBusinessCards:Z

.field private wearingHabit:Z

.field private weatherForecast:Z

.field private weatherForecastB:Z

.field private wechat:Z

.field private wechatBusinessCards:Z

.field private wechatWallet:Z

.field private weibo:Z

.field private weightRecord:Z

.field private whatsapp:Z

.field private womenHealth:Z

.field private womenHealthProtocol:Z

.field private workWechat:Z

.field private wristScreen:Z

.field private wristScreenB:Z

.field private xbusinessCards:Z

.field private xianyu:Z

.field private xiaohongshu:Z

.field private xiechengTrip:Z

.field private zhihu:Z

.field private zhixingTrainTickets:Z

.field private zoom:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calorieGoal:Z

    .line 74
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->pedometerGoal:Z

    .line 76
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->exerciseDurationGoal:Z

    .line 78
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->standingDurationGoal:Z

    .line 80
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenBrightness:Z

    .line 81
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenOnDuration:Z

    .line 83
    iput v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->otaMode:I

    .line 85
    iput v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sleepDataShowType:I

    .line 164
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calendarSchedule:Z

    .line 166
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->vibrationAdjustment:Z

    .line 168
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->nightView:Z

    .line 169
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->drinkWaterRecordSync:Z

    .line 170
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->allDayNotDisturbMode:Z

    .line 171
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wearingHabit:Z

    .line 172
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gestureControl:Z

    .line 173
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->keepHealth:Z

    .line 174
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->highPrecisionSleep:Z

    .line 175
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alarmClock:Z

    .line 176
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenSetting:Z

    .line 177
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->healthReminders:Z

    .line 178
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualHeartRate:Z

    .line 179
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualBloodOxygen:Z

    .line 180
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualStress:Z

    .line 181
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualHeartRateVariability:Z

    .line 182
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualBPRecording:Z

    .line 183
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->timezoneRequired:Z

    .line 336
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->hrv:Z

    .line 338
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceDisableTime:Z

    const/16 v1, 0x8

    .line 340
    iput v1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->maxAlarmClockCount:I

    .line 341
    iput-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gameTimeManagement:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1482
    :cond_4
    check-cast p1, Lcom/keephealth/android/model/bean/DeviceModel;

    .line 1483
    iget-object v1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->model:Ljava/lang/String;

    iget-object v2, p1, Lcom/keephealth/android/model/bean/DeviceModel;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreenB()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreenB()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreen()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWristScreen()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1484
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminderB()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminder()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSedentaryReminder()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealth()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWomenHealth()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1485
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isOtherApp()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenter()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isNotDisturbMode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isNotDisturbMode()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1486
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSportModeAdapter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSportModeAdapter()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodoxygen()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodoxygen()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodpressure()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodpressure()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1487
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDeviceSetting()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDeviceSetting()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSms()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSms()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isIncoming()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isIncoming()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isEmail()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1488
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessenger()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSkype()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isVk()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isLine()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1489
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isInstagram()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isLinkedin()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWhatsapp()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTwitter()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1490
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isFacebook()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isQq()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWechat()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isEcg()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isEcg()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1491
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleep()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSleep()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeart()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeart()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeartRateIntervalAndWarning()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isHeartRateIntervalAndWarning()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1492
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlarm()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isAlarm()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isReset()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isReset()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isPhoto()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isPhoto()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFindBracelet()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isFindBracelet()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1493
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTargetReachingReminder()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTargetReachingReminder()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessagerNotification()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isMessagerNotification()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1494
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isMusic()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isMusic()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTemperature()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecast()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecast()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1495
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkingWaterMode()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDrinkingWaterMode()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSweepConnectionBracelet()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSweepConnectionBracelet()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1496
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isTelegram()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isViber()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isViber()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isKakaotalk()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1497
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeightRecord()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeightRecord()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSos()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isSos()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isAudioBluetooth()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isAudioBluetooth()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isFamilyHealth()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isFamilyHealth()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1498
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecastB()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isWeatherForecastB()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isDialCenterA()Z

    move-result v2

    if-ne v1, v2, :cond_219

    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenBrightness()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenBrightness()Z

    move-result v2

    if-ne v1, v2, :cond_219

    .line 1499
    invoke-virtual {p0}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenShutdownTime()Z

    move-result v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isScreenShutdownTime()Z

    move-result p1

    if-ne v1, p1, :cond_219

    const/4 v0, 0x1

    :cond_219
    return v0
.end method

.method public getBluetoothName()Ljava/lang/String;
    .registers 2

    .line 1104
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public getChipSolution()Ljava/lang/String;
    .registers 2

    .line 1112
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->chipSolution:Ljava/lang/String;

    return-object v0
.end method

.method public getFwVersion()Ljava/lang/String;
    .registers 2

    .line 1120
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->fwVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSrc()Ljava/lang/String;
    .registers 2

    .line 1128
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->imageSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAlarmClockCount()I
    .registers 2

    .line 368
    iget v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->maxAlarmClockCount:I

    return v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .line 1096
    iget-object v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOtaMode()I
    .registers 2

    .line 384
    iget v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->otaMode:I

    return v0
.end method

.method public getSleepDataShowType()I
    .registers 2

    .line 388
    iget v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sleepDataShowType:I

    return v0
.end method

.method public isAlarm()Z
    .registers 2

    .line 1160
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alarm:Z

    return v0
.end method

.method public isAlarmClock()Z
    .registers 2

    .line 234
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alarmClock:Z

    return v0
.end method

.method public isAlibaba()Z
    .registers 2

    .line 632
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alibaba:Z

    return v0
.end method

.method public isAlipay()Z
    .registers 2

    .line 440
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alipay:Z

    return v0
.end method

.method public isAlipayWallet()Z
    .registers 2

    .line 840
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alipayWallet:Z

    return v0
.end method

.method public isAllDayNotDisturbMode()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->allDayNotDisturbMode:Z

    return v0
.end method

.method public isAudioBluetooth()Z
    .registers 2

    .line 1040
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->audioBluetooth:Z

    return v0
.end method

.method public isBaiduMap()Z
    .registers 2

    .line 752
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->baiduMap:Z

    return v0
.end method

.method public isBaiduTieBa()Z
    .registers 2

    .line 504
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->baiduTieBa:Z

    return v0
.end method

.method public isBilibili()Z
    .registers 2

    .line 464
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bilibili:Z

    return v0
.end method

.method public isBloodGlucose()Z
    .registers 2

    .line 976
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodGlucose:Z

    return v0
.end method

.method public isBloodoxygen()Z
    .registers 2

    .line 1240
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodoxygen:Z

    return v0
.end method

.method public isBloodpressure()Z
    .registers 2

    .line 1232
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodpressure:Z

    return v0
.end method

.method public isBloodpressureCalibration()Z
    .registers 2

    .line 1016
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodpressureCalibration:Z

    return v0
.end method

.method public isBoss()Z
    .registers 2

    .line 472
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->boss:Z

    return v0
.end method

.method public isBusinessCards()Z
    .registers 2

    .line 872
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->businessCards:Z

    return v0
.end method

.method public isCalendar()Z
    .registers 2

    .line 584
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calendar:Z

    return v0
.end method

.method public isCalendarSchedule()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calendarSchedule:Z

    return v0
.end method

.method public isCalorieGoal()Z
    .registers 2

    .line 936
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calorieGoal:Z

    return v0
.end method

.method public isClassSchedule()Z
    .registers 2

    .line 888
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->classSchedule:Z

    return v0
.end method

.method public isContacts()Z
    .registers 2

    .line 968
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->contacts:Z

    return v0
.end method

.method public isDeviceDisableTime()Z
    .registers 2

    .line 360
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceDisableTime:Z

    return v0
.end method

.method public isDeviceLanguage()Z
    .registers 2

    .line 1000
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceLanguage:Z

    return v0
.end method

.method public isDeviceSetting()Z
    .registers 2

    .line 1408
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceSetting:Z

    return v0
.end method

.method public isDewu()Z
    .registers 2

    .line 680
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dewu:Z

    return v0
.end method

.method public isDialCenter()Z
    .registers 2

    .line 1424
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dialCenter:Z

    return v0
.end method

.method public isDialCenterA()Z
    .registers 2

    .line 1456
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dialCenterA:Z

    return v0
.end method

.method public isDianping()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dianping:Z

    return v0
.end method

.method public isDidaTravel()Z
    .registers 2

    .line 656
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->didaTravel:Z

    return v0
.end method

.method public isDidiTravel()Z
    .registers 2

    .line 640
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->didiTravel:Z

    return v0
.end method

.method public isDingding()Z
    .registers 2

    .line 512
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dingding:Z

    return v0
.end method

.method public isDouban()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->douban:Z

    return v0
.end method

.method public isDouyin()Z
    .registers 2

    .line 392
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->douyin:Z

    return v0
.end method

.method public isDouyinQuick()Z
    .registers 2

    .line 408
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->douyinQuick:Z

    return v0
.end method

.method public isDrinkWaterRecordSync()Z
    .registers 2

    .line 306
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->drinkWaterRecordSync:Z

    return v0
.end method

.method public isDrinkingWaterMode()Z
    .registers 2

    .line 1432
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->drinkingWaterMode:Z

    return v0
.end method

.method public isEcg()Z
    .registers 2

    .line 1248
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->ecg:Z

    return v0
.end method

.method public isEle()Z
    .registers 2

    .line 528
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->ele:Z

    return v0
.end method

.method public isEmail()Z
    .registers 2

    .line 1296
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->email:Z

    return v0
.end method

.method public isExerciseDurationGoal()Z
    .registers 2

    .line 952
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->exerciseDurationGoal:Z

    return v0
.end method

.method public isFacebook()Z
    .registers 2

    .line 1288
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->facebook:Z

    return v0
.end method

.method public isFacebookBusinessCards()Z
    .registers 2

    .line 784
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->facebookBusinessCards:Z

    return v0
.end method

.method public isFamilyHealth()Z
    .registers 2

    .line 1032
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->familyHealth:Z

    return v0
.end method

.method public isFeizhuTrip()Z
    .registers 2

    .line 736
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->feizhuTrip:Z

    return v0
.end method

.method public isFindBracelet()Z
    .registers 2

    .line 1144
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->findBracelet:Z

    return v0
.end method

.method public isGameTimeManagement()Z
    .registers 2

    .line 344
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gameTimeManagement:Z

    return v0
.end method

.method public isGaodeMap()Z
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gaodeMap:Z

    return v0
.end method

.method public isGestureControl()Z
    .registers 2

    .line 274
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gestureControl:Z

    return v0
.end method

.method public isHaluoTravel()Z
    .registers 2

    .line 648
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->haluoTravel:Z

    return v0
.end method

.method public isHealthReminders()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->healthReminders:Z

    return v0
.end method

.method public isHeart()Z
    .registers 2

    .line 1224
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->heart:Z

    return v0
.end method

.method public isHeartRateIntervalAndWarning()Z
    .registers 2

    .line 1176
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->heartRateIntervalAndWarning:Z

    return v0
.end method

.method public isHeartrateAssistance()Z
    .registers 2

    .line 880
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->heartrateAssistance:Z

    return v0
.end method

.method public isHighPrecisionSleep()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->highPrecisionSleep:Z

    return v0
.end method

.method public isHonorOfKings()Z
    .registers 2

    .line 696
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->honorOfKings:Z

    return v0
.end method

.method public isHourMode12()Z
    .registers 2

    .line 1008
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->hourMode12:Z

    return v0
.end method

.method public isHrv()Z
    .registers 2

    .line 352
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->hrv:Z

    return v0
.end method

.method public isIncoming()Z
    .registers 2

    .line 1312
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->incoming:Z

    return v0
.end method

.method public isInsBusinessCards()Z
    .registers 2

    .line 808
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->insBusinessCards:Z

    return v0
.end method

.method public isInstagram()Z
    .registers 2

    .line 1360
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->instagram:Z

    return v0
.end method

.method public isJingdong()Z
    .registers 2

    .line 544
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->jingdong:Z

    return v0
.end method

.method public isKaKaoTalk()Z
    .registers 2

    .line 1024
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kaKaoTalk:Z

    return v0
.end method

.method public isKakaotalk()Z
    .registers 2

    .line 1056
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kaKaoTalk:Z

    return v0
.end method

.method public isKeepHealth()Z
    .registers 2

    .line 282
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->keepHealth:Z

    return v0
.end method

.method public isKuaishou()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kuaishou:Z

    return v0
.end method

.method public isKuaishouQuick()Z
    .registers 2

    .line 552
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kuaishouQuick:Z

    return v0
.end method

.method public isLine()Z
    .registers 2

    .line 1328
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->line:Z

    return v0
.end method

.method public isLinkedin()Z
    .registers 2

    .line 1368
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->linkedin:Z

    return v0
.end method

.method public isMaimai()Z
    .registers 2

    .line 560
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->maimai:Z

    return v0
.end method

.method public isManualBPRecording()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualBPRecording:Z

    return v0
.end method

.method public isManualBloodOxygen()Z
    .registers 2

    .line 210
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualBloodOxygen:Z

    return v0
.end method

.method public isManualHeartRate()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualHeartRate:Z

    return v0
.end method

.method public isManualHeartRateVariability()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualHeartRateVariability:Z

    return v0
.end method

.method public isManualStress()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualStress:Z

    return v0
.end method

.method public isMapNavigation()Z
    .registers 2

    .line 856
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->mapNavigation:Z

    return v0
.end method

.method public isMeituan()Z
    .registers 2

    .line 432
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->meituan:Z

    return v0
.end method

.method public isMeiyou()Z
    .registers 2

    .line 664
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->meiyou:Z

    return v0
.end method

.method public isMessagerNotification()Z
    .registers 2

    .line 1152
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->messagerNotification:Z

    return v0
.end method

.method public isMessenger()Z
    .registers 2

    .line 1376
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->messenger:Z

    return v0
.end method

.method public isMett()Z
    .registers 2

    .line 992
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->mett:Z

    return v0
.end method

.method public isMomo()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->momo:Z

    return v0
.end method

.method public isMusic()Z
    .registers 2

    .line 1192
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->music:Z

    return v0
.end method

.method public isNightView()Z
    .registers 2

    .line 330
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->nightView:Z

    return v0
.end method

.method public isNotDisturbMode()Z
    .registers 2

    .line 1416
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->notDisturbMode:Z

    return v0
.end method

.method public isOtaMode()I
    .registers 2

    .line 904
    iget v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->otaMode:I

    return v0
.end method

.method public isOtherApp()Z
    .registers 2

    .line 1088
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->otherApp:Z

    return v0
.end method

.method public isPaypalWallet()Z
    .registers 2

    .line 848
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->paypalWallet:Z

    return v0
.end method

.method public isPedometerGoal()Z
    .registers 2

    .line 944
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->pedometerGoal:Z

    return v0
.end method

.method public isPhoto()Z
    .registers 2

    .line 1200
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->photo:Z

    return v0
.end method

.method public isPinduoduo()Z
    .registers 2

    .line 568
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->pinduoduo:Z

    return v0
.end method

.method public isQq()Z
    .registers 2

    .line 1344
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qq:Z

    return v0
.end method

.method public isQqBusinessCards()Z
    .registers 2

    .line 776
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qqBusinessCards:Z

    return v0
.end method

.method public isQqEmail()Z
    .registers 2

    .line 480
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qqEmail:Z

    return v0
.end method

.method public isQunarTrip()Z
    .registers 2

    .line 712
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qunarTrip:Z

    return v0
.end method

.method public isRailway12306()Z
    .registers 2

    .line 608
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->railway12306:Z

    return v0
.end method

.method public isReset()Z
    .registers 2

    .line 1216
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->reset:Z

    return v0
.end method

.method public isScreenBrightness()Z
    .registers 2

    .line 920
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenBrightness:Z

    return v0
.end method

.method public isScreenOnDuration()Z
    .registers 2

    .line 376
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenOnDuration:Z

    return v0
.end method

.method public isScreenSetting()Z
    .registers 2

    .line 242
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenSetting:Z

    return v0
.end method

.method public isScreenShutdownTime()Z
    .registers 2

    .line 927
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenOnDuration:Z

    return v0
.end method

.method public isSedentaryReminder()Z
    .registers 2

    .line 1168
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sedentaryReminder:Z

    return v0
.end method

.method public isSedentaryReminderB()Z
    .registers 2

    .line 1080
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sedentaryReminderB:Z

    return v0
.end method

.method public isSkype()Z
    .registers 2

    .line 1336
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->skype:Z

    return v0
.end method

.method public isSleep()Z
    .registers 2

    .line 1256
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sleep:Z

    return v0
.end method

.method public isSleepDataShowType()I
    .registers 2

    .line 912
    iget v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sleepDataShowType:I

    return v0
.end method

.method public isSms()Z
    .registers 2

    .line 1304
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sms:Z

    return v0
.end method

.method public isSos()Z
    .registers 2

    .line 1048
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sos:Z

    return v0
.end method

.method public isSoul()Z
    .registers 2

    .line 488
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->soul:Z

    return v0
.end method

.method public isSportModeAdapter()Z
    .registers 2

    .line 1448
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sportModeAdapter:Z

    return v0
.end method

.method public isStandingDurationGoal()Z
    .registers 2

    .line 960
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->standingDurationGoal:Z

    return v0
.end method

.method public isStress()Z
    .registers 2

    .line 984
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->stress:Z

    return v0
.end method

.method public isSweepConnectionBracelet()Z
    .registers 2

    .line 1136
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sweepConnectionBracelet:Z

    return v0
.end method

.method public isTantan()Z
    .registers 2

    .line 592
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tantan:Z

    return v0
.end method

.method public isTaobao()Z
    .registers 2

    .line 600
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->taobao:Z

    return v0
.end method

.method public isTargetReachingReminder()Z
    .registers 2

    .line 1184
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->targetReachingReminder:Z

    return v0
.end method

.method public isTaskAndRewards()Z
    .registers 2

    .line 896
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->taskAndRewards:Z

    return v0
.end method

.method public isTelegram()Z
    .registers 2

    .line 1400
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->telegram:Z

    return v0
.end method

.method public isTelegramBusinessCards()Z
    .registers 2

    .line 824
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->telegramBusinessCards:Z

    return v0
.end method

.method public isTemperature()Z
    .registers 2

    .line 1272
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->temperature:Z

    return v0
.end method

.method public isTencentMap()Z
    .registers 2

    .line 760
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tencentMap:Z

    return v0
.end method

.method public isTencentMeeting()Z
    .registers 2

    .line 704
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tencentMeeting:Z

    return v0
.end method

.method public isTiktokBusinessCards()Z
    .registers 2

    .line 816
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tiktokBusinessCards:Z

    return v0
.end method

.method public isTimezoneRequired()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->timezoneRequired:Z

    return v0
.end method

.method public isTongchengTrip()Z
    .registers 2

    .line 728
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tongchengTrip:Z

    return v0
.end method

.method public isTraffic12123()Z
    .registers 2

    .line 672
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->traffic12123:Z

    return v0
.end method

.method public isTwitter()Z
    .registers 2

    .line 1280
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->twitter:Z

    return v0
.end method

.method public isViber()Z
    .registers 2

    .line 1392
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->viber:Z

    return v0
.end method

.method public isVibrationAdjustment()Z
    .registers 2

    .line 322
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->vibrationAdjustment:Z

    return v0
.end method

.method public isVk()Z
    .registers 2

    .line 1384
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->vk:Z

    return v0
.end method

.method public isWallet()Z
    .registers 2

    .line 864
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wallet:Z

    return v0
.end method

.method public isWangyiEmail()Z
    .registers 2

    .line 688
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wangyiEmail:Z

    return v0
.end method

.method public isWatchsAppBusinessCards()Z
    .registers 2

    .line 792
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->watchsAppBusinessCards:Z

    return v0
.end method

.method public isWearingHabit()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wearingHabit:Z

    return v0
.end method

.method public isWeatherForecast()Z
    .registers 2

    .line 1264
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weatherForecast:Z

    return v0
.end method

.method public isWeatherForecastB()Z
    .registers 2

    .line 1464
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weatherForecastB:Z

    return v0
.end method

.method public isWechat()Z
    .registers 2

    .line 1352
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wechat:Z

    return v0
.end method

.method public isWechatBusinessCards()Z
    .registers 2

    .line 768
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wechatBusinessCards:Z

    return v0
.end method

.method public isWechatWallet()Z
    .registers 2

    .line 832
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wechatWallet:Z

    return v0
.end method

.method public isWeibo()Z
    .registers 2

    .line 416
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weibo:Z

    return v0
.end method

.method public isWeightRecord()Z
    .registers 2

    .line 1064
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weightRecord:Z

    return v0
.end method

.method public isWhatsapp()Z
    .registers 2

    .line 1320
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->whatsapp:Z

    return v0
.end method

.method public isWomenHealth()Z
    .registers 2

    .line 1440
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->womenHealth:Z

    return v0
.end method

.method public isWomenHealthProtocol()Z
    .registers 2

    .line 1472
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->womenHealthProtocol:Z

    return v0
.end method

.method public isWorkWechat()Z
    .registers 2

    .line 576
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->workWechat:Z

    return v0
.end method

.method public isWristScreen()Z
    .registers 2

    .line 1208
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wristScreen:Z

    return v0
.end method

.method public isWristScreenB()Z
    .registers 2

    .line 1072
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wristScreenB:Z

    return v0
.end method

.method public isXbusinessCards()Z
    .registers 2

    .line 290
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xbusinessCards:Z

    return v0
.end method

.method public isXianyu()Z
    .registers 2

    .line 616
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xianyu:Z

    return v0
.end method

.method public isXiaohongshu()Z
    .registers 2

    .line 424
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xiaohongshu:Z

    return v0
.end method

.method public isXiechengTrip()Z
    .registers 2

    .line 720
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xiechengTrip:Z

    return v0
.end method

.method public isZhihu()Z
    .registers 2

    .line 624
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->zhihu:Z

    return v0
.end method

.method public isZhixingTrainTickets()Z
    .registers 2

    .line 744
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->zhixingTrainTickets:Z

    return v0
.end method

.method public isZoom()Z
    .registers 2

    .line 496
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->zoom:Z

    return v0
.end method

.method public isxBusinessCards()Z
    .registers 2

    .line 800
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xbusinessCards:Z

    return v0
.end method

.method public setAlarm(Z)V
    .registers 2

    .line 1164
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alarm:Z

    return-void
.end method

.method public setAlarmClock(Z)V
    .registers 2

    .line 238
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alarmClock:Z

    return-void
.end method

.method public setAlibaba(Z)V
    .registers 2

    .line 636
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alibaba:Z

    return-void
.end method

.method public setAlipay(Z)V
    .registers 2

    .line 444
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alipay:Z

    return-void
.end method

.method public setAlipayWallet(Z)V
    .registers 2

    .line 844
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->alipayWallet:Z

    return-void
.end method

.method public setAllDayNotDisturbMode(Z)V
    .registers 2

    .line 302
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->allDayNotDisturbMode:Z

    return-void
.end method

.method public setAudioBluetooth(Z)V
    .registers 2

    .line 1044
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->audioBluetooth:Z

    return-void
.end method

.method public setBaiduMap(Z)V
    .registers 2

    .line 756
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->baiduMap:Z

    return-void
.end method

.method public setBaiduTieBa(Z)V
    .registers 2

    .line 508
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->baiduTieBa:Z

    return-void
.end method

.method public setBilibili(Z)V
    .registers 2

    .line 468
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bilibili:Z

    return-void
.end method

.method public setBloodGlucose(Z)V
    .registers 2

    .line 980
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodGlucose:Z

    return-void
.end method

.method public setBloodoxygen(Z)V
    .registers 2

    .line 1244
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodoxygen:Z

    return-void
.end method

.method public setBloodpressure(Z)V
    .registers 2

    .line 1236
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodpressure:Z

    return-void
.end method

.method public setBloodpressureCalibration(Z)V
    .registers 2

    .line 1020
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bloodpressureCalibration:Z

    return-void
.end method

.method public setBluetoothName(Ljava/lang/String;)V
    .registers 2

    .line 1108
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->bluetoothName:Ljava/lang/String;

    return-void
.end method

.method public setBoss(Z)V
    .registers 2

    .line 476
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->boss:Z

    return-void
.end method

.method public setBusinessCards(Z)V
    .registers 2

    .line 876
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->businessCards:Z

    return-void
.end method

.method public setCalendar(Z)V
    .registers 2

    .line 588
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calendar:Z

    return-void
.end method

.method public setCalendarSchedule(Z)V
    .registers 2

    .line 318
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calendarSchedule:Z

    return-void
.end method

.method public setCalorieGoal(Z)V
    .registers 2

    .line 940
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->calorieGoal:Z

    return-void
.end method

.method public setChipSolution(Ljava/lang/String;)V
    .registers 2

    .line 1116
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->chipSolution:Ljava/lang/String;

    return-void
.end method

.method public setClassSchedule(Z)V
    .registers 2

    .line 892
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->classSchedule:Z

    return-void
.end method

.method public setContacts(Z)V
    .registers 2

    .line 972
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->contacts:Z

    return-void
.end method

.method public setDeviceDisableTime(Z)V
    .registers 2

    .line 364
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceDisableTime:Z

    return-void
.end method

.method public setDeviceLanguage(Z)V
    .registers 2

    .line 1004
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceLanguage:Z

    return-void
.end method

.method public setDeviceSetting(Z)V
    .registers 2

    .line 1412
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->deviceSetting:Z

    return-void
.end method

.method public setDewu(Z)V
    .registers 2

    .line 684
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dewu:Z

    return-void
.end method

.method public setDialCenter(Z)V
    .registers 2

    .line 1428
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dialCenter:Z

    return-void
.end method

.method public setDialCenterA(Z)V
    .registers 2

    .line 1460
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dialCenterA:Z

    return-void
.end method

.method public setDianping(Z)V
    .registers 2

    .line 452
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dianping:Z

    return-void
.end method

.method public setDidaTravel(Z)V
    .registers 2

    .line 660
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->didaTravel:Z

    return-void
.end method

.method public setDidiTravel(Z)V
    .registers 2

    .line 644
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->didiTravel:Z

    return-void
.end method

.method public setDingding(Z)V
    .registers 2

    .line 516
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->dingding:Z

    return-void
.end method

.method public setDouban(Z)V
    .registers 2

    .line 524
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->douban:Z

    return-void
.end method

.method public setDouyin(Z)V
    .registers 2

    .line 396
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->douyin:Z

    return-void
.end method

.method public setDouyinQuick(Z)V
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->douyinQuick:Z

    return-void
.end method

.method public setDrinkWaterRecordSync(Z)V
    .registers 2

    .line 310
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->drinkWaterRecordSync:Z

    return-void
.end method

.method public setDrinkingWaterMode(Z)V
    .registers 2

    .line 1436
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->drinkingWaterMode:Z

    return-void
.end method

.method public setEcg(Z)V
    .registers 2

    .line 1252
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->ecg:Z

    return-void
.end method

.method public setEle(Z)V
    .registers 2

    .line 532
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->ele:Z

    return-void
.end method

.method public setEmail(Z)V
    .registers 2

    .line 1300
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->email:Z

    return-void
.end method

.method public setExerciseDurationGoal(Z)V
    .registers 2

    .line 956
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->exerciseDurationGoal:Z

    return-void
.end method

.method public setFacebook(Z)V
    .registers 2

    .line 1292
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->facebook:Z

    return-void
.end method

.method public setFacebookBusinessCards(Z)V
    .registers 2

    .line 788
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->facebookBusinessCards:Z

    return-void
.end method

.method public setFamilyHealth(Z)V
    .registers 2

    .line 1036
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->familyHealth:Z

    return-void
.end method

.method public setFeizhuTrip(Z)V
    .registers 2

    .line 740
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->feizhuTrip:Z

    return-void
.end method

.method public setFindBracelet(Z)V
    .registers 2

    .line 1148
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->findBracelet:Z

    return-void
.end method

.method public setFwVersion(Ljava/lang/String;)V
    .registers 2

    .line 1124
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->fwVersion:Ljava/lang/String;

    return-void
.end method

.method public setGameTimeManagement(Z)V
    .registers 2

    .line 348
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gameTimeManagement:Z

    return-void
.end method

.method public setGaodeMap(Z)V
    .registers 2

    .line 540
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gaodeMap:Z

    return-void
.end method

.method public setGestureControl(Z)V
    .registers 2

    .line 278
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->gestureControl:Z

    return-void
.end method

.method public setHaluoTravel(Z)V
    .registers 2

    .line 652
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->haluoTravel:Z

    return-void
.end method

.method public setHealthReminders(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->healthReminders:Z

    return-void
.end method

.method public setHeart(Z)V
    .registers 2

    .line 1228
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->heart:Z

    return-void
.end method

.method public setHeartRateIntervalAndWarning(Z)V
    .registers 2

    .line 1180
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->heartRateIntervalAndWarning:Z

    return-void
.end method

.method public setHeartrateAssistance(Z)V
    .registers 2

    .line 884
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->heartrateAssistance:Z

    return-void
.end method

.method public setHighPrecisionSleep(Z)V
    .registers 2

    .line 262
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->highPrecisionSleep:Z

    return-void
.end method

.method public setHonorOfKings(Z)V
    .registers 2

    .line 700
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->honorOfKings:Z

    return-void
.end method

.method public setHourMode12(Z)V
    .registers 2

    .line 1012
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->hourMode12:Z

    return-void
.end method

.method public setHrv(Z)V
    .registers 2

    .line 356
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->hrv:Z

    return-void
.end method

.method public setImageSrc(Ljava/lang/String;)V
    .registers 2

    .line 1132
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->imageSrc:Ljava/lang/String;

    return-void
.end method

.method public setIncoming(Z)V
    .registers 2

    .line 1316
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->incoming:Z

    return-void
.end method

.method public setInsBusinessCards(Z)V
    .registers 2

    .line 812
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->insBusinessCards:Z

    return-void
.end method

.method public setInstagram(Z)V
    .registers 2

    .line 1364
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->instagram:Z

    return-void
.end method

.method public setJingdong(Z)V
    .registers 2

    .line 548
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->jingdong:Z

    return-void
.end method

.method public setKaKaoTalk(Z)V
    .registers 2

    .line 1028
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kaKaoTalk:Z

    return-void
.end method

.method public setKakaotalk(Z)V
    .registers 2

    .line 1060
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kaKaoTalk:Z

    return-void
.end method

.method public setKeepHealth(Z)V
    .registers 2

    .line 286
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->keepHealth:Z

    return-void
.end method

.method public setKuaishou(Z)V
    .registers 2

    .line 404
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kuaishou:Z

    return-void
.end method

.method public setKuaishouQuick(Z)V
    .registers 2

    .line 556
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->kuaishouQuick:Z

    return-void
.end method

.method public setLine(Z)V
    .registers 2

    .line 1332
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->line:Z

    return-void
.end method

.method public setLinkedin(Z)V
    .registers 2

    .line 1372
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->linkedin:Z

    return-void
.end method

.method public setMaimai(Z)V
    .registers 2

    .line 564
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->maimai:Z

    return-void
.end method

.method public setManualBPRecording(Z)V
    .registers 2

    .line 198
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualBPRecording:Z

    return-void
.end method

.method public setManualBloodOxygen(Z)V
    .registers 2

    .line 214
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualBloodOxygen:Z

    return-void
.end method

.method public setManualHeartRate(Z)V
    .registers 2

    .line 206
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualHeartRate:Z

    return-void
.end method

.method public setManualHeartRateVariability(Z)V
    .registers 2

    .line 230
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualHeartRateVariability:Z

    return-void
.end method

.method public setManualStress(Z)V
    .registers 2

    .line 222
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->manualStress:Z

    return-void
.end method

.method public setMapNavigation(Z)V
    .registers 2

    .line 860
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->mapNavigation:Z

    return-void
.end method

.method public setMaxAlarmClockCount(I)V
    .registers 2

    .line 372
    iput p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->maxAlarmClockCount:I

    return-void
.end method

.method public setMeituan(Z)V
    .registers 2

    .line 436
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->meituan:Z

    return-void
.end method

.method public setMeiyou(Z)V
    .registers 2

    .line 668
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->meiyou:Z

    return-void
.end method

.method public setMessagerNotification(Z)V
    .registers 2

    .line 1156
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->messagerNotification:Z

    return-void
.end method

.method public setMessenger(Z)V
    .registers 2

    .line 1380
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->messenger:Z

    return-void
.end method

.method public setMett(Z)V
    .registers 2

    .line 996
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->mett:Z

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .registers 2

    .line 1100
    iput-object p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->model:Ljava/lang/String;

    return-void
.end method

.method public setMomo(Z)V
    .registers 2

    .line 460
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->momo:Z

    return-void
.end method

.method public setMusic(Z)V
    .registers 2

    .line 1196
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->music:Z

    return-void
.end method

.method public setNightView(Z)V
    .registers 2

    .line 334
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->nightView:Z

    return-void
.end method

.method public setNotDisturbMode(Z)V
    .registers 2

    .line 1420
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->notDisturbMode:Z

    return-void
.end method

.method public setOtaMode(I)V
    .registers 2

    .line 908
    iput p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->otaMode:I

    return-void
.end method

.method public setOtherApp(Z)V
    .registers 2

    .line 1092
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->otherApp:Z

    return-void
.end method

.method public setPaypalWallet(Z)V
    .registers 2

    .line 852
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->paypalWallet:Z

    return-void
.end method

.method public setPedometerGoal(Z)V
    .registers 2

    .line 948
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->pedometerGoal:Z

    return-void
.end method

.method public setPhoto(Z)V
    .registers 2

    .line 1204
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->photo:Z

    return-void
.end method

.method public setPinduoduo(Z)V
    .registers 2

    .line 572
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->pinduoduo:Z

    return-void
.end method

.method public setQq(Z)V
    .registers 2

    .line 1348
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qq:Z

    return-void
.end method

.method public setQqBusinessCards(Z)V
    .registers 2

    .line 780
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qqBusinessCards:Z

    return-void
.end method

.method public setQqEmail(Z)V
    .registers 2

    .line 484
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qqEmail:Z

    return-void
.end method

.method public setQunarTrip(Z)V
    .registers 2

    .line 716
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->qunarTrip:Z

    return-void
.end method

.method public setRailway12306(Z)V
    .registers 2

    .line 612
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->railway12306:Z

    return-void
.end method

.method public setReset(Z)V
    .registers 2

    .line 1220
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->reset:Z

    return-void
.end method

.method public setScreenBrightness(Z)V
    .registers 2

    .line 924
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenBrightness:Z

    return-void
.end method

.method public setScreenOnDuration(Z)V
    .registers 2

    .line 380
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenOnDuration:Z

    return-void
.end method

.method public setScreenSetting(Z)V
    .registers 2

    .line 246
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenSetting:Z

    return-void
.end method

.method public setScreenShutdownTime(Z)V
    .registers 2

    .line 931
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->screenOnDuration:Z

    return-void
.end method

.method public setSedentaryReminder(Z)V
    .registers 2

    .line 1172
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sedentaryReminder:Z

    return-void
.end method

.method public setSedentaryReminderB(Z)V
    .registers 2

    .line 1084
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sedentaryReminderB:Z

    return-void
.end method

.method public setSkype(Z)V
    .registers 2

    .line 1340
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->skype:Z

    return-void
.end method

.method public setSleep(Z)V
    .registers 2

    .line 1260
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sleep:Z

    return-void
.end method

.method public setSleepDataShowType(I)V
    .registers 2

    .line 916
    iput p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sleepDataShowType:I

    return-void
.end method

.method public setSms(Z)V
    .registers 2

    .line 1308
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sms:Z

    return-void
.end method

.method public setSos(Z)V
    .registers 2

    .line 1052
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sos:Z

    return-void
.end method

.method public setSoul(Z)V
    .registers 2

    .line 492
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->soul:Z

    return-void
.end method

.method public setSportModeAdapter(Z)V
    .registers 2

    .line 1452
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sportModeAdapter:Z

    return-void
.end method

.method public setStandingDurationGoal(Z)V
    .registers 2

    .line 964
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->standingDurationGoal:Z

    return-void
.end method

.method public setStress(Z)V
    .registers 2

    .line 988
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->stress:Z

    return-void
.end method

.method public setSweepConnectionBracelet(Z)V
    .registers 2

    .line 1140
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->sweepConnectionBracelet:Z

    return-void
.end method

.method public setTantan(Z)V
    .registers 2

    .line 596
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tantan:Z

    return-void
.end method

.method public setTaobao(Z)V
    .registers 2

    .line 604
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->taobao:Z

    return-void
.end method

.method public setTargetReachingReminder(Z)V
    .registers 2

    .line 1188
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->targetReachingReminder:Z

    return-void
.end method

.method public setTaskAndRewards(Z)V
    .registers 2

    .line 900
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->taskAndRewards:Z

    return-void
.end method

.method public setTelegram(Z)V
    .registers 2

    .line 1404
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->telegram:Z

    return-void
.end method

.method public setTelegramBusinessCards(Z)V
    .registers 2

    .line 828
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->telegramBusinessCards:Z

    return-void
.end method

.method public setTemperature(Z)V
    .registers 2

    .line 1276
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->temperature:Z

    return-void
.end method

.method public setTencentMap(Z)V
    .registers 2

    .line 764
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tencentMap:Z

    return-void
.end method

.method public setTencentMeeting(Z)V
    .registers 2

    .line 708
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tencentMeeting:Z

    return-void
.end method

.method public setTiktokBusinessCards(Z)V
    .registers 2

    .line 820
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tiktokBusinessCards:Z

    return-void
.end method

.method public setTimezoneRequired(Z)V
    .registers 2

    .line 190
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->timezoneRequired:Z

    return-void
.end method

.method public setTongchengTrip(Z)V
    .registers 2

    .line 732
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->tongchengTrip:Z

    return-void
.end method

.method public setTraffic12123(Z)V
    .registers 2

    .line 676
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->traffic12123:Z

    return-void
.end method

.method public setTwitter(Z)V
    .registers 2

    .line 1284
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->twitter:Z

    return-void
.end method

.method public setViber(Z)V
    .registers 2

    .line 1396
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->viber:Z

    return-void
.end method

.method public setVibrationAdjustment(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->vibrationAdjustment:Z

    return-void
.end method

.method public setVk(Z)V
    .registers 2

    .line 1388
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->vk:Z

    return-void
.end method

.method public setWallet(Z)V
    .registers 2

    .line 868
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wallet:Z

    return-void
.end method

.method public setWangyiEmail(Z)V
    .registers 2

    .line 692
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wangyiEmail:Z

    return-void
.end method

.method public setWatchsAppBusinessCards(Z)V
    .registers 2

    .line 796
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->watchsAppBusinessCards:Z

    return-void
.end method

.method public setWearingHabit(Z)V
    .registers 2

    .line 270
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wearingHabit:Z

    return-void
.end method

.method public setWeatherForecast(Z)V
    .registers 2

    .line 1268
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weatherForecast:Z

    return-void
.end method

.method public setWeatherForecastB(Z)V
    .registers 2

    .line 1468
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weatherForecastB:Z

    return-void
.end method

.method public setWechat(Z)V
    .registers 2

    .line 1356
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wechat:Z

    return-void
.end method

.method public setWechatBusinessCards(Z)V
    .registers 2

    .line 772
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wechatBusinessCards:Z

    return-void
.end method

.method public setWechatWallet(Z)V
    .registers 2

    .line 836
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wechatWallet:Z

    return-void
.end method

.method public setWeibo(Z)V
    .registers 2

    .line 420
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weibo:Z

    return-void
.end method

.method public setWeightRecord(Z)V
    .registers 2

    .line 1068
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->weightRecord:Z

    return-void
.end method

.method public setWhatsapp(Z)V
    .registers 2

    .line 1324
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->whatsapp:Z

    return-void
.end method

.method public setWomenHealth(Z)V
    .registers 2

    .line 1444
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->womenHealth:Z

    return-void
.end method

.method public setWomenHealthProtocol(Z)V
    .registers 2

    .line 1476
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->womenHealthProtocol:Z

    return-void
.end method

.method public setWorkWechat(Z)V
    .registers 2

    .line 580
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->workWechat:Z

    return-void
.end method

.method public setWristScreen(Z)V
    .registers 2

    .line 1212
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wristScreen:Z

    return-void
.end method

.method public setWristScreenB(Z)V
    .registers 2

    .line 1076
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->wristScreenB:Z

    return-void
.end method

.method public setXbusinessCards(Z)V
    .registers 2

    .line 294
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xbusinessCards:Z

    return-void
.end method

.method public setXianyu(Z)V
    .registers 2

    .line 620
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xianyu:Z

    return-void
.end method

.method public setXiaohongshu(Z)V
    .registers 2

    .line 428
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xiaohongshu:Z

    return-void
.end method

.method public setXiechengTrip(Z)V
    .registers 2

    .line 724
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xiechengTrip:Z

    return-void
.end method

.method public setZhihu(Z)V
    .registers 2

    .line 628
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->zhihu:Z

    return-void
.end method

.method public setZhixingTrainTickets(Z)V
    .registers 2

    .line 748
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->zhixingTrainTickets:Z

    return-void
.end method

.method public setZoom(Z)V
    .registers 2

    .line 500
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->zoom:Z

    return-void
.end method

.method public setxBusinessCards(Z)V
    .registers 2

    .line 804
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/DeviceModel;->xbusinessCards:Z

    return-void
.end method
