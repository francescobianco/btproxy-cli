.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->onStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1527
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1530
    iget v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->val$state:I

    const/4 v1, 0x1

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    const/4 v3, 0x0

    if-eqz v0, :cond_12c

    const-wide/16 v4, 0x1388

    if-eq v0, v1, :cond_f2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_a5

    const/4 v1, 0x3

    const/4 v6, 0x4

    if-eq v0, v1, :cond_53

    if-eq v0, v6, :cond_37

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1a

    goto/16 :goto_1dc

    .line 1596
    :cond_1a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u91cd\u8fde\u60c5\u51b5run: \u53d1\u9001\u5b8c\u6210"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    new-instance v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;)V

    const-wide/16 v1, 0x5dc

    .line 1637
    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15$1;->sendEmptyMessageDelayed(IJ)Z

    .line 1643
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 1644
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1645
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    goto/16 :goto_1dc

    .line 1557
    :cond_37
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u91cd\u8fde\u60c5\u51b5run: \u6b63\u5728\u5347\u7ea7"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1dc

    .line 1538
    :cond_53
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u91cd\u8fde\u60c5\u51b5run: \u84dd\u7259\u8bbe\u5907\u5df2\u7ecf\u51c6\u5907\u597d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1540
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1541
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->upgrade(I)V

    .line 1542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u84dd\u7259\u8bbe\u5907\u5df2\u7ecf\u51c6\u5907\u597d \u53ef\u4ee5\u66f4\u65b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1dc

    .line 1546
    :cond_a5
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\u91cd\u8fde\u60c5\u51b5run: \u84dd\u7259\u8bbe\u5907\u6b63\u5728\u51c6\u5907"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1548
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1551
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 1552
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u84dd\u7259\u8bbe\u5907\u6b63\u5728\u51c6\u5907\u4e2d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1dc

    .line 1532
    :cond_f2
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3900(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u91cd\u8fde\u60c5\u51b5run: \u84dd\u7259\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u84dd\u7259\u8bbe\u5907\u5df2\u8fde\u63a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto/16 :goto_1dc

    .line 1562
    :cond_12c
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$4300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u91cd\u8fde\u60c5\u51b5run: \u5347\u7ea7\u8d85\u65f6\u6216\u8005\u5176\u4ed6\u9519\u8bef\u7b49"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  q32\u7cfb\u5217\u53d1\u9001\u8868\u76d8\u8d85\u65f6\u6216\u8005\u5176\u4ed6\u9519\u8bef\u7b49"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1568
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1569
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1570
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1571
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1572
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {v0, v3}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 1573
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v0

    if-eqz v0, :cond_195

    .line 1574
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    .line 1575
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100534

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1577
    :cond_195
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isComMe:Z

    if-eqz v0, :cond_1a2

    .line 1578
    sput-boolean v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    const/4 v0, -0x1

    .line 1579
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1580
    sput v3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1581
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1583
    :cond_1a2
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1584
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_1ba

    .line 1585
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->itemAdapterAdapter:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->notifyDataSetChanged()V

    .line 1587
    :cond_1ba
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mineDialAdapter:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyDataSetChanged()V

    .line 1588
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isOnVisible:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Z

    move-result v0

    if-eqz v0, :cond_1dc

    .line 1589
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$15;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialogTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3400(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1dc
    :goto_1dc
    return-void
.end method
