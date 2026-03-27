.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 899
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 902
    const-string v0, "GFF32f"

    const-string v1, "requestFaild_blemanager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 903
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 904
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 905
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 906
    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 907
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 909
    :cond_2a
    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v1, :cond_39

    .line 910
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 911
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v1, -0x1

    .line 912
    sput v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 913
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 914
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 916
    :cond_39
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 917
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyDataSetChanged()V

    .line 918
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 919
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 920
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 921
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7a
    return-void
.end method
