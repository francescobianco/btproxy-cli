.class public Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "VibrateViewModel.java"


# instance fields
.field private allLength:I

.field private dataLength:I

.field public getvibrateList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/SetVibrateBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private receiveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public setVibrateList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->getvibrateList:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->receiveList:Ljava/util/List;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->allLength:I

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->allLength:I

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)Ljava/util/List;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->receiveList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)I
    .registers 1

    .line 37
    iget p0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I

    return p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;I)I
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I

    return p1
.end method

.method static synthetic access$212(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;I)I
    .registers 3

    .line 37
    iget v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I

    return v0
.end method

.method public static mergeByteArrays(Ljava/util/List;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_40

    .line 249
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_40

    .line 255
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_f

    .line 257
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_f

    .line 262
    :cond_20
    new-array v1, v2, [B

    .line 266
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v2, v0

    :cond_27
    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_27

    .line 267
    array-length v4, v3

    if-lez v4, :cond_27

    .line 268
    array-length v4, v3

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_27

    :cond_3f
    return-object v1

    .line 250
    :cond_40
    :goto_40
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public getVibrateList()V
    .registers 7

    .line 48
    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->getVirateModelList()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->spliteData([B)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_44

    const/4 v1, 0x0

    .line 50
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_34

    .line 52
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;-><init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)V

    const-string v5, "get_vibrate"

    invoke-virtual {v2, v5, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_41

    .line 133
    :cond_34
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_44
    return-void
.end method

.method public setVibrateList(Landroid/content/Context;Ljava/util/List;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/VibrateBean;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_9d

    .line 146
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9d

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 148
    :goto_f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 149
    new-instance v2, Lcom/keephealth/android/model/bean/SetVibrateBean;

    invoke-direct {v2}, Lcom/keephealth/android/model/bean/SetVibrateBean;-><init>()V

    .line 150
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/VibrateBean;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setType(I)V

    .line 151
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {v3}, Lcom/keephealth/android/model/bean/VibrateBean;->getStyle()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setStyle(I)V

    .line 152
    invoke-virtual {v2, p3}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setVibrateStrong(I)V

    .line 153
    invoke-virtual {v2, v0}, Lcom/keephealth/android/model/bean/SetVibrateBean;->setVibrateTime(I)V

    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 156
    :cond_40
    invoke-static {p1, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setVibrate(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_9d

    .line 158
    :goto_4c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_9d

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u8bbe\u7f6e:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-static {p3}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "CalenderDataStruc3t"

    invoke-static {p3, p2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_8d

    .line 161
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    new-instance v1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$2;-><init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)V

    const-string v2, "set_vibrate"

    invoke-virtual {p2, v2, p3, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_9a

    .line 185
    :cond_8d
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    invoke-virtual {p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    :goto_9a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_9d
    return-void
.end method

.method public setVibrateStrong(I)V
    .registers 19

    .line 192
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getDeviceState()Lcom/keephealth/android/model/bean/DeviceState;

    move-result-object v0

    .line 193
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v1

    .line 194
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keephealth/android/app/AppApplication;->getUserBean()Lcom/keephealth/android/model/bean/UserBean;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_29

    .line 196
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    goto :goto_2f

    .line 198
    :cond_29
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getHourMode12()I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 200
    :goto_2f
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v3

    if-ne v3, v4, :cond_40

    .line 201
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/AppUtil;->getLanguageCode(Landroid/content/Context;)I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    goto :goto_46

    .line 203
    :cond_40
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getLanguage()I

    move-result v3

    iput v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 205
    :goto_46
    iget v3, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenLight:I

    .line 206
    iget v5, v0, Lcom/keephealth/android/model/bean/DeviceState;->screenTime:I

    .line 207
    iget v6, v0, Lcom/keephealth/android/model/bean/DeviceState;->theme:I

    .line 208
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v8

    .line 209
    iget v9, v0, Lcom/keephealth/android/model/bean/DeviceState;->timeFormat:I

    .line 210
    iget v10, v0, Lcom/keephealth/android/model/bean/DeviceState;->upHander:I

    .line 211
    iget-boolean v11, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMusic:Z

    .line 212
    iget-boolean v12, v1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    .line 213
    iget v13, v0, Lcom/keephealth/android/model/bean/DeviceState;->handHabits:I

    .line 214
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v14

    move/from16 v1, p1

    .line 215
    iput v1, v0, Lcom/keephealth/android/model/bean/DeviceState;->vibrateStrong:I

    .line 216
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceState(Lcom/keephealth/android/model/bean/DeviceState;)V

    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "\u8bbe\u7f6e\u4f53\u6e29\u6e29\u5ea6\uff1a"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    if-nez v3, :cond_7f

    const/16 v3, 0xa

    :cond_7f
    move v4, v3

    .line 222
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    iget v7, v0, Lcom/keephealth/android/model/bean/DeviceState;->language:I

    .line 223
    invoke-virtual {v2}, Lcom/keephealth/android/model/bean/UserBean;->getWaterUnit()I

    move-result v15

    move/from16 v16, p1

    .line 222
    invoke-static/range {v4 .. v16}, Lcom/keephealth/android/util/ble/CmdHelper;->setDeviceStateStrong(IIIIIIIIIIIII)[B

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v4, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$3;

    move-object/from16 v5, p0

    invoke-direct {v4, v5}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$3;-><init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
