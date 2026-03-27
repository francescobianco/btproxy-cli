.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;)V
    .registers 2

    .line 1242
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onFailed$0$com-keephealth-android-ui-device-fragment-CustomFragment$12$2(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 5

    .line 1251
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1252
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 1253
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1255
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  \u53d1\u9001\u8868\u76d8\u5931\u8d25_e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1256
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 1257
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1258
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1259
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1260
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1261
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1262
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1263
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10022a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v1, 0x7f0800a3

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1265
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_af

    .line 1266
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1267
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100534

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1269
    :cond_af
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_ce

    .line 1271
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_ce
    return-void
.end method

.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 1250
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$12$2;Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V

    invoke-static {v0}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 2

    return-void
.end method
