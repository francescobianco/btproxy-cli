.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;
.super Landroid/os/Handler;
.source "MineDialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 2

    .line 712
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 717
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_94

    if-eq v0, v2, :cond_26

    const/4 p1, 0x2

    if-eq v0, p1, :cond_f

    goto/16 :goto_11e

    .line 767
    :cond_f
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 768
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    goto/16 :goto_11e

    .line 719
    :cond_26
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    if-lt v0, v2, :cond_78

    .line 720
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 721
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->downloadTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_43
    const-wide/16 v4, 0x1e

    .line 725
    :try_start_45
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_48
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p1

    .line 727
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 729
    :goto_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u4e0b\u8f7d\u6587\u4ef6\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_11e

    .line 732
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDialToDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    goto/16 :goto_11e

    .line 735
    :cond_78
    iget v0, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v0, v0, 0x64

    iget p1, p1, Landroid/os/Message;->arg2:I

    div-int/2addr v0, p1

    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 736
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_11e

    .line 737
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    goto/16 :goto_11e

    .line 742
    :cond_94
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->clearHttlLoad()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2500(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    .line 743
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_aa

    .line 744
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 746
    :cond_aa
    const-string p1, "\u5347\u7ea7\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 747
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u4e0b\u8f7d\u6587\u4ef6\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 748
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result p1

    if-eqz p1, :cond_f2

    .line 749
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$2800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "run:1 \u53d1\u9001\u5931\u8d25"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 753
    :cond_f2
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz p1, :cond_106

    .line 754
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 755
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 756
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 757
    sput-boolean v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 p1, -0x1

    .line 758
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 759
    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 761
    :cond_106
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 762
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    if-eqz p1, :cond_11e

    .line 763
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$8;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    :cond_11e
    :goto_11e
    return-void
.end method
