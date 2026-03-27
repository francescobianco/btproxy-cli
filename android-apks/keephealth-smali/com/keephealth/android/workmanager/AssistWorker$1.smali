.class Lcom/keephealth/android/workmanager/AssistWorker$1;
.super Landroid/os/Handler;
.source "AssistWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/workmanager/AssistWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/workmanager/AssistWorker;


# direct methods
.method constructor <init>(Lcom/keephealth/android/workmanager/AssistWorker;Landroid/os/Looper;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 48
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x156

    if-ne p1, v0, :cond_98

    .line 49
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    # getter for: Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J
    invoke-static {p1}, Lcom/keephealth/android/workmanager/AssistWorker;->access$000(Lcom/keephealth/android/workmanager/AssistWorker;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1b

    .line 50
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J
    invoke-static {p1, v1, v2}, Lcom/keephealth/android/workmanager/AssistWorker;->access$002(Lcom/keephealth/android/workmanager/AssistWorker;J)J

    .line 52
    :cond_1b
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/workmanager/AssistWorker;->isAppOnForeground(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    # getter for: Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J
    invoke-static {p1}, Lcom/keephealth/android/workmanager/AssistWorker;->access$000(Lcom/keephealth/android/workmanager/AssistWorker;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long p1, v1, v3

    if-lez p1, :cond_4a

    .line 56
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J
    invoke-static {p1, v1, v2}, Lcom/keephealth/android/workmanager/AssistWorker;->access$002(Lcom/keephealth/android/workmanager/AssistWorker;J)J

    goto :goto_4a

    .line 59
    :cond_41
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/keephealth/android/workmanager/AssistWorker;->timeNow:J
    invoke-static {p1, v1, v2}, Lcom/keephealth/android/workmanager/AssistWorker;->access$002(Lcom/keephealth/android/workmanager/AssistWorker;J)J

    .line 61
    :cond_4a
    :goto_4a
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    # setter for: Lcom/keephealth/android/workmanager/AssistWorker;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1, v1}, Lcom/keephealth/android/workmanager/AssistWorker;->access$102(Lcom/keephealth/android/workmanager/AssistWorker;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;

    .line 64
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    # getter for: Lcom/keephealth/android/workmanager/AssistWorker;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;
    invoke-static {p1}, Lcom/keephealth/android/workmanager/AssistWorker;->access$100(Lcom/keephealth/android/workmanager/AssistWorker;)Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_7f

    .line 68
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    move-result p1

    if-nez p1, :cond_7f

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isScanAcivity:Z

    if-nez p1, :cond_7f

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    if-nez p1, :cond_7f

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    if-nez p1, :cond_7f

    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGattingConnect:Z

    if-nez p1, :cond_7f

    const/4 p1, 0x1

    .line 69
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->connectingOrnoTwo:Z

    .line 70
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->reconnect()V

    .line 75
    :cond_7f
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_98

    .line 77
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_98

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/workmanager/AssistWorker$1;->this$0:Lcom/keephealth/android/workmanager/AssistWorker;

    iget-object p1, p1, Lcom/keephealth/android/workmanager/AssistWorker;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_98
    return-void
.end method
