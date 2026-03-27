.class Lcom/keephealth/android/util/LocationUtil$4;
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
        "Lcom/keephealth/android/model/bean/WeatherThreeDays;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtil$4;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 264
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$4;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

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
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/WeatherThreeDays;",
            ">;)V"
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/WeatherThreeDays;

    if-nez p1, :cond_9

    return-void

    .line 231
    :cond_9
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/WeatherThreeDays;->getNow()Lcom/keephealth/android/model/bean/WeatherResult;

    move-result-object v0

    .line 232
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/WeatherThreeDays;->getDaily()Ljava/util/List;

    move-result-object p1

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/keephealth/android/model/bean/WeatherNext;

    .line 234
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/WeatherNext;->getIconDay()I

    move-result v3

    invoke-static {v3}, Lcom/keephealth/android/util/LocationUtil;->getWeatherType(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/WeatherNext;->setIconDay(I)V

    goto :goto_15

    :cond_2d
    if-eqz v0, :cond_7c

    if-eqz p1, :cond_7c

    .line 236
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_7c

    .line 239
    :cond_38
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    if-eqz p1, :cond_7c

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_7c

    .line 241
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/WeatherResult;->getTemp()I

    move-result v0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/WeatherNext;

    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/keephealth/android/model/bean/WeatherNext;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/WeatherNext;

    invoke-static {v3, v0, v4, v5, p1}, Lcom/keephealth/android/util/ble/CmdHelper;->setWeather(IILcom/keephealth/android/model/bean/WeatherNext;Lcom/keephealth/android/model/bean/WeatherNext;Lcom/keephealth/android/model/bean/WeatherNext;)[B

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/util/LocationUtil$4$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/util/LocationUtil$4$1;-><init>(Lcom/keephealth/android/util/LocationUtil$4;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_7c
    :goto_7c
    return-void
.end method
