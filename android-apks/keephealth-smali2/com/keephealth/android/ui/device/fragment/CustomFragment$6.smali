.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;
.super Landroid/os/Handler;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V
    .registers 2

    .line 691
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 696
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0800a3

    const v2, 0x7f10022a

    const-string v3, "\u5f53\u524d\u9875\u9762:"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1fd

    if-eq v0, v4, :cond_130

    const/4 p1, 0x2

    if-eq v0, p1, :cond_15

    goto/16 :goto_28b

    .line 746
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 748
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 749
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 750
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    if-eqz p1, :cond_a5

    .line 751
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 752
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/cropImage_mine.jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/ImageResizer;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a5

    .line 754
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v6}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/keephealth/android/util/file/FileUtil;->getPICPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/DialDetailB;->setBgUrl(Ljava/lang/String;)V

    .line 757
    :cond_a5
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 758
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    .line 761
    :cond_bc
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 762
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    const-string v0, ""

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$902(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 763
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 765
    :cond_db
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_ec

    .line 766
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 768
    :cond_ec
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v5}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 769
    sput-boolean v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 770
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 771
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 772
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    if-eqz p1, :cond_122

    .line 773
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 774
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 775
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 776
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 778
    :cond_122
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    const/16 p1, 0x3f5

    .line 779
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto/16 :goto_28b

    .line 699
    :cond_130
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_170

    .line 700
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f100232

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    mul-int/lit8 v2, v2, 0x64

    iget v4, p1, Landroid/os/Message;->arg2:I

    div-int/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_170
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-lt v0, p1, :cond_28b

    .line 703
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_18d

    .line 704
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->downloadTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 706
    :cond_18d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 707
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_28b

    .line 709
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 710
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_1f6

    .line 712
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1ef

    .line 713
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialFile:Ljava/io/File;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 714
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v2}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/keephealth/android/ui/device/fragment/CustomUtils;->setWatchBin(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/image/BitmapBuilder;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->currentBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$802(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 716
    :cond_1ef
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendQ32DialToDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    goto/16 :goto_28b

    .line 718
    :cond_1f6
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDialIdToDevice()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1100(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    goto/16 :goto_28b

    .line 724
    :cond_1fd
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->clearHttlLoad()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1200(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    .line 725
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    if-eqz p1, :cond_213

    .line 726
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1300(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 728
    :cond_213
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  \u53d1\u9001\u8868\u76d8\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 729
    const-string p1, "\u5347\u7ea7\u6587\u4ef6\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 731
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v5}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 732
    sput-boolean v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 733
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 734
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 735
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    if-eqz p1, :cond_271

    .line 736
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 737
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 740
    :cond_271
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isOnVisible:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1500(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Z

    move-result p1

    if-eqz p1, :cond_28b

    .line 741
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$6;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100534

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 742
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_28b
    :goto_28b
    return-void
.end method
