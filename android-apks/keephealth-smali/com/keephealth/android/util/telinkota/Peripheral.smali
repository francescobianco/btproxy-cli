.class public Lcom/keephealth/android/util/telinkota/Peripheral;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Peripheral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;,
        Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;,
        Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;,
        Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;,
        Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;,
        Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;
    }
.end annotation


# static fields
.field private static final CONN_STATE_CONNECTED:I = 0x4

.field private static final CONN_STATE_CONNECTING:I = 0x2

.field private static final CONN_STATE_DISCONNECTING:I = 0x8

.field private static final CONN_STATE_IDLE:I = 0x1

.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x4e20

.field protected static final MTU_SIZE_MAX:I = 0x205

.field private static final RSSI_UPDATE_TIME_INTERVAL:I = 0x7d0


# instance fields
.field protected commandTimeoutMill:I

.field private connectionTimeout:I

.field protected device:Landroid/bluetooth/BluetoothDevice;

.field protected gatt:Landroid/bluetooth/BluetoothGatt;

.field protected isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected lastTime:J

.field protected final mCommandDelayRunnable:Ljava/lang/Runnable;

.field protected final mCommandTimeoutRunnable:Ljava/lang/Runnable;

.field private mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected final mConnectionTimeoutRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field protected final mDelayHandler:Landroid/os/Handler;

.field protected final mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

.field protected final mInputCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNotificationCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;",
            ">;"
        }
    .end annotation
.end field

.field protected final mOutputCommandQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;",
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

.field private mtu:I

.field protected name:Ljava/lang/String;

.field protected processing:Ljava/lang/Boolean;

.field private serviceRefreshed:Z

.field protected type:I

.field protected updateIntervalMill:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 107
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/16 v0, 0x4e20

    .line 61
    iput v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->connectionTimeout:I

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    .line 65
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral$RssiUpdateRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    .line 71
    new-instance v0, Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral$ConnectionTimeoutRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnectionTimeoutRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral$DisconnectionTimeoutRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

    .line 74
    new-instance v0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandTimeoutRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mCommandTimeoutRunnable:Ljava/lang/Runnable;

    .line 75
    new-instance v0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;

    invoke-direct {v0, p0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandDelayRunnable;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$1;)V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mCommandDelayRunnable:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mStateLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mProcessLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    const/16 v1, 0x1388

    .line 92
    iput v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->updateIntervalMill:I

    const/16 v1, 0x2710

    .line 93
    iput v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->commandTimeoutMill:I

    .line 96
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->serviceRefreshed:Z

    const/16 v0, 0x17

    .line 103
    iput v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mtu:I

    .line 108
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/util/telinkota/Peripheral;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)Z
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandTimeout(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->processCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/util/telinkota/Peripheral;)V
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method private cancelCommandTimeoutTask()V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private commandCompleted()V
    .registers 3

    .line 480
    const-string v0, "commandCompleted"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_8
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    .line 484
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    .line 485
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c

    .line 487
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->processCommand()V

    return-void

    :catchall_1c
    move-exception v1

    .line 485
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private commandError(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/lang/String;)V
    .registers 5

    .line 516
    const-string v0, "commandError"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    if-eqz p1, :cond_13

    .line 520
    iget-object v0, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 521
    iget-object v1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 522
    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->clear()V

    if-eqz v1, :cond_13

    .line 525
    invoke-interface {v1, p0, v0, p2}, Lcom/keephealth/android/util/telinkota/Command$Callback;->error(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command;Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method private commandError(Ljava/lang/String;)V
    .registers 3

    .line 534
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    .line 535
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/lang/String;)V

    return-void
.end method

.method private commandSuccess(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/lang/Object;)V
    .registers 5

    .line 492
    const-string v0, "commandSuccess"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    if-eqz p1, :cond_13

    .line 496
    iget-object v0, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 497
    iget-object v1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 498
    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->clear()V

    if-eqz v1, :cond_13

    .line 501
    invoke-interface {v1, p0, v0, p2}, Lcom/keephealth/android/util/telinkota/Command$Callback;->success(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private commandSuccess(Ljava/lang/Object;)V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    .line 511
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandSuccess(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/lang/Object;)V

    return-void
.end method

.method private commandTimeout(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)Z
    .registers 4

    .line 539
    const-string v0, "commandTimeout"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    if-eqz p1, :cond_15

    .line 543
    iget-object v0, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 544
    iget-object v1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->callback:Lcom/keephealth/android/util/telinkota/Command$Callback;

    .line 545
    invoke-virtual {p1}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->clear()V

    if-eqz v1, :cond_15

    .line 548
    invoke-interface {v1, p0, v0}, Lcom/keephealth/android/util/telinkota/Command$Callback;->timeout(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command;)Z

    move-result p1

    return p1

    :cond_15
    const/4 p1, 0x0

    return p1
.end method

.method private disableNotification(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 6

    .line 798
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 803
    invoke-direct {p0, v0, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    if-eqz p3, :cond_27

    .line 807
    invoke-virtual {p0, p2, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    .line 808
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    iget-object p2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p2, p3, v1}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result p2

    if-nez p2, :cond_23

    .line 813
    const-string p2, "disable notification error"

    goto :goto_2c

    :cond_23
    const/4 v1, 0x1

    .line 810
    const-string p2, ""

    goto :goto_2c

    .line 818
    :cond_27
    const-string p2, "no characteristic"

    goto :goto_2c

    .line 823
    :cond_2a
    const-string p2, "service is not offered by the remote device"

    :goto_2c
    if-nez v1, :cond_32

    .line 827
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/lang/String;)V

    goto :goto_35

    .line 829
    :cond_32
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->onDisableNotify()V

    .line 832
    :goto_35
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method private enableNotification(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 7

    .line 754
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    .line 759
    invoke-direct {p0, v0, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    if-eqz p3, :cond_28

    .line 763
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v2, 0x1

    invoke-virtual {v0, p3, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 766
    const-string p2, "enable notification error"

    goto :goto_2d

    .line 768
    :cond_1b
    invoke-virtual {p0, p2, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p2

    .line 770
    iget-object p3, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string p2, ""

    move v1, v2

    goto :goto_2d

    .line 775
    :cond_28
    const-string p2, "no characteristic"

    goto :goto_2d

    .line 780
    :cond_2b
    const-string p2, "service is not offered by the remote device"

    :goto_2d
    if-nez v1, :cond_33

    .line 784
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/lang/String;)V

    goto :goto_36

    .line 786
    :cond_33
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->onEnableNotify()V

    .line 789
    :goto_36
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method private findNotifyCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 6

    .line 866
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 868
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 869
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_8

    .line 870
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

    .line 879
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

    .line 880
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2f

    .line 881
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

    .line 847
    :goto_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p1

    .line 849
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 850
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v1

    and-int/2addr v1, p3

    if-eqz v1, :cond_f

    .line 851
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

    .line 891
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onServicesDiscoveredComplete(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onServicesDiscovered(Ljava/util/List;)V

    return-void
.end method

.method private postCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V
    .registers 4

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "postCommand: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter p1

    .line 381
    :try_start_1e
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_29

    .line 382
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->processCommand()V

    .line 384
    :cond_29
    monitor-exit p1

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private postCommandTimeoutTask()V
    .registers 5

    .line 557
    iget v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->commandTimeoutMill:I

    if-gtz v0, :cond_5

    return-void

    .line 560
    :cond_5
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mCommandTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->commandTimeoutMill:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private processCommand()V
    .registers 6

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processing : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 395
    :try_start_17
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 396
    monitor-exit v0

    return-void

    .line 397
    :cond_21
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    .line 398
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_68

    if-nez v1, :cond_2d

    return-void

    .line 403
    :cond_2d
    iget-object v0, v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    .line 405
    sget-object v2, Lcom/keephealth/android/util/telinkota/Command$CommandType;->ENABLE_NOTIFY:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    if-eq v0, v2, :cond_55

    sget-object v2, Lcom/keephealth/android/util/telinkota/Command$CommandType;->DISABLE_NOTIFY:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    if-eq v0, v2, :cond_55

    .line 406
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mProcessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_41
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_50

    const/4 v2, 0x1

    .line 410
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    .line 411
    :cond_50
    monitor-exit v0

    goto :goto_55

    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_52

    throw v1

    .line 414
    :cond_55
    :goto_55
    iget-object v0, v1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget v0, v0, Lcom/keephealth/android/util/telinkota/Command;->delay:I

    if-lez v0, :cond_64

    .line 416
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mCommandDelayRunnable:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_67

    .line 418
    :cond_64
    invoke-direct {p0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->processCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V

    :goto_67
    return-void

    :catchall_68
    move-exception v1

    .line 398
    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v1
.end method

.method private declared-synchronized processCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V
    .registers 8

    const-string v0, "processCommand : "

    monitor-enter p0

    .line 424
    :try_start_3
    iget-object v1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    .line 425
    iget-object v2, v1, Lcom/keephealth/android/util/telinkota/Command;->type:Lcom/keephealth/android/util/telinkota/Command$CommandType;

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/keephealth/android/util/telinkota/Command;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 429
    sget-object v0, Lcom/keephealth/android/util/telinkota/Peripheral$2;->$SwitchMap$com$keephealth$android$util$telinkota$Command$CommandType:[I

    invoke-virtual {v2}, Lcom/keephealth/android/util/telinkota/Command$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_8c

    goto :goto_86

    .line 472
    :pswitch_27
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommandTimeoutTask()V

    .line 473
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->requestGattMtu(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V

    goto :goto_86

    .line 463
    :pswitch_2e
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommandTimeoutTask()V

    .line 464
    iget-object v2, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v4, v1, Lcom/keephealth/android/util/telinkota/Command;->descriptorUUID:Ljava/util/UUID;

    iget-object v5, v1, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/telinkota/Peripheral;->writeDescriptor(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)V

    goto :goto_86

    .line 458
    :pswitch_3f
    iget-object v0, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->disableNotification(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_86

    .line 454
    :pswitch_47
    iget-object v0, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->enableNotification(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_86

    .line 447
    :pswitch_4f
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommandTimeoutTask()V

    .line 448
    iget-object v2, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v5, v1, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/telinkota/Peripheral;->writeCharacteristic(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    goto :goto_86

    .line 443
    :pswitch_5f
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommandTimeoutTask()V

    .line 444
    iget-object v0, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v2, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Command;->descriptorUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->readDescriptor(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V

    goto :goto_86

    .line 436
    :pswitch_6c
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommandTimeoutTask()V

    .line 437
    iget-object v2, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v3, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object v5, v1, Lcom/keephealth/android/util/telinkota/Command;->data:[B

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/keephealth/android/util/telinkota/Peripheral;->writeCharacteristic(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V

    goto :goto_86

    .line 431
    :pswitch_7c
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommandTimeoutTask()V

    .line 432
    iget-object v0, v1, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, v1}, Lcom/keephealth/android/util/telinkota/Peripheral;->readCharacteristic(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_88

    .line 476
    :goto_86
    monitor-exit p0

    return-void

    :catchall_88
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_6c
        :pswitch_5f
        :pswitch_4f
        :pswitch_47
        :pswitch_3f
        :pswitch_2e
        :pswitch_27
    .end packed-switch
.end method

.method private readCharacteristic(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 5

    .line 621
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1f

    .line 626
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    .line 628
    const-string p3, "read characteristic error"

    if-eqz p1, :cond_21

    .line 630
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_21

    :cond_1a
    const/4 p1, 0x1

    const-string p3, ""

    move p2, p1

    goto :goto_21

    .line 641
    :cond_1f
    const-string p3, "service is not offered by the remote device"

    :cond_21
    :goto_21
    if-nez p2, :cond_29

    .line 645
    invoke-direct {p0, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    :cond_29
    return-void
.end method

.method private readDescriptor(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)V
    .registers 5

    .line 579
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_27

    .line 584
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 588
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    .line 589
    const-string p3, "read descriptor error"

    if-eqz p1, :cond_29

    .line 590
    iget-object p4, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p4, p1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_29

    :cond_20
    const/4 p2, 0x1

    const-string p3, ""

    goto :goto_29

    .line 601
    :cond_24
    const-string p3, "read characteristic error"

    goto :goto_29

    .line 605
    :cond_27
    const-string p3, "service is not offered by the remote device"

    :cond_29
    :goto_29
    if-nez p2, :cond_31

    .line 609
    invoke-direct {p0, p3}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 610
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    :cond_31
    return-void
.end method

.method private requestGattMtu(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V
    .registers 3

    .line 733
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object p1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget p1, p1, Lcom/keephealth/android/util/telinkota/Command;->mtu:I

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 735
    const-string p1, "request mtu error"

    const/4 v0, 0x0

    goto :goto_13

    :cond_10
    const/4 v0, 0x1

    .line 733
    const-string p1, ""

    :goto_13
    if-nez v0, :cond_1b

    .line 743
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 744
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    :cond_1b
    return-void
.end method

.method private writeCharacteristic(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .registers 7

    .line 657
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2a

    .line 661
    invoke-direct {p0, p1, p3, p4}, Lcom/keephealth/android/util/telinkota/Peripheral;->findWritableCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 665
    invoke-virtual {p1, p5}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 666
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 668
    iget-object p3, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 670
    const-string p1, "write characteristic error"

    goto :goto_2c

    :cond_20
    const/4 p1, 0x1

    .line 668
    const-string p2, ""

    move-object v0, p2

    move p2, p1

    move-object p1, v0

    goto :goto_2c

    .line 675
    :cond_27
    const-string p1, "no characteristic"

    goto :goto_2c

    .line 679
    :cond_2a
    const-string p1, "service is not offered by the remote device"

    :goto_2c
    if-nez p2, :cond_34

    .line 683
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    :cond_34
    return-void
.end method

.method private writeDescriptor(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;[B)V
    .registers 6

    .line 696
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2d

    .line 699
    invoke-virtual {p1, p3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 701
    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 703
    invoke-virtual {p1, p5}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 704
    iget-object p3, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {p3, p1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 706
    const-string p1, "write descriptor error"

    goto :goto_2f

    :cond_23
    const/4 p2, 0x1

    .line 704
    const-string p1, ""

    goto :goto_2f

    .line 710
    :cond_27
    const-string p1, "no descriptor"

    goto :goto_2f

    .line 714
    :cond_2a
    const-string p1, "no characteristic"

    goto :goto_2f

    .line 718
    :cond_2d
    const-string p1, "service is not offered by the remote device"

    :goto_2f
    if-nez p2, :cond_37

    .line 722
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    :cond_37
    return-void
.end method


# virtual methods
.method protected clear()V
    .registers 3

    const/4 v0, 0x0

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->processing:Ljava/lang/Boolean;

    .line 244
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->serviceRefreshed:Z

    .line 245
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->stopMonitoringRssi()V

    .line 246
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->cancelCommandTimeoutTask()V

    .line 247
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mInputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 248
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mOutputCommandQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 249
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 250
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected connect()V
    .registers 6

    const-wide/16 v0, 0x0

    .line 184
    iput-wide v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->lastTime:J

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_9

    return-void

    .line 186
    :cond_9
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    .line 187
    const-string v0, "connect start"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->w(Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_38

    .line 196
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->disconnect()Z

    .line 197
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/16 v0, 0xff

    .line 198
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/telinkota/Peripheral;->onDisconnect(I)V

    goto :goto_42

    .line 200
    :cond_38
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnectionTimeoutRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->connectionTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_42
    :goto_42
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3

    .line 164
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 165
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->onConnect()V

    .line 167
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mServices:Ljava/util/List;

    if-eqz p1, :cond_2b

    .line 168
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onServicesDiscoveredComplete(Ljava/util/List;)V

    goto :goto_2b

    .line 171
    :cond_19
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    .line 172
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->disconnect()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 174
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->isConnectWaiting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2b

    .line 177
    :cond_28
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->connect()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public disconnect()Z
    .registers 8

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disconnect -- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->w(Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->clear()V

    .line 209
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2d

    if-eq v0, v2, :cond_2d

    if-eq v0, v1, :cond_2d

    return v3

    .line 212
    :cond_2d
    iget-object v5, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v6, 0x1

    if-eqz v5, :cond_59

    if-ne v0, v2, :cond_3f

    .line 214
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 215
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_4f

    :cond_3f
    if-ne v0, v4, :cond_4f

    .line 218
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 219
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 220
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v3

    .line 230
    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v6

    .line 226
    :cond_59
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v3
.end method

.method protected enableMonitorRssi(Z)V
    .registers 5

    if-eqz p1, :cond_14

    .line 363
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 364
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->updateIntervalMill:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 366
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_21
    return-void
.end method

.method protected forceDisconnect()V
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_c

    .line 236
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 237
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 239
    :cond_c
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method protected generateHashKey(Ljava/util/UUID;Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .registers 5

    .line 897
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

    .line 898
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

    .line 116
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->device:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getMacBytes()[B
    .registers 8

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->macBytes:[B

    if-nez v0, :cond_30

    .line 130
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 131
    array-length v1, v0

    .line 132
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->macBytes:[B

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_29

    .line 135
    iget-object v4, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->macBytes:[B

    aget-object v5, v0, v3

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 138
    :cond_29
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->macBytes:[B

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/keephealth/android/util/telinkota/util/Arrays;->reverse([BII)[B

    .line 141
    :cond_30
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->macBytes:[B

    return-object v0
.end method

.method public getMtu()I
    .registers 2

    .line 1055
    iget v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mtu:I

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

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mServices:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->type:I

    return v0
.end method

.method public isConnected()Z
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    monitor-exit v0

    return v1

    :catchall_11
    move-exception v1

    .line 160
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 944
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 946
    invoke-direct {p0, p2}, Lcom/keephealth/android/util/telinkota/Peripheral;->generateHashKey(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object p1

    .line 947
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mNotificationCallbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    if-eqz p1, :cond_24

    .line 951
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    iget-object v0, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget-object v0, v0, Lcom/keephealth/android/util/telinkota/Command;->serviceUUID:Ljava/util/UUID;

    iget-object v1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget-object v1, v1, Lcom/keephealth/android/util/telinkota/Command;->characteristicUUID:Ljava/util/UUID;

    iget-object p1, p1, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;->command:Lcom/keephealth/android/util/telinkota/Command;

    iget-object p1, p1, Lcom/keephealth/android/util/telinkota/Command;->tag:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    .line 961
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 963
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->cancelCommandTimeoutTask()V

    if-nez p3, :cond_10

    .line 966
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 967
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_15

    .line 969
    :cond_10
    const-string p1, "read characteristic failed"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 972
    :goto_15
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 4

    .line 978
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 980
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->cancelCommandTimeoutTask()V

    if-nez p3, :cond_d

    const/4 p1, 0x0

    .line 983
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_12

    .line 985
    :cond_d
    const-string p1, "write characteristic fail"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 988
    :goto_12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onCharacteristicWrite newStatus : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 990
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method protected onConnect()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnectionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-boolean v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->monitorRssi:Z

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/telinkota/Peripheral;->enableMonitorRssi(Z)V

    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 5

    .line 908
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onConnectionStateChange  status :"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_51

    .line 913
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 914
    :try_start_22
    iget-object p2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 915
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_4e

    .line 917
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_38

    .line 923
    :cond_34
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->onConnect()V

    goto :goto_6d

    .line 918
    :cond_38
    :goto_38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "remote service discovery has been stopped status = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 920
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->disconnect()Z

    goto :goto_6d

    :catchall_4e
    move-exception p2

    .line 915
    :try_start_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p2

    .line 928
    :cond_51
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter p1

    .line 929
    :try_start_54
    const-string p3, "Close"

    invoke-static {p3}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 931
    iget-object p3, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz p3, :cond_60

    .line 932
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 934
    :cond_60
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->clear()V

    .line 935
    iget-object p3, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 936
    invoke-virtual {p0, p2}, Lcom/keephealth/android/util/telinkota/Peripheral;->onDisconnect(I)V

    .line 937
    monitor-exit p1

    :goto_6d
    return-void

    :catchall_6e
    move-exception p2

    monitor-exit p1
    :try_end_70
    .catchall {:try_start_54 .. :try_end_70} :catchall_6e

    throw p2
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 996
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 998
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->cancelCommandTimeoutTask()V

    if-nez p3, :cond_10

    .line 1001
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p1

    .line 1002
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_15

    .line 1004
    :cond_10
    const-string p1, "read description failed"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 1007
    :goto_15
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .registers 4

    .line 1013
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 1015
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->cancelCommandTimeoutTask()V

    if-nez p3, :cond_d

    const/4 p1, 0x0

    .line 1018
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_12

    .line 1020
    :cond_d
    const-string p1, "write description failed"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 1023
    :goto_12
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method protected onDisableNotify()V
    .registers 1

    return-void
.end method

.method protected onDisconnect(I)V
    .registers 3

    .line 297
    iget-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDisconnectionTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 298
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->enableMonitorRssi(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->refreshCache()Z

    return-void
.end method

.method protected onEnableNotify()V
    .registers 1

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 1060
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    .line 1061
    iput p2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mtu:I

    .line 1062
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->cancelCommandTimeoutTask()V

    if-nez p3, :cond_f

    const/4 p1, 0x0

    .line 1065
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandSuccess(Ljava/lang/Object;)V

    goto :goto_14

    .line 1067
    :cond_f
    const-string p1, "request mtu callback fail"

    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandError(Ljava/lang/String;)V

    .line 1069
    :goto_14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "mtu changed : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->commandCompleted()V

    return-void
.end method

.method protected onNotify([BLjava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .registers 5

    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 4

    .line 1043
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 3

    .line 1075
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    return-void
.end method

.method protected onRssiChanged()V
    .registers 1

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 4

    .line 1028
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    if-nez p2, :cond_25

    .line 1031
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object p1

    .line 1032
    iput-object p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mServices:Ljava/util/List;

    .line 1033
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Service discovery success:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 1034
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/telinkota/Peripheral;->onServicesDiscoveredComplete(Ljava/util/List;)V

    goto :goto_2d

    .line 1036
    :cond_25
    const-string p1, "Service discovery failed"

    invoke-static {p1}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 1037
    invoke-virtual {p0}, Lcom/keephealth/android/util/telinkota/Peripheral;->disconnect()Z

    :goto_2d
    return-void
.end method

.method protected onServicesDiscovered(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public refreshCache()Z
    .registers 7

    .line 313
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 314
    const-string v0, "refresh error: gatt null"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    return v1

    .line 317
    :cond_b
    const-string v0, "Device#refreshCache#prepare"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->d(Ljava/lang/String;)I

    .line 320
    :try_start_10
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 321
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "refresh"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 323
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 325
    iget-object v2, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mDelayHandler:Landroid/os/Handler;

    new-instance v3, Lcom/keephealth/android/util/telinkota/Peripheral$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/util/telinkota/Peripheral$1;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3b

    :cond_3a
    return v0

    .line 335
    :catch_3b
    const-string v0, "An exception occurs while refreshing device"

    invoke-static {v0}, Lcom/keephealth/android/util/telinkota/util/OtaLogger;->e(Ljava/lang/String;)I

    :cond_40
    return v1
.end method

.method public final requestConnectionPriority(I)Z
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothGatt;->requestConnectionPriority(I)Z

    move-result p1

    return p1
.end method

.method public sendCommand(Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)Z
    .registers 6

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mConnState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    .line 257
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    .line 258
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1a

    .line 260
    new-instance v0, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;-><init>(Lcom/keephealth/android/util/telinkota/Peripheral;Lcom/keephealth/android/util/telinkota/Command$Callback;Lcom/keephealth/android/util/telinkota/Command;)V

    .line 261
    invoke-direct {p0, v0}, Lcom/keephealth/android/util/telinkota/Peripheral;->postCommand(Lcom/keephealth/android/util/telinkota/Peripheral$CommandContext;)V

    const/4 p1, 0x1

    return p1

    :catchall_1a
    move-exception p1

    .line 258
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public setConnectionTimeout(I)V
    .registers 2

    .line 149
    iput p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->connectionTimeout:I

    return-void
.end method

.method public final startMonitoringRssi(I)V
    .registers 3

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->monitorRssi:Z

    if-gtz p1, :cond_a

    const/16 p1, 0x7d0

    .line 271
    iput p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->updateIntervalMill:I

    goto :goto_c

    .line 273
    :cond_a
    iput p1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->updateIntervalMill:I

    :goto_c
    return-void
.end method

.method public final stopMonitoringRssi()V
    .registers 3

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->monitorRssi:Z

    .line 278
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 279
    iget-object v0, p0, Lcom/keephealth/android/util/telinkota/Peripheral;->mRssiUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
