.class public Lcom/keephealth/android/sevice/MusicContrlTwoService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicContrlTwoService.java"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private eventtime:J

.field private handler:Landroid/os/Handler;

.field private mMusicPlayPackageName:Ljava/lang/String;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private playing:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z

    return p0
.end method

.method static synthetic access$002(Lcom/keephealth/android/sevice/MusicContrlTwoService;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->playing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/media/AudioManager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Ljava/lang/String;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/MusicContrlTwoService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->mMusicPlayPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/keephealth/android/sevice/MusicContrlTwoService;)J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->sendMusicKeyEvent(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/sevice/MusicContrlTwoService;)Landroid/os/Handler;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V
    .registers 7

    .line 242
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_e

    .line 243
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;

    .line 245
    :cond_e
    iget-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    return-void

    :cond_13
    const/16 v1, 0x18

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p2, v1, :cond_1d

    .line 250
    invoke-virtual {v0, v2, v3, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_2e

    :cond_1d
    const/16 v1, 0x19

    if-ne p2, v1, :cond_26

    const/4 p1, -0x1

    .line 255
    invoke-virtual {v0, v2, p1, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_2e

    .line 259
    :cond_26
    :try_start_26
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method private sendMusicKeyEvent(I)V
    .registers 14

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v7, v0, v2

    .line 219
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v0

    move-wide v5, v7

    move v10, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 221
    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V

    const/4 v1, 0x1

    .line 222
    invoke-static {v0, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;I)V

    .line 223
    const-string p1, "----AudioManager \u53d1\u9001\u952e\u503c\u6210\u529f----"

    invoke-static {p1}, Lcom/keephealth/android/util/log/DebugLog;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 4

    .line 52
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    .line 53
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->audioManager:Landroid/media/AudioManager;

    .line 54
    invoke-virtual {p0}, Lcom/keephealth/android/sevice/MusicContrlTwoService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->packageManager:Landroid/content/pm/PackageManager;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/sevice/MusicContrlTwoService;->eventtime:J

    .line 56
    const-string v0, "FF433"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/keephealth/android/sevice/MusicContrlTwoService$1;-><init>(Lcom/keephealth/android/sevice/MusicContrlTwoService;I)V

    invoke-virtual {v0, v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->addDeviceCallback(ILcom/keephealth/android/util/ble/bluetooth/DeviceCallback;)V

    return-void
.end method
