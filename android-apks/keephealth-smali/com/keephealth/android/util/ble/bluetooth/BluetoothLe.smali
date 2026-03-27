.class public Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
.super Ljava/lang/Object;
.source "BluetoothLe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$SingletonHolder;
    }
.end annotation


# instance fields
.field private commonDialog:Lcom/keephealth/android/views/dialog/CommonDialog;

.field connectTimeout:Ljava/lang/Runnable;

.field private filterDeviceAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filterDeviceNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isPairSuccess:Z

.field private isReconnect:Z

.field private mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

.field private mContext:Landroid/content/Context;

.field mDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private mHandler:Landroid/os/Handler;

.field private mUpdateDialog:Landroid/app/Dialog;

.field permissionsBluetooth_connect:[Ljava/lang/String;

.field private reConnectCount:I

.field private reportDelayMillis:I

.field private scanPeriod:I

.field public telephony:I

.field private uFilerServiceUUIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 4

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    const/4 v0, 0x0

    .line 533
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isReconnect:Z

    .line 543
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reConnectCount:I

    .line 544
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mHandler:Landroid/os/Handler;

    .line 545
    new-instance v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;)V

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->connectTimeout:Ljava/lang/Runnable;

    const/4 v1, 0x2

    .line 553
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "android.permission.BLUETOOTH_SCAN"

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->permissionsBluetooth_connect:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$1;)V
    .registers 2

    .line 99
    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;)Landroid/os/Handler;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;Lcom/keephealth/android/model/bean/BLEDevice;I)V
    .registers 3

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanWithAddress(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    return-void
.end method

.method public static getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 1

    .line 109
    # getter for: Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$SingletonHolder;->INSTANCE:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$SingletonHolder;->access$100()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    return-object v0
.end method

.method private scanWithAddress(Lcom/keephealth/android/model/bean/BLEDevice;I)V
    .registers 7

    .line 645
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGoOtaPage:Z

    if-eqz v0, :cond_5

    return-void

    .line 648
    :cond_5
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    const/4 v0, 0x1

    .line 652
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isReconnect:Z

    .line 653
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBackground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    .line 654
    new-array v1, v1, [Ljava/util/UUID;

    const/4 v2, 0x0

    sget-object v3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    aput-object v3, v1, v2

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE_PAIR:Ljava/util/UUID;

    aput-object v2, v1, v0

    .line 655
    invoke-virtual {p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanWithServiceUUID([Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    goto :goto_27

    .line 657
    :cond_22
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 660
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u56de\u8fde:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "hfgffr2"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "bleReceiveDisConnect"

    invoke-static {p2, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bleReceiveDisConnect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DEE33r4D"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startConnect(ILcom/keephealth/android/model/bean/BLEDevice;)V

    return-void
.end method


# virtual methods
.method public addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 5

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mBleManager.addDeviceCallback(callback)_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gge3d"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-eqz p1, :cond_1b

    .line 933
    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    :cond_1b
    return-void
.end method

.method public cancelAllTag()V
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelAllTag()V

    return-void
.end method

.method public cancelTag(Ljava/lang/Object;)V
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelTag(Ljava/lang/Object;)V

    return-void
.end method

.method public changeConfig(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setConfig(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V

    return-void
.end method

.method public cleanConnectListenner()V
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cleanConnectListenner()V

    return-void
.end method

.method public clearDeviceCache()Z
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearDeviceCache(I)Z

    move-result v0

    return v0
.end method

.method public clearQueue()V
    .registers 2

    .line 530
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->clearQueue()V

    return-void
.end method

.method public close(I)V
    .registers 4

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asasa5s"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 498
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-eqz p1, :cond_2f

    const/4 v0, 0x4

    .line 499
    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->close(I)V

    :cond_2f
    return-void
.end method

.method public closeGatt()V
    .registers 2

    .line 301
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeGatt()V

    return-void
.end method

.method public destroy(I)V
    .registers 4

    .line 504
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-eqz v0, :cond_7

    .line 505
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->destroy()V

    .line 507
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hfgffr2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public destroy(Ljava/lang/Object;)V
    .registers 4

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ffr3ddf5ft"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-eqz v0, :cond_1f

    .line 513
    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->destroy(Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public disableBluetooth()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->disableBluetooth()Z

    return-void
.end method

.method public disconnect(I)V
    .registers 5

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disconnect_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "drer4re"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 315
    sput v0, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->disconnect(I)V

    return-void
.end method

.method public disreconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 320
    sput v0, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 321
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->disreconnect()V

    return-void
.end method

.method public enableBluetooth(Landroid/app/Activity;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableBluetooth(Landroid/app/Activity;)Z

    return-void
.end method

.method public enableBluetooth(Landroid/app/Activity;I)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableBluetooth(Landroid/app/Activity;I)Z

    return-void
.end method

.method public enableIndication(ZLjava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 4

    .line 359
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableIndication(ZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public enableIndication(ZLjava/lang/String;[Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 8

    .line 369
    array-length v0, p3

    .line 370
    new-array v1, v0, [Ljava/util/UUID;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 372
    aget-object v3, p3, v2

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 374
    :cond_11
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableIndication(ZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public enableIndication(ZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 6

    const/4 v0, 0x1

    .line 364
    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p0, p1, p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableIndication(ZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public enableIndication(ZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableIndicationQueue(ZLjava/util/UUID;[Ljava/util/UUID;)V

    return-object p0
.end method

.method public enableNotification(IZLjava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 5

    .line 325
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public enableNotification(IZLjava/lang/String;[Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 9

    .line 335
    array-length v0, p4

    .line 336
    new-array v1, v0, [Ljava/util/UUID;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_11

    .line 338
    aget-object v3, p4, v2

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 340
    :cond_11
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public enableNotification(IZLjava/util/UUID;Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 7

    const/4 v0, 0x1

    .line 330
    new-array v0, v0, [Ljava/util/UUID;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public enableNotification(IZLjava/util/UUID;[Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 6

    .line 345
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->enableNotificationQueue(IZLjava/util/UUID;[Ljava/util/UUID;)V

    return-object p0
.end method

.method public findService()V
    .registers 3

    .line 227
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    sget-object v1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->findServiceAndCharacteristic(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .registers 2

    .line 265
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    return-object v0
.end method

.method public getConnected()Z
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->getConnected()Z

    move-result v0

    return v0
.end method

.method public getConnectedBluetoothDevice()Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->getBluetoothDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    return-object v0
.end method

.method public getScanning()Z
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scanning()Z

    move-result v0

    return v0
.end method

.method public getScannling()Z
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isScanning(Z)Z

    move-result v0

    return v0
.end method

.method public getServicesDiscovered()Z
    .registers 2

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->getServicesDiscovered()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-nez v0, :cond_11

    .line 125
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    :cond_11
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-nez v0, :cond_10

    .line 131
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    goto :goto_13

    .line 133
    :cond_10
    invoke-virtual {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setConfig(Lcom/keephealth/android/util/ble/bluetooth/BluetoothConfig;)V

    :goto_13
    return-void
.end method

.method public isBackground(Landroid/content/Context;)Z
    .registers 7

    .line 945
    const-string v0, "activity"

    .line 946
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 948
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 950
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 951
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 952
    iget p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public isBluetoothOpen()Z
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isBluetoothOpen()Z

    move-result v0

    return v0
.end method

.method public isReconnect()Z
    .registers 2

    .line 536
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isReconnect:Z

    return v0
.end method

.method public isSupportBluetooth()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->isSupportBluetooth()Z

    move-result v0

    return v0
.end method

.method public readCharacteristic(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;I)V

    return-void
.end method

.method public readCharacteristic(Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V
    .registers 4

    .line 397
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V

    return-void
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;I)V

    return-void
.end method

.method public readCharacteristic(Ljava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V
    .registers 6

    .line 401
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, p2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readCharacteristicQueue(Ljava/util/UUID;Ljava/util/UUID;I)V

    .line 402
    invoke-virtual {p0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnReadCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V

    return-void
.end method

.method public readConnectionParameters()Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 2

    .line 488
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->getConnParameters()Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object v0

    return-object v0
.end method

.method public reconnect()V
    .registers 6

    .line 555
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    if-nez v0, :cond_10a

    const/4 v0, 0x1

    .line 556
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    .line 557
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->connectTimeout:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u5f00\u59cb\u56de\u8fde...a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 559
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_53

    .line 560
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH_SCAN"

    .line 561
    invoke-static {v1, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_53

    .line 562
    :cond_4b
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    const/16 v0, 0x44e

    .line 563
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    return-void

    .line 567
    :cond_53
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    .line 569
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "BluetoothLe.getDefault().getConnected():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hfgffr2"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result v3

    if-nez v3, :cond_108

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isBluetoothOpen():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  getScanning():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getScanning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_10a

    .line 574
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isBluetoothOpen()Z

    move-result v2

    if-eqz v2, :cond_10a

    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getScanning()Z

    move-result v2

    if-nez v2, :cond_10a

    .line 575
    const-string v2, "\u91cd\u8fde..."

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xa

    .line 576
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->close(I)V

    const/16 v2, 0x8

    .line 577
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(I)V

    .line 578
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 579
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->cancelAllTag()V

    .line 580
    invoke-virtual {p0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->stopScan()V

    .line 596
    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    if-eqz v2, :cond_df

    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v3, "T"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e9

    :cond_df
    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const-string v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 597
    :cond_e9
    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanWithAddress(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    goto :goto_10a

    .line 599
    :cond_ed
    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu()Z

    move-result v0

    if-eqz v0, :cond_103

    const/16 v0, 0x3a98

    .line 600
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanPeriod(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;

    invoke-direct {v2, p0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe$2;-><init>(Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;Lcom/keephealth/android/model/bean/BLEDevice;)V

    const/4 v1, 0x6

    .line 601
    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->startScan(ILcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V

    goto :goto_10a

    :cond_103
    const/4 v0, 0x3

    .line 632
    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanWithAddress(Lcom/keephealth/android/model/bean/BLEDevice;I)V

    goto :goto_10a

    .line 637
    :cond_108
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    :cond_10a
    :goto_10a
    return-void
.end method

.method public removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V
    .registers 4

    .line 938
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    if-eqz v0, :cond_10

    .line 939
    const-string v0, "FF433"

    const-string v1, "mBleManager.removeDeviceCallback"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->removeDeviceCallback(Lcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    :cond_10
    return-void
.end method

.method public setOnConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V

    return-void
.end method

.method public setOnConnectListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V
    .registers 3

    .line 309
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;->setTag(Ljava/lang/Object;)V

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    return-void
.end method

.method public setOnIndicationListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;)V
    .registers 3

    .line 384
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeIndicationListener;->setTag(Ljava/lang/Object;)V

    .line 385
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    return-void
.end method

.method public setOnNotificationListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;)V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setOnLeNotificationListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;)V

    return-void
.end method

.method public setOnNotificationListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;)V
    .registers 3

    .line 354
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeNotificationListener;->setTag(Ljava/lang/Object;)V

    .line 355
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    return-void
.end method

.method public setOnReadCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setOnLeReadCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V

    return-void
.end method

.method public setOnReadCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;)V
    .registers 3

    .line 410
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadCharacteristicListener;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    return-void
.end method

.method public setOnReadRssiListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;)V
    .registers 3

    .line 482
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeReadRssiListener;->setTag(Ljava/lang/Object;)V

    .line 483
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    .line 484
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->readRssi()V

    return-void
.end method

.method public setOnScanListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setOnLeScanListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V

    return-void
.end method

.method public setOnScanListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V
    .registers 3

    .line 243
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;->setTag(Ljava/lang/Object;)V

    .line 244
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    return-void
.end method

.method public setOnWriteCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setWriteCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method

.method public setOnWriteCharacteristicListener(Ljava/lang/Object;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 3

    .line 472
    invoke-virtual {p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->setTag(Ljava/lang/Object;)V

    .line 473
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    return-void
.end method

.method public setReadRssiInterval(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 477
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setReadRssiIntervalMillisecond(I)V

    return-object p0
.end method

.method public setReconnect(Z)V
    .registers 2

    .line 540
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->isReconnect:Z

    return-void
.end method

.method public setReportDelay(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 2

    .line 213
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reportDelayMillis:I

    return-object p0
.end method

.method public setScanPeriod(I)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 2

    .line 208
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanPeriod:I

    return-object p0
.end method

.method public setScanWithDeviceAddress(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setScanWithDeviceAddress([Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setScanWithDeviceName(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setScanWithDeviceName([Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setScanWithServiceUUID(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 2

    .line 186
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanWithServiceUUID(Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    return-object p0
.end method

.method public setScanWithServiceUUID(Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setScanWithServiceUUID([Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 5

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    .line 192
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setScanWithServiceUUID(Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return-object p0
.end method

.method public setScanWithServiceUUID([Ljava/util/UUID;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStopScanAfterConnected(Z)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setStopScanAfterConnected(Z)V

    return-object p0
.end method

.method public startConnect(ILcom/keephealth/android/model/bean/BLEDevice;)V
    .registers 5

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startConnect_a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfgffr2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 282
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connect(ZLcom/keephealth/android/model/bean/BLEDevice;I)Z

    return-void
.end method

.method public startConnect(Lcom/keephealth/android/model/bean/BLEDevice;Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V
    .registers 5

    .line 297
    invoke-virtual {p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnConnectListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;)V

    .line 298
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, v0, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connect(ZLcom/keephealth/android/model/bean/BLEDevice;I)Z

    return-void
.end method

.method public startConnect(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 287
    const-string v0, "rfrtr5r"

    const-string v1, "startConnect_address:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 288
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 289
    new-instance v0, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-direct {v0}, Lcom/keephealth/android/model/bean/BLEDevice;-><init>()V

    .line 290
    iput-object p1, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    .line 291
    iput-object p2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    .line 292
    invoke-virtual {v0, p3}, Lcom/keephealth/android/model/bean/BLEDevice;->setDeviceType(I)V

    .line 293
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {p1, p2, v0, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->connect(ZLcom/keephealth/android/model/bean/BLEDevice;I)Z

    return-void
.end method

.method public startScan()V
    .registers 8

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    iget v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanPeriod:I

    iget v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reportDelayMillis:I

    const/4 v1, 0x2

    invoke-virtual/range {v0 .. v6}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scan(ILjava/util/List;Ljava/util/List;Ljava/util/List;II)V

    .line 232
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 233
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 234
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 235
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanPeriod:I

    return-void
.end method

.method public startScan(ILcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V
    .registers 11

    .line 218
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->setOnLeScanListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeScanListener;)V

    .line 219
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    iget v6, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanPeriod:I

    iget v7, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reportDelayMillis:I

    move v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->scan(ILjava/util/List;Ljava/util/List;Ljava/util/List;II)V

    .line 220
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceNameList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 221
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->filterDeviceAddressList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 222
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->uFilerServiceUUIDList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->scanPeriod:I

    return-void
.end method

.method public stopReadRssi()V
    .registers 2

    .line 492
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->cancelReadRssiTimerTask()V

    return-void
.end method

.method public stopScan()V
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->stopScan()V

    return-void
.end method

.method public writeDataToCharacteristic(Ljava/lang/Object;[BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 5

    .line 455
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 456
    invoke-virtual {p3, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->setTag(Ljava/lang/Object;)V

    .line 457
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    .line 458
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    sget-object p3, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    invoke-virtual {p1, p2, p3, v0}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V

    :cond_17
    return-void
.end method

.method public writeDataToCharacteristic(Ljava/lang/Object;[BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 7

    .line 439
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 440
    invoke-virtual {p5, p1}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;->setTag(Ljava/lang/Object;)V

    .line 441
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p5}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->addLeListenerList(Lcom/keephealth/android/util/ble/bluetooth/LeListener;)Z

    .line 442
    iget-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V

    :cond_13
    return-void
.end method

.method public writeDataToCharacteristic([B)V
    .registers 5

    .line 464
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    invoke-virtual {v0, p1, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method public writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 5

    .line 447
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 448
    invoke-virtual {p0, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 449
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    sget-object v0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    invoke-virtual {p2, p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V

    :cond_12
    return-void
.end method

.method public writeDataToCharacteristic([BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 415
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 416
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;)V

    :cond_11
    return-void
.end method

.method public writeDataToCharacteristic([BLjava/lang/String;Ljava/lang/String;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 6

    .line 425
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 426
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p2

    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :cond_11
    return-void
.end method

.method public writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;)V
    .registers 5

    .line 421
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V

    return-void
.end method

.method public writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V
    .registers 7

    .line 431
    const-string v0, "ddeews"

    const-string v1, "getDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 433
    invoke-virtual {p0, p4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setOnWriteCharacteristicListener(Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 434
    iget-object p4, p0, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->mBleManager:Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p4, p1, p2, p3}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->writeCharacteristicQueue([BLjava/util/UUID;Ljava/util/UUID;)V

    :cond_15
    return-void
.end method
