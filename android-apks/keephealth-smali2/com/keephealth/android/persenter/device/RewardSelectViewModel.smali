.class public Lcom/keephealth/android/persenter/device/RewardSelectViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "RewardSelectViewModel.java"


# instance fields
.field public cancelDuihuan:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public exchangeRewardBeanMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/childmodule/bean/ExchangeRewardBean;",
            ">;"
        }
    .end annotation
.end field

.field handler:Landroid/os/Handler;

.field public listMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public mDuihuan:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 55
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->listMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->exchangeRewardBeanMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 59
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->mDuihuan:Landroidx/lifecycle/MutableLiveData;

    .line 60
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->cancelDuihuan:Landroidx/lifecycle/MutableLiveData;

    .line 128
    new-instance v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$3;-><init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public exchangeReward(Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;)V
    .registers 3

    .line 95
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/ExchangeRewardHttpBean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 96
    new-instance v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$2;-><init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/RewardHttp;->exchangeReward(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public selectRewardData()V
    .registers 2

    .line 62
    new-instance v0, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$1;-><init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/RewardHttp;->selectReward(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public setCancelReward()V
    .registers 6

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u53d6\u6d88\u5151\u6362_send:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setCancelExchangeReward()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmodel"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setCancelExchangeReward()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$6;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$6;-><init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public setReward()V
    .registers 6

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u5151\u6362_send:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setExchangeReward()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "courseviewmodel"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->setExchangeReward()[B

    move-result-object v1

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;

    invoke-direct {v4, p0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$4;-><init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public setRewardAllMonery()V
    .registers 4

    .line 180
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget v1, Lcom/keephealth/android/app/AppApplication;->golds:I

    invoke-static {v1}, Lcom/keephealth/android/util/ble/CmdHelper;->setGold(I)[B

    move-result-object v1

    new-instance v2, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$5;

    invoke-direct {v2, p0}, Lcom/keephealth/android/persenter/device/RewardSelectViewModel$5;-><init>(Lcom/keephealth/android/persenter/device/RewardSelectViewModel;)V

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
