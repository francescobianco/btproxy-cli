.class public Lcom/keephealth/android/workmanager/MusicControlWorkManager;
.super Ljava/lang/Object;
.source "MusicControlWorkManager.java"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private context:Landroid/content/Context;

.field deviceCallbackWrapper:Lcom/keephealth/android/util/ble/DeviceCallbackWrapper;

.field private eventtime:J

.field private handler:Landroid/os/Handler;

.field private mMusicPlayPackageName:Ljava/lang/String;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private playing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->handler:Landroid/os/Handler;

    .line 34
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J

    .line 37
    const-string p2, "FF433"

    const-string v0, "onCreate"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    new-instance v0, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, p1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager$1;-><init>(Lcom/keephealth/android/workmanager/MusicControlWorkManager;ILandroid/content/Context;)V

    invoke-virtual {p2, v1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Z)Z
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->playing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/media/AudioManager;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/workmanager/MusicControlWorkManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->mMusicPlayPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)J
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->eventtime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/keephealth/android/workmanager/MusicControlWorkManager;I)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->sendMusicKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/workmanager/MusicControlWorkManager;)Landroid/os/Handler;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V
    .registers 7

    .line 224
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 225
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;

    .line 227
    :cond_10
    iget-object v0, p0, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_15

    return-void

    :cond_15
    const/16 v1, 0x18

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p2, v1, :cond_1f

    .line 232
    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_30

    :cond_1f
    const/16 v1, 0x19

    if-ne p2, v1, :cond_28

    const/4 p1, -0x1

    .line 237
    invoke-virtual {v0, v2, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_30

    .line 241
    :cond_28
    :try_start_28
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2c

    goto :goto_30

    :catch_2c
    move-exception p1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_30
    return-void
.end method

.method private sendMusicKeyEvent(I)V
    .registers 14

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v7, v0, v2

    .line 201
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    move-wide v5, v7

    move v10, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 203
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V

    const/4 v1, 0x1

    .line 204
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/workmanager/MusicControlWorkManager;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V

    .line 205
    const-string p1, "----AudioManager \u53d1\u9001\u952e\u503c\u6210\u529f----"

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method
