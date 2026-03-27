.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 2

    .line 1669
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/bluetooth/BluetoothDevice;)V
    .registers 8

    .line 1674
    const-string v0, "gfgf433"

    const-string v1, "\u8fde\u63a5\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    const-string v0, "onConnected-\u8fde\u63a5\u6210\u529f"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1677
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const/4 v2, 0x1

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isReconnect:Z
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5602(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1678
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z
    invoke-static {v0, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$202(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1679
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    new-instance v3, Lcom/keephealth/android/twootablue/ota/OTAManager;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v5

    invoke-interface {v5}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getIO()Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/keephealth/android/twootablue/ota/OTAManager;-><init>(Landroid/content/Context;Lcom/keephealth/android/twootablue/ibluz/factory/IBluzIO;)V

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0, v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 1680
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {v0, v3}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setListener(Lcom/keephealth/android/twootablue/ota/OTAManager$OTAListener;)V

    .line 1682
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->loadFile:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1683
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_124

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1684
    iget-object v4, v3, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v4, :cond_46

    iget-object v4, v3, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    const/16 v4, 0xb

    .line 1685
    iput v4, v3, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    .line 1686
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v3

    if-eqz v3, :cond_73

    .line 1687
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 1690
    :cond_73
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5002(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1691
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewDeviceName:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1692
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1693
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1694
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBandWidthStartStop:Landroid/widget/Button;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1706
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->fileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1707
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_c7

    return-void

    .line 1715
    :cond_c7
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->fileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2502(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1719
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iget-object v5, v5, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->saveFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->fileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/twootablue/ota/OTAManager;->setOTAFile(Ljava/lang/String;)Z

    .line 1720
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/keephealth/android/twootablue/ota/OTAManager;->getOTAVersion()Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAVersion:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$6002(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1721
    iget-object v3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/keephealth/android/twootablue/ota/OTAManager;->prepare(I)V

    goto/16 :goto_46

    :cond_124
    return-void
.end method

.method public onDisconnected(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9

    .line 1731
    const-string p2, "START"

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1732
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$302(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Lcom/keephealth/android/twootablue/ota/OTAManager;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    .line 1734
    :cond_10
    const-string v0, "onDisconnected-\u8fde\u63a5\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isUpdateComplete:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1736
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25$1;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;)V

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3a

    .line 1744
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->finish()V

    .line 1745
    const-string v0, "gfgf433"

    const-string v3, "222"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :goto_3a
    :try_start_3a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 1749
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5002(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 1750
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v1, "BluetoothOTA"

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1751
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewDeviceName:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u8bf7\u5148\u626b\u63cf\u5e76\u8fde\u63a5\u8bbe\u5907"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1752
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1753
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1754
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1755
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1756
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1757
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1758
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBandWidthStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1760
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1761
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAStatus:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$6102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I

    .line 1762
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1764
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnBandWidthStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1765
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isBandWidthTestStarted:Z
    invoke-static {p2, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$6202(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 1768
    :cond_cd
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d7
    :goto_d7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_118

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1769
    iget-object v1, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_d7

    iget-object v1, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    const/16 v1, 0xd

    .line 1770
    iput v1, v0, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    .line 1771
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v0

    if-eqz v0, :cond_d7

    .line 1772
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$25;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V
    :try_end_104
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_104} :catch_105

    goto :goto_d7

    :catch_105
    move-exception p1

    .line 1777
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u70ac\u82af\u8fde\u63a5\u5931\u8d25\u5f02\u5e38:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_118
    return-void
.end method
