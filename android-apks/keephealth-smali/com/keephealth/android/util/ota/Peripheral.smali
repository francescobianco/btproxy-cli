.class public Lcom/keephealth/android/util/ota/Peripheral;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Peripheral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ota/Peripheral$CommandContext;,
        Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;,
        Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;,
        Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;
    }
.end annotation


# static fields
.field public static final CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final CONN_STATE_CLOSED:I = 0x10

.field private static final CONN_STATE_CONNECTED:I = 0x4

.field private static final CONN_STATE_CONNECTING:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x8

.field private static final CONN_STATE_IDLE:I = 0x1

.field private static final RSSI_UPDATE_TIME_INTERVAL:I = 0x7d0


# instance fields
.field protected commandTimeoutMill:I

.field protected device:Landroid/bluetooth/BluetoothDevice;

.field protected final mCommandDelayRunnable:Ljava/lang/Runnable;

.field protected final mCommandTimeoutRunnable:Ljava/lang/Runnable;

.field private mConnState:I

.field protected final mDelayHandler:Landroid/os/Handler;

.field protected mGatt:Landroid/bluetooth/BluetoothGatt;

.field protected final mInputCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/keephealth/android/util/ota/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNotificationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/util/ota/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOutputCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/keephealth/android/util/ota/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessLock:Ljava/lang/Object;

.field protected final mRssiUpdateHandler:Landroid/os/Handler;

.field protected final mRssiUpdateRunnable:Ljava/lang/Runnable;

.field protected mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field protected final mTimeoutHandler:Landroid/os/Handler;

.field protected mac:Ljava/lang/String;

.field protected macBytes:[B

.field protected monitorRssi:Z

.field protected name:Ljava/lang/String;

.field protected processing:Ljava/lang/Boolean;

.field protected rssi:I

.field protected scanRecord:[B

.field protected type:I

.field protected updateIntervalMill:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;[BI)V
    .registers 6

    .line 87
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ota/Peripheral$RssiUpdateRunnable;-><init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    .line 63
    new-instance v0, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ota/Peripheral$CommandTimeoutRunnable;-><init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mCommandTimeoutRunnable:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/ota/Peripheral$CommandDelayRunnable;-><init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mCommandDelayRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mProcessLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    const/16 v0, 0x1388

    .line 82
    iput v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->updateIntervalMill:I

    const/16 v0, 0x2710

    .line 83
    iput v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->commandTimeoutMill:I

    const/4 v0, 0x1

    .line 85
    iput v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 89
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    .line 90
    iput-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->scanRecord:[B

    .line 91
    iput p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->rssi:I

    .line 93
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mac:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->type:I

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)Z
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandTimeout(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ota/Peripheral;->processCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/ota/Peripheral;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method private cancelCommandTimeoutTask()V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private clear()V
    .registers 3

    const/4 v0, 0x0

    .line 217
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    .line 218
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->stopMonitoringRssi()V

    .line 219
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->cancelCommandTimeoutTask()V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 222
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private commandCompleted()V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x0

    .line 398
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    .line 399
    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 401
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->processCommand()V

    return-void

    :catchall_17
    move-exception v1

    .line 399
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private commandError(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/lang/String;)V
    .registers 5

    if-eqz p1, :cond_e

    .line 432
    iget-object v0, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 433
    iget-object v1, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    .line 434
    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->clear()V

    if-eqz v1, :cond_e

    .line 437
    invoke-interface {v1, p0, v0, p2}, Lcom/keephealth/android/util/ota/Command$Callback;->error(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private commandError(Ljava/lang/String;)V
    .registers 4

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorMsg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    .line 447
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/lang/String;)V

    return-void
.end method

.method private commandSuccess(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_e

    .line 409
    iget-object v0, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 410
    iget-object v1, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    .line 411
    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->clear()V

    if-eqz v1, :cond_e

    .line 414
    invoke-interface {v1, p0, v0, p2}, Lcom/keephealth/android/util/ota/Command$Callback;->success(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method private commandSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    .line 424
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandSuccess(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/lang/Object;)V

    return-void
.end method

.method private commandTimeout(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)Z
    .registers 4

    if-eqz p1, :cond_10

    .line 454
    iget-object v0, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 455
    iget-object v1, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/ota/Command$Callback;

    .line 456
    invoke-virtual {p1}, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->clear()V

    if-eqz v1, :cond_10

    .line 459
    invoke-interface {v1, p0, v0}, Lcom/keephealth/android/util/ota/Command$Callback;->timeout(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command;)Z

    move-result p1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private disableNotification(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 6

    .line 650
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 655
    invoke-direct {p0, v0, p3}, Lcom/keephealth/android/util/ota/Peripheral;->findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    if-eqz p3, :cond_27

    .line 659
    invoke-virtual {p0, p2, p3}, Lcom/keephealth/android/util/ota/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    .line 660
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    iget-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p3, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-nez p2, :cond_23

    .line 665
    const-string p2, "disable notification error"

    goto :goto_2c

    :cond_23
    const/4 v1, 0x1

    .line 662
    const-string p2, ""

    goto :goto_2c

    .line 670
    :cond_27
    const-string p2, "no characteristic"

    goto :goto_2c

    .line 675
    :cond_2a
    const-string p2, "service is not offered by the remote device"

    :goto_2c
    if-nez v1, :cond_32

    .line 679
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/lang/String;)V

    goto :goto_35

    .line 681
    :cond_32
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onDisableNotify()V

    .line 684
    :goto_35
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method private enableNotification(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 7

    .line 606
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 611
    invoke-direct {p0, v0, p3}, Lcom/keephealth/android/util/ota/Peripheral;->findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 615
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 618
    const-string p2, "enable notification error"

    goto :goto_2d

    .line 620
    :cond_1b
    invoke-virtual {p0, p2, p3}, Lcom/keephealth/android/util/ota/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    .line 622
    iget-object p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string p2, ""

    move v1, v2

    goto :goto_2d

    .line 627
    :cond_28
    const-string p2, "no characteristic"

    goto :goto_2d

    .line 632
    :cond_2b
    const-string p2, "service is not offered by the remote device"

    :goto_2d
    if-nez v1, :cond_33

    .line 636
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/lang/String;)V

    goto :goto_36

    .line 638
    :cond_33
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onEnableNotify()V

    .line 641
    :goto_36
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method private findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 6

    .line 718
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 720
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 721
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 722
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    if-eqz v1, :cond_2b

    return-object v1

    .line 731
    :cond_2b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 732
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2f

    .line 733
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object v1, v0

    :cond_4e
    return-object v1
.end method

.method private findWritableCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 6

    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    const/4 p3, 0x4

    goto :goto_7

    :cond_5
    const/16 p3, 0x8

    .line 699
    :goto_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 701
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 702
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_f

    .line 703
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    return-object v0
.end method

.method private generateHashKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .registers 3

    .line 743
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private postCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)V
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter p1

    .line 311
    :try_start_8
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    .line 312
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->processCommand()V

    .line 314
    :cond_13
    monitor-exit p1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private postCommandTimeoutTask()V
    .registers 5

    .line 468
    iget v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->commandTimeoutMill:I

    if-gtz v0, :cond_5

    return-void

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 472
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mCommandTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->commandTimeoutMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private processCommand()V
    .registers 6

    .line 323
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 324
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 325
    monitor-exit v0

    return-void

    .line 326
    :cond_d
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    .line 327
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_55

    if-nez v1, :cond_19

    return-void

    .line 332
    :cond_19
    iget-object v0, v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    .line 334
    sget-object v2, Lcom/keephealth/android/util/ota/Command$CommandType;->ENABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    if-eq v0, v2, :cond_41

    sget-object v2, Lcom/keephealth/android/util/ota/Command$CommandType;->DISABLE_NOTIFY:Lcom/keephealth/android/util/ota/Command$CommandType;

    if-eq v0, v2, :cond_41

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_2d
    iget-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3c

    const/4 v2, 0x1

    .line 339
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->processing:Ljava/lang/Boolean;

    .line 340
    :cond_3c
    monitor-exit v0

    goto :goto_41

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_3e

    throw v1

    .line 343
    :cond_41
    :goto_41
    iget-object v0, v1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    iget v0, v0, Lcom/keephealth/android/util/ota/Command;->delay:I

    if-lez v0, :cond_50

    .line 345
    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mCommandDelayRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_54

    :cond_50
    const/4 v0, 0x3

    .line 347
    invoke-direct {p0, v1, v0}, Lcom/keephealth/android/util/ota/Peripheral;->processCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V

    :goto_54
    return-void

    :catchall_55
    move-exception v1

    .line 327
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private declared-synchronized processCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;I)V
    .registers 11

    const-string v0, "WRITE:"

    const-string v1, "WRITE_NO_RESPONSE:"

    const-string v2, ""

    const-string v3, "a:"

    monitor-enter p0

    .line 352
    :try_start_9
    const-string v4, "rtrtu5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p2, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    .line 354
    iget-object v3, p2, Lcom/keephealth/android/util/ota/Command;->type:Lcom/keephealth/android/util/ota/Command$CommandType;

    .line 355
    const-string v4, "rtrtu5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget-object v2, Lcom/keephealth/android/util/ota/Peripheral$1;->$SwitchMap$com$keephealth$android$util$ota$Command$CommandType:[I

    invoke-virtual {v3}, Lcom/keephealth/android/util/ota/Command$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_bc

    goto/16 :goto_b6

    .line 387
    :pswitch_3e
    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object p2, p2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, p2}, Lcom/keephealth/android/util/ota/Peripheral;->disableNotification(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V

    goto/16 :goto_b6

    .line 383
    :pswitch_47
    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object p2, p2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, p2}, Lcom/keephealth/android/util/ota/Peripheral;->enableNotification(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_b6

    .line 375
    :pswitch_4f
    const-string v0, "rtrtu5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/keephealth/android/util/ota/Command;->data:[B

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->postCommandTimeoutTask()V

    .line 377
    iget-object v4, p2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v5, p2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v7, p2, Lcom/keephealth/android/util/ota/Command;->data:[B

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/util/ota/Peripheral;->writeCharacteristic(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    goto :goto_b6

    .line 371
    :pswitch_77
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->postCommandTimeoutTask()V

    .line 372
    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v1, p2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object p2, p2, Lcom/keephealth/android/util/ota/Command;->descriptorUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/keephealth/android/util/ota/Peripheral;->readDescriptor(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_b6

    .line 363
    :pswitch_84
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->postCommandTimeoutTask()V

    .line 364
    const-string v1, "rtrtu5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->data:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v4, p2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v5, p2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v7, p2, Lcom/keephealth/android/util/ota/Command;->data:[B

    const/4 v6, 0x2

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/keephealth/android/util/ota/Peripheral;->writeCharacteristic(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    goto :goto_b6

    .line 358
    :pswitch_ac
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->postCommandTimeoutTask()V

    .line 359
    iget-object v0, p2, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object p2, p2, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, p2}, Lcom/keephealth/android/util/ota/Peripheral;->readCharacteristic(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    :try_end_b6
    .catchall {:try_start_9 .. :try_end_b6} :catchall_b8

    .line 391
    :goto_b6
    monitor-exit p0

    return-void

    :catchall_b8
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_ac
        :pswitch_84
        :pswitch_77
        :pswitch_4f
        :pswitch_47
        :pswitch_3e
    .end packed-switch
.end method

.method private readCharacteristic(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 5

    .line 532
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1f

    .line 537
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    .line 539
    const-string p3, "read characteristic error"

    if-eqz p1, :cond_21

    .line 541
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_21

    :cond_1a
    const/4 p1, 0x1

    const-string p3, ""

    move p2, p1

    goto :goto_21

    .line 552
    :cond_1f
    const-string p3, "service is not offered by the remote device"

    :cond_21
    :goto_21
    if-nez p2, :cond_29

    .line 556
    invoke-direct {p0, p3}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    :cond_29
    return-void
.end method

.method private readDescriptor(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 5

    .line 490
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_27

    .line 495
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 499
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    .line 500
    const-string p3, "read descriptor error"

    if-eqz p1, :cond_29

    .line 501
    iget-object p4, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p4, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_29

    :cond_20
    const/4 p2, 0x1

    const-string p3, ""

    goto :goto_29

    .line 512
    :cond_24
    const-string p3, "read characteristic error"

    goto :goto_29

    .line 516
    :cond_27
    const-string p3, "service is not offered by the remote device"

    :cond_29
    :goto_29
    if-nez p2, :cond_31

    .line 520
    invoke-direct {p0, p3}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    :cond_31
    return-void
.end method

.method private writeCharacteristic(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .registers 9

    .line 567
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "gatt:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  serviceUUID:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rtrtu5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "service:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-eqz p1, :cond_60

    .line 573
    invoke-direct {p0, p1, p3, p4}, Lcom/keephealth/android/util/ota/Peripheral;->findWritableCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 577
    invoke-virtual {p1, p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 578
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 580
    iget-object p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_56

    .line 582
    const-string p1, "write characteristic error"

    goto :goto_62

    :cond_56
    const/4 p1, 0x1

    .line 580
    const-string p2, ""

    move-object v2, p2

    move p2, p1

    move-object p1, v2

    goto :goto_62

    .line 587
    :cond_5d
    const-string p1, "no characteristic"

    goto :goto_62

    .line 591
    :cond_60
    const-string p1, "service is not offered by the remote device"

    :goto_62
    if-nez p2, :cond_73

    .line 594
    const-string p2, "errorMsg:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 596
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    :cond_73
    return-void
.end method


# virtual methods
.method public connect(Landroid/content/Context;I)V
    .registers 15

    const-string v0, "onDisconnect:11111"

    const-string v1, "gatt_\u771f\u6b63\u8bf7\u6c42:"

    const-string v2, "connect_mConnState:"

    .line 151
    iget-object v3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 152
    :try_start_9
    const-string v4, "gf3e3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "  a:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_a9

    const/4 p2, 0x2

    .line 154
    iput p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 156
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v4

    .line 157
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    .line 158
    iget-object v6, v4, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_58

    .line 161
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    iget-object v4, v4, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 164
    :cond_58
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_6c

    .line 167
    iget-object v6, p0, Lcom/keephealth/android/util/ota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v8, 0x0

    move-object v7, p1

    move-object v9, p0

    invoke-virtual/range {v6 .. v11}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;II)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_75

    .line 169
    :cond_6c
    iget-object v4, p0, Lcom/keephealth/android/util/ota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, p0, p2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    .line 178
    :goto_75
    const-string p1, "gf3e3"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez p1, :cond_a9

    .line 180
    invoke-virtual {p0, v2}, Lcom/keephealth/android/util/ota/Peripheral;->disconnect(I)V

    .line 181
    iput v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 182
    const-string p1, "gf3e3"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onDisconnect()V

    .line 186
    :cond_a9
    monitor-exit v3

    return-void

    :catchall_ab
    move-exception p1

    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_9 .. :try_end_ad} :catchall_ab

    throw p1
.end method

.method public disconnect(I)V
    .registers 5

    .line 190
    const-string v0, "rtrtu5"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect_a:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 192
    :try_start_17
    iget v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_21

    if-eq v0, v2, :cond_21

    .line 193
    monitor-exit p1

    return-void

    .line 194
    :cond_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_4d

    .line 197
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->clear()V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_28
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_45

    .line 201
    iget v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    if-ne v1, v2, :cond_38

    .line 203
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    const/16 p1, 0x8

    .line 204
    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    goto :goto_48

    .line 206
    :cond_38
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 207
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/16 p1, 0x10

    .line 208
    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    goto :goto_48

    :cond_45
    const/4 p1, 0x1

    .line 211
    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 213
    :goto_48
    monitor-exit v0

    return-void

    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_28 .. :try_end_4c} :catchall_4a

    throw p1

    :catchall_4d
    move-exception v0

    .line 194
    :try_start_4e
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method protected enableMonitorRssi(Z)V
    .registers 5

    if-eqz p1, :cond_14

    .line 294
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 295
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->updateIntervalMill:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 297
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_21
    return-void
.end method

.method protected generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .registers 5

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 750
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getMacBytes()[B
    .registers 8

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->macBytes:[B

    if-nez v0, :cond_30

    .line 121
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 122
    array-length v1, v0

    .line 123
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/keephealth/android/util/ota/Peripheral;->macBytes:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_29

    .line 126
    iget-object v4, p0, Lcom/keephealth/android/util/ota/Peripheral;->macBytes:[B

    aget-object v5, v0, v3

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 129
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->macBytes:[B

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/ota/MArrays;->reverse([BII)[B

    .line 132
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->macBytes:[B

    return-object v0
.end method

.method public getRssi()I
    .registers 2

    .line 140
    iget v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->rssi:I

    return v0
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->type:I

    return v0
.end method

.method public isConnected()Z
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_3
    iget v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    monitor-exit v0

    return v1

    :catchall_d
    move-exception v1

    .line 146
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 808
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const/16 p1, 0x14

    .line 809
    new-array p1, p1, [B

    .line 810
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u624b\u73af\u6570\u636e==="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 812
    invoke-direct {p0, p2}, Lcom/keephealth/android/util/ota/Peripheral;->generateHashKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p1

    .line 813
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    if-eqz p1, :cond_45

    .line 817
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    iget-object v0, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    iget-object v0, v0, Lcom/keephealth/android/util/ota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v1, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    iget-object v1, v1, Lcom/keephealth/android/util/ota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object p1, p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/ota/Command;

    iget-object p1, p1, Lcom/keephealth/android/util/ota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/keephealth/android/util/ota/Peripheral;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    .line 827
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 829
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->cancelCommandTimeoutTask()V

    if-nez p3, :cond_10

    .line 832
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 833
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_15

    .line 835
    :cond_10
    const-string p1, "read characteristic failed"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 838
    :goto_15
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5

    .line 844
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 846
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->cancelCommandTimeoutTask()V

    .line 847
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5199\u5165\u6570\u636e_status:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rtrtu5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_4c

    const/16 p1, 0x14

    .line 849
    new-array p1, p1, [B

    .line 850
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p3

    invoke-static {p3, p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    .line 851
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001\u6307\u4ee4\u5230\u624b\u73af==="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 852
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    .line 853
    new-instance p1, Lcom/keephealth/android/model/bean/BaseMessage;

    const/16 p3, 0x4be

    invoke-direct {p1, p3, p2}, Lcom/keephealth/android/model/bean/BaseMessage;-><init>(ILjava/lang/Object;)V

    .line 854
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(Lcom/keephealth/android/model/bean/BaseMessage;)V

    goto :goto_51

    .line 856
    :cond_4c
    const-string p1, "write characteristic fail"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 860
    :goto_51
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method protected onConnect()V
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->monitorRssi:Z

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ota/Peripheral;->enableMonitorRssi(Z)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8

    const-string p1, "update_comple_ota\u540d\u79f0\u5347\u7ea7\u533a\u5206:"

    const-string v0, "onDisconnect:2222"

    .line 760
    const-string v1, "gf3e3"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "newState\u2014\u2014peri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  status\u2014\u2014peri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-ne p3, p2, :cond_63

    .line 763
    iget-object p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter p3

    const/4 p1, 0x4

    .line 764
    :try_start_29
    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 765
    monitor-exit p3
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_60

    .line 767
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_42

    .line 772
    :cond_37
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onConnect()V

    .line 773
    const-string p1, "gf3e3"

    const-string p2, "this.onConnect()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b3

    .line 768
    :cond_42
    :goto_42
    const-string p1, "gf3e3"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "this.disconnect(2):"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {p0, p2}, Lcom/keephealth/android/util/ota/Peripheral;->disconnect(I)V

    goto :goto_b3

    :catchall_60
    move-exception p1

    .line 765
    :try_start_61
    monitor-exit p3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1

    .line 778
    :cond_63
    iget-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter p2

    .line 780
    :try_start_66
    iget-object p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p3, :cond_71

    .line 781
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/16 p3, 0x10

    .line 782
    iput p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 785
    :cond_71
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->clear()V

    const/4 p3, 0x1

    .line 786
    iput p3, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    .line 787
    const-string p3, "rtrtu5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "c60_fail_ota"

    invoke-static {p3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    .line 790
    const-string v0, "gf3e3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_af

    const/16 p1, 0x535

    .line 792
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_b2

    .line 799
    :cond_af
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onDisconnect()V

    .line 801
    :goto_b2
    monitor-exit p2

    :goto_b3
    return-void

    :catchall_b4
    move-exception p1

    monitor-exit p2
    :try_end_b6
    .catchall {:try_start_66 .. :try_end_b6} :catchall_b4

    throw p1
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 5

    .line 865
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 867
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->cancelCommandTimeoutTask()V

    .line 868
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onDescriptorRead_status:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "grder33"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_24

    .line 870
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p1

    .line 871
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_29

    .line 873
    :cond_24
    const-string p1, "read description failed"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 876
    :goto_29
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 882
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 884
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->cancelCommandTimeoutTask()V

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onDescriptorWrite_status:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "grder33"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_21

    const/4 p1, 0x0

    .line 887
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_26

    .line 889
    :cond_21
    const-string p1, "write description failed"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 892
    :goto_26
    invoke-direct {p0}, Lcom/keephealth/android/util/ota/Peripheral;->commandCompleted()V

    return-void
.end method

.method protected onDisableNotify()V
    .registers 1

    return-void
.end method

.method protected onDisconnect()V
    .registers 2

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ota/Peripheral;->enableMonitorRssi(Z)V

    return-void
.end method

.method protected onEnableNotify()V
    .registers 1

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 932
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method protected onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .registers 5

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 919
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    if-nez p3, :cond_e

    .line 923
    iget p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->rssi:I

    if-eq p2, p1, :cond_e

    .line 924
    iput p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->rssi:I

    .line 925
    invoke-virtual {p0}, Lcom/keephealth/android/util/ota/Peripheral;->onRssiChanged()V

    :cond_e
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    .line 937
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method protected onRssiChanged()V
    .registers 1

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 8

    .line 897
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "peripheral_status\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  gatt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gfgf433"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_ae

    .line 900
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 901
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "services_size\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a6

    .line 902
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_a6

    const/4 p2, 0x0

    move v0, p2

    .line 903
    :goto_47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_a6

    .line 904
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "services.get(i)\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, p2

    .line 905
    :goto_6a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a3

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "services.get(i).getCharacteristics\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    :cond_a3
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 910
    :cond_a6
    iput-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mServices:Ljava/util/List;

    .line 911
    iget-object p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p0, p2, p1}, Lcom/keephealth/android/util/ota/Peripheral;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V

    goto :goto_b2

    :cond_ae
    const/4 p1, 0x3

    .line 913
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->disconnect(I)V

    :goto_b2
    return-void
.end method

.method protected onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final requestConnectionPriority(I)Z
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    return p1
.end method

.method public sendCommand(IILcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)Z
    .registers 8

    .line 227
    const-string v0, "rtrtu5"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "a--------------------:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "   tag:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  command:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p4, Lcom/keephealth/android/util/ota/Command;->data:[B

    invoke-static {p2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 230
    :try_start_31
    iget p2, p0, Lcom/keephealth/android/util/ota/Peripheral;->mConnState:I

    const/4 v0, 0x4

    if-eq p2, v0, :cond_39

    .line 231
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    .line 232
    :cond_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_44

    .line 234
    new-instance p1, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;

    invoke-direct {p1, p0, p3, p4}, Lcom/keephealth/android/util/ota/Peripheral$CommandContext;-><init>(Lcom/keephealth/android/util/ota/Peripheral;Lcom/keephealth/android/util/ota/Command$Callback;Lcom/keephealth/android/util/ota/Command;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ota/Peripheral;->postCommand(Lcom/keephealth/android/util/ota/Peripheral$CommandContext;)V

    const/4 p1, 0x1

    return p1

    :catchall_44
    move-exception p2

    .line 232
    :try_start_45
    monitor-exit p1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p2
.end method

.method public final startMonitoringRssi(I)V
    .registers 3

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->monitorRssi:Z

    if-gtz p1, :cond_a

    const/16 p1, 0x7d0

    .line 245
    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->updateIntervalMill:I

    goto :goto_c

    .line 247
    :cond_a
    iput p1, p0, Lcom/keephealth/android/util/ota/Peripheral;->updateIntervalMill:I

    :goto_c
    return-void
.end method

.method public final stopMonitoringRssi()V
    .registers 3

    const/4 v0, 0x0

    .line 251
    iput-boolean v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->monitorRssi:Z

    .line 252
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/keephealth/android/util/ota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
