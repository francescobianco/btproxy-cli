.class Lcom/keephealth/android/util/LocationUtil$5;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/util/LocationUtil;->setWeather(Lcom/keephealth/android/model/bean/WeatherBean;Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;


# direct methods
.method constructor <init>(Lcom/keephealth/android/util/ble/BleCallbackWrapper;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/keephealth/android/util/LocationUtil$5;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 300
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$5;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 288
    const-string v0, "ffr3ddft\u6570\u636e"

    const-string v1, "\u53d1\u9001\u5929\u6c14onSuccess\uff1a"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    .line 289
    new-array v2, v2, [B

    .line 290
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v2}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 292
    aget-byte p1, v2, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xa5

    if-ne p1, v0, :cond_34

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/util/LocationUtil$5;->val$callback:Lcom/keephealth/android/util/ble/BleCallbackWrapper;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/BleCallbackWrapper;->setSuccess()V

    :cond_34
    return-void
.end method
