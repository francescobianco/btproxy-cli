.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->onStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1513
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1517
    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->val$state:I

    const/4 v1, 0x1

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    const/4 v3, 0x0

    if-eqz v0, :cond_131

    const-wide/16 v4, 0x1388

    if-eq v0, v1, :cond_102

    const/4 v6, 0x2

    if-eq v0, v6, :cond_c0

    const/4 v1, 0x3

    const/4 v6, 0x5

    if-eq v0, v1, :cond_79

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4a

    if-eq v0, v6, :cond_1a

    goto/16 :goto_1bf

    .line 1577
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8...\u53d1\u9001\u8868\u76d8\u5b8c\u6210\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1578
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;)V

    const-wide/16 v1, 0x5dc

    .line 1621
    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13$1;->sendEmptyMessageDelayed(IJ)Z

    .line 1627
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1628
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1629
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto/16 :goto_1bf

    .line 1541
    :cond_4a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8...\u8bbe\u5907\u6b63\u5728\u53d1\u9001\u8868\u76d8\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1bf

    .line 1524
    :cond_79
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1525
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1526
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->upgrade(I)V

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8...\u84dd\u7259\u8bbe\u5907\u5df2\u7ecf\u51c6\u5907\u597d \u53ef\u4ee5\u66f4\u65b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1bf

    .line 1531
    :cond_c0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1532
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1535
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1536
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8...\u84dd\u7259\u8bbe\u5907\u6b63\u5728\u51c6\u5907\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1bf

    .line 1519
    :cond_102
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u8868\u76d8...\u84dd\u7259\u8bbe\u5907\u5df2\u8fde\u63a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1bf

    .line 1547
    :cond_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  q32\u7cfb\u5217\u8868\u76d8...\u53d1\u9001\u8868\u76d8\u8d85\u65f6\u6216\u8005\u5176\u4ed6\u9519\u8bef\u7b49"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1550
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1551
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1552
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1553
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1554
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1555
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isSending:Z
    invoke-static {v0, v3}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$702(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;Z)Z

    .line 1556
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1557
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 1558
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f100534

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1559
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1561
    :cond_195
    sput-boolean v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1562
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComeRecom:Z

    if-eqz v0, :cond_1a2

    .line 1563
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    const/4 v0, -0x1

    .line 1564
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1565
    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1568
    :cond_1a2
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->changePosition:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1400(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyItemChanged(I)V

    .line 1569
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->adapter:Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommedAdapter;->notifyDataSetChanged()V

    .line 1570
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$800(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Z

    :goto_1bf
    return-void
.end method
