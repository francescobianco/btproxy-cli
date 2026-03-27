.class public Lcom/keephealth/android/workmanager/AssistWorker;
.super Landroidx/work/Worker;
.source "AssistWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;
    }
.end annotation


# instance fields
.field assistCallPhoning:Lcom/keephealth/android/sevice/AssistWorkManager;

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

.field callHandler:Landroid/os/Handler;

.field private filter:Landroid/content/IntentFilter;

.field handler:Landroid/os/Handler;

.field intelligentNotificationWorkManager:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

.field private mRunnable:Ljava/lang/Runnable;

.field myAsyncTask:Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;

.field private timeNow:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 120
    new-instance p1, Lcom/keephealth/android/workmanager/AssistWorker$2;

    invoke-direct {p1, p0}, Lcom/keephealth/android/workmanager/AssistWorker$2;-><init>(Lcom/keephealth/android/workmanager/AssistWorker;)V

    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->mRunnable:Ljava/lang/Runnable;

    .line 44
    invoke-virtual {p0}, Lcom/keephealth/android/workmanager/AssistWorker;->clearHandler()V

    .line 45
    new-instance p1, Lcom/keephealth/android/workmanager/AssistWorker$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/keephealth/android/workmanager/AssistWorker$1;-><init>(Lcom/keephealth/android/workmanager/AssistWorker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    .line 84
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/workmanager/AssistWorker;)J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/keephealth/android/workmanager/AssistWorker;J)J
    .registers 3

    .line 39
    iput-wide p1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/keephealth/android/workmanager/AssistWorker;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$102(Lcom/keephealth/android/workmanager/AssistWorker;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p1
.end method

.method static synthetic access$200(Lcom/keephealth/android/workmanager/AssistWorker;)Ljava/lang/Runnable;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static isAppOnForeground(Landroid/content/Context;)Z
    .registers 7

    .line 88
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 89
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_46

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_16

    goto :goto_46

    .line 93
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-nez v2, :cond_2a

    return v1

    .line 96
    :cond_2a
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 97
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    if-eq p0, v0, :cond_44

    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_43

    goto :goto_44

    :cond_43
    move v1, v3

    :cond_44
    :goto_44
    return v1

    :cond_45
    return v3

    :cond_46
    :goto_46
    return v1
.end method


# virtual methods
.method public clearHandler()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 106
    iput-object v1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    .line 108
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iput-object v1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->callHandler:Landroid/os/Handler;

    :cond_13
    return-void
.end method

.method public doWork()Landroidx/work/ListenableWorker$Result;
    .registers 3

    .line 198
    const-string v0, "drer4re"

    const-string v1, "dowork..."

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->myAsyncTask:Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;

    if-nez v0, :cond_18

    .line 200
    new-instance v0, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;

    invoke-direct {v0, p0}, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;-><init>(Lcom/keephealth/android/workmanager/AssistWorker;)V

    iput-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->myAsyncTask:Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;

    const/4 v1, 0x0

    .line 201
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/workmanager/AssistWorker$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 204
    :cond_18
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method

.method public initPairStatus()V
    .registers 5

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->filter:Landroid/content/IntentFilter;

    .line 185
    new-instance v0, Lcom/keephealth/android/receiver/BluetoothReceiver;

    invoke-direct {v0}, Lcom/keephealth/android/receiver/BluetoothReceiver;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/workmanager/AssistWorker;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_23

    .line 188
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    iget-object v2, p0, Lcom/keephealth/android/workmanager/AssistWorker;->filter:Landroid/content/IntentFilter;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_2e

    .line 190
    :cond_23
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/workmanager/AssistWorker;->blueReceiver:Lcom/keephealth/android/receiver/BluetoothReceiver;

    iget-object v2, p0, Lcom/keephealth/android/workmanager/AssistWorker;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2e
    return-void
.end method
