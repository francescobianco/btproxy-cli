.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;
.super Landroid/os/Handler;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;)V
    .registers 2

    .line 1681
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1685
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$400(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->writeTimeOut:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1686
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    if-eqz p1, :cond_15b

    .line 1687
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/BleManager;

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BleManager;->closeNotify()V

    .line 1688
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/actions_watch_face/bt_watch.bin"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1689
    invoke-static {p1}, Lcom/keephealth/android/util/file/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 1692
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1693
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1694
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->btnSend:Landroid/widget/Button;

    const v0, 0x7f0800a3

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1695
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100538

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 1696
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 1697
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    const/4 v0, 0x0

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1402(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Z)Z

    .line 1698
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 1699
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 1700
    sput-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    .line 1701
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    .line 1703
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->deleteAll()V

    .line 1704
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    if-eqz p1, :cond_111

    .line 1705
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$900(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/icon_save_custom_mine.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/fragment/ImageResizer;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_111

    .line 1707
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/model/bean/DialDetailB;->setBgUrl(Ljava/lang/String;)V

    .line 1710
    :cond_111
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    const-string v1, ""

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->ImagePath:Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$902(Lcom/keephealth/android/ui/device/fragment/CustomFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 1711
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dialDetailBDao:Lcom/keephealth/android/greendao/gen/DialDetailBDao;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1600(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/greendao/gen/DialDetailBDao;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object v1, v1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/keephealth/android/greendao/gen/DialDetailBDao;->save(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 1712
    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    .line 1713
    sput-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 1714
    sput v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    .line 1715
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result p1

    if-eqz p1, :cond_148

    .line 1716
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13$1;->this$1:Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->sendDial:Lcom/keephealth/android/model/bean/DialDetailB;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$1700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)Lcom/keephealth/android/model/bean/DialDetailB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sput p1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 1718
    :cond_148
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 1719
    const-string p1, "gfe43"

    const-string v0, "\u53d1\u9001\u8868\u76d8\u5b8c\u6210\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x3f5

    .line 1721
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_15b
    return-void
.end method
