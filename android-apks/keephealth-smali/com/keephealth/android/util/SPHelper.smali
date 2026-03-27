.class public Lcom/keephealth/android/util/SPHelper;
.super Ljava/lang/Object;
.source "SPHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefaultUserBean()Lcom/keephealth/android/model/bean/UserBean;
    .registers 4

    .line 194
    new-instance v0, Lcom/keephealth/android/model/bean/UserBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/UserBean;-><init>()V

    .line 195
    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setUserId(Ljava/lang/String;)V

    .line 196
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setUserName(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/keephealth/android/util/DateUtil;->todayYearMonthDay()[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x14

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setYear(I)V

    const/4 v1, 0x1

    .line 198
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setMonth(I)V

    .line 199
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setDay(I)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setBirthday(Ljava/lang/String;)V

    const/16 v1, 0xaa

    .line 201
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setHeight(I)V

    const/high16 v1, 0x42880000    # 68.0f

    .line 202
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setHeightLb(F)V

    const/high16 v1, 0x42700000    # 60.0f

    .line 203
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    const/high16 v1, 0x43040000    # 132.0f

    .line 204
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeightLb(F)V

    const/16 v1, 0xa

    .line 205
    invoke-virtual {v0, v1}, Lcom/keephealth/android/model/bean/UserBean;->setWeightSt(I)V

    .line 206
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    return-object v0
.end method

.method public static getAlarms()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 122
    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->alarms:Ljava/util/List;

    return-object v0
.end method

.method public static getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 93
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBindMac()Ljava/lang/String;
    .registers 1

    .line 100
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_8
    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentUserBean()Lcom/keephealth/android/model/bean/UserBean;
    .registers 3

    .line 220
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_INFO_KEY"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_20

    .line 224
    :cond_17
    const-class v1, Lcom/keephealth/android/model/bean/UserBean;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/UserBean;

    goto :goto_24

    .line 222
    :cond_20
    :goto_20
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->createDefaultUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v0

    :goto_24
    return-object v0
.end method

.method public static getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;
    .registers 4

    .line 168
    const-string p1, "DEVICE_CONFIG_KEY"

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_43

    .line 170
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43

    .line 172
    :try_start_12
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    new-instance v0, Lcom/keephealth/android/util/SPHelper$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/SPHelper$1;-><init>()V

    .line 173
    invoke-virtual {v0}, Lcom/keephealth/android/util/SPHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/util/ServiceDataDeserializer;

    invoke-direct {v1}, Lcom/keephealth/android/util/ServiceDataDeserializer;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    .line 175
    const-class v0, Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/model/bean/DeviceConfig;

    if-nez p0, :cond_3c

    .line 178
    new-instance p0, Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-direct {p0}, Lcom/keephealth/android/model/bean/DeviceConfig;-><init>()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_3c} :catch_3d

    :cond_3c
    return-object p0

    .line 182
    :catch_3d
    new-instance p0, Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-direct {p0}, Lcom/keephealth/android/model/bean/DeviceConfig;-><init>()V

    return-object p0

    .line 186
    :cond_43
    new-instance p0, Lcom/keephealth/android/model/bean/DeviceConfig;

    invoke-direct {p0}, Lcom/keephealth/android/model/bean/DeviceConfig;-><init>()V

    return-object p0
.end method

.method public static getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;
    .registers 3

    .line 238
    const-string v0, "BIND_DEVICE_MODEL"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1c

    .line 239
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 242
    :cond_13
    const-class v0, Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-static {p0, v0}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/model/bean/DeviceModel;

    return-object p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;
    .registers 2

    .line 57
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_e
    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    return-object v0
.end method

.method public static getDeviceUpdate()Lcom/keephealth/android/model/bean/DeviceUpdate;
    .registers 3

    .line 268
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v1, "DEVICE_UPDATE_KEY"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 270
    const-class v1, Lcom/keephealth/android/model/bean/DeviceUpdate;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DeviceUpdate;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFunction()Lcom/keephealth/android/model/bean/Function;
    .registers 3

    .line 50
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FUNCTION"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-class v1, Lcom/keephealth/android/model/bean/Function;

    invoke-static {v0, v1}, Lcom/keephealth/android/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/Function;

    if-nez v0, :cond_1d

    .line 52
    new-instance v0, Lcom/keephealth/android/model/bean/Function;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/Function;-><init>()V

    :cond_1d
    return-object v0
.end method

.method public static getHeartRateData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;
    .registers 3

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 279
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/ui/main/bean/RealTimeDataBean;

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public static getInterval()Lcom/keephealth/android/model/bean/HeartRateInterval;
    .registers 2

    .line 64
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_e
    iget-object v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->interval:Lcom/keephealth/android/model/bean/HeartRateInterval;

    return-object v0
.end method

.method public static getWaterGoal()I
    .registers 3

    .line 252
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WATER_GOAL"

    const/16 v2, 0x708

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getWaterSwitch()Z
    .registers 3

    .line 260
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "WATER_GOAL_SWITCH"

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public static getWeatherData(Landroid/content/Context;Ljava/lang/String;)Lcom/keephealth/android/model/bean/WeatherBean;
    .registers 3

    const/4 v0, 0x0

    .line 285
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 287
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/keephealth/android/model/bean/WeatherBean;

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keephealth/android/model/bean/WeatherBean;

    return-object p0

    :cond_1b
    return-object v0
.end method

.method public static saveAlarms(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/Alarm;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 116
    :cond_3
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 117
    iput-object p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->alarms:Ljava/util/List;

    .line 118
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveAppNotice(Lcom/keephealth/android/model/bean/AppNotice;Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0x3c

    .line 125
    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    .line 126
    iput-object p0, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->notice:Lcom/keephealth/android/model/bean/AppNotice;

    .line 127
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveBLEDevice(Lcom/keephealth/android/model/bean/BLEDevice;I)V
    .registers 6

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "saveBLEDevice:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "tty5rt"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x37

    invoke-static {v0, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveBLEDevice_a:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 88
    iput-object p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    .line 89
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V
    .registers 2

    const/4 v0, 0x1

    .line 153
    invoke-static {p0, v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;Z)V

    return-void
.end method

.method public static saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;Z)V
    .registers 3

    .line 156
    invoke-static {p0}, Lcom/keephealth/android/util/ObjectUtil;->isCollectionEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_10

    .line 160
    invoke-static {}, Lcom/keephealth/android/util/CacheHelper;->getInstance()Lcom/keephealth/android/util/CacheHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/CacheHelper;->isLogin()Z

    .line 164
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "deviceConfig:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gff333"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DEVICE_CONFIG_KEY"

    invoke-static {p0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V
    .registers 4

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521d\u6b21_saveDeviceModel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FDD3221"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "BIND_DEVICE_MODEL"

    if-nez p0, :cond_27

    .line 232
    const-string p0, ""

    invoke-static {p1, v0, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2e

    .line 234
    :cond_27
    invoke-static {p0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2e
    return-void
.end method

.method public static saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V
    .registers 3

    .line 79
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 80
    iput-object p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->deviceState:Lcom/keephealth/android/model/bean/DeviceState;

    .line 81
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveDeviceUpdate(Lcom/keephealth/android/model/bean/DeviceUpdate;)V
    .registers 3

    .line 264
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    const-string v1, "DEVICE_UPDATE_KEY"

    invoke-static {p0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveInterval(Lcom/keephealth/android/model/bean/HeartRateInterval;)V
    .registers 3

    if-nez p0, :cond_3

    return-void

    .line 74
    :cond_3
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 75
    iput-object p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->interval:Lcom/keephealth/android/model/bean/HeartRateInterval;

    .line 76
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveMusic(ZLjava/lang/String;)V
    .registers 4

    .line 107
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x39

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 108
    iput-boolean p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 109
    iput-object p1, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->musicPackageName:Ljava/lang/String;

    .line 110
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveSleep(Lcom/keephealth/android/model/bean/SleepTimeBean;)V
    .registers 3

    .line 135
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 136
    iput-object p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->sleepTimeBean:Lcom/keephealth/android/model/bean/SleepTimeBean;

    .line 137
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 3

    .line 211
    const-string v0, "USER_INFO_KEY"

    if-nez p0, :cond_e

    .line 212
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_19

    .line 214
    :cond_e
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0}, Lcom/keephealth/android/util/GsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_19
    return-void
.end method

.method public static saveWaterGoal(I)V
    .registers 3

    .line 248
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "WATER_GOAL"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/keephealth/android/util/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveWaterSwitch(Landroid/content/Context;Z)V
    .registers 3

    .line 256
    const-string v0, "WATER_GOAL_SWITCH"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static saveisCall(Z)V
    .registers 3

    .line 147
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 148
    iput-boolean p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    .line 149
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method

.method public static saveisTestTime(Z)V
    .registers 3

    .line 130
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    .line 131
    iput-boolean p0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isTestTime:Z

    .line 132
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceConfig(Lcom/keephealth/android/model/bean/DeviceConfig;)V

    return-void
.end method
