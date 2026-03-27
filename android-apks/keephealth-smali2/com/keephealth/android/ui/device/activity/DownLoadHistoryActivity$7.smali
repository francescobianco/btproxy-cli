.class Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;
.super Ljava/lang/Object;
.source "DownLoadHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 514
    const-string v0, "GFF32f"

    const-string v1, "requestFaild_blemanager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 515
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 517
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 518
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # setter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1402(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;Z)Z

    .line 519
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x1

    .line 520
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 521
    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 523
    :cond_39
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMeDetail:Z

    if-eqz v1, :cond_48

    const/4 v1, -0x1

    .line 524
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 525
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 526
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 527
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 528
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 530
    :cond_48
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->itemAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$900(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyItemChanged(I)V

    .line 531
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 532
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_87

    .line 533
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$600(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity$7;->this$0:Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;->access$2000(Lcom/keephealth/android/ui/device/activity/DownLoadHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_87
    return-void
.end method
