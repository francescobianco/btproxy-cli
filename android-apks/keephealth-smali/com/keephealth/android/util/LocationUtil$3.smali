.class Lcom/keephealth/android/util/LocationUtil$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/LocationUtil;->getWeather(DDLcom/keephealth/android/model/bean/DeviceModel;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/WeatherResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
    .registers 2

    .line 190
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtil$3;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 208
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$3;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/WeatherResult;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/WeatherResult;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5929\u6c14_weatherResult\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffr3ddft\u6570\u636e"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/keephealth/android/model/bean/WeatherBean;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/WeatherBean;-><init>()V

    const/4 v2, 0x1

    .line 196
    iput v2, v0, Lcom/keephealth/android/model/bean/WeatherBean;->state:I

    .line 197
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v2

    iput v2, v0, Lcom/keephealth/android/model/bean/WeatherBean;->tempUnit:I

    .line 198
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/WeatherResult;->getWeatherConditionCode()I

    move-result v2

    invoke-static {v2}, Lcom/keephealth/android/util/LocationUtil;->getWeatherType(I)I

    move-result v2

    iput v2, v0, Lcom/keephealth/android/model/bean/WeatherBean;->weatherType:I

    .line 199
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/WeatherResult;->getTemp()I

    move-result p1

    mul-int/lit8 p1, p1, 0xa

    iput p1, v0, Lcom/keephealth/android/model/bean/WeatherBean;->currentTemp:I

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/keephealth/android/model/bean/WeatherBean;->date:J

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u5929\u6c14\uff1a"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setWeather(Lcom/keephealth/android/model/bean/WeatherBean;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WEATHER_CODE"

    invoke-static {p1, v2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$3;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-static {v0, p1}, Lcom/keephealth/android/util/LocationUtil;->setWeather(Lcom/keephealth/android/model/bean/WeatherBean;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V

    return-void
.end method
