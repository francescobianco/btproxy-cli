.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->onStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 770
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    iput p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 773
    iget v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->val$state:I

    const-wide/16 v1, 0x4e20

    const/16 v3, 0xc

    const/4 v4, 0x0

    if-eqz v0, :cond_3ac

    const/4 v5, 0x1

    if-eq v0, v5, :cond_354

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2f7

    const/4 v7, 0x3

    if-eq v0, v7, :cond_2af

    const/4 v6, 0x4

    if-eq v0, v6, :cond_1ff

    const/4 v6, 0x5

    if-eq v0, v6, :cond_1a

    goto/16 :goto_42e

    .line 866
    :cond_1a
    new-instance v0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;)V

    const-wide/16 v6, 0xc8

    .line 876
    invoke-virtual {v0, v4, v6, v7}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11$1;->sendEmptyMessageDelayed(IJ)Z

    .line 878
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v6, "TRANSFERRED"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v6, "BluetoothOTA"

    invoke-virtual {v0, v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "START"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 881
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 882
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 883
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 884
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "STRESS"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 886
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v6, "Stress One Bin"

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 889
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_109

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressIndex:I
    invoke-static {v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " times"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 891
    iget-object v6, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressTimesTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_dc

    .line 893
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v6, "OTA_FILE_SELECTED"

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getStressOTAFileName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "OTA_FILE_NAME"

    invoke-static {v0, v7, v6}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->savePreferences(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    :cond_dc
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 898
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I
    invoke-static {v0, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2902(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I

    .line 899
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 900
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v6, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 904
    :cond_109
    iget-object v7, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-wide/16 v10, 0x64

    const/4 v12, 0x4

    const-wide/16 v8, 0x0

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadUpdateRate(JJI)V
    invoke-static/range {v7 .. v12}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JJI)V

    .line 905
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "ota complete"

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 906
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 907
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 908
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 909
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "discoverService"

    const-string v2, "false"

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->connectingOrno:Z

    .line 911
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_42e

    .line 913
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v1

    if-eqz v1, :cond_42e

    .line 915
    iget-object v2, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_163

    .line 918
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->initManager()Landroid/bluetooth/BluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, v1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    :cond_163
    if-eqz v0, :cond_42e

    .line 921
    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_170

    return-void

    .line 931
    :cond_170
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42e

    .line 932
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Q32"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Q19 MAX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    .line 933
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QX01"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CH-W501"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    .line 934
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MK WATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SENSE 6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    .line 935
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AMAYA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1f6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CR075"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42e

    .line 936
    :cond_1f6
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-string v1, "bleReceiveDisConnect"

    invoke-static {v0, v1, v5}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_42e

    .line 822
    :cond_1ff
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "TRANSFERRING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 824
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStartTime:J
    invoke-static {v0, v1, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2102(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;J)J

    .line 826
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextviewSpendTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/keephealth/android/twootablue/ibluz/util/Utils;->formatSecondsDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 828
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressOneBin:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_257

    .line 829
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_269

    .line 832
    :cond_257
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 833
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 835
    :goto_269
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 836
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mFileNameTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressCurrent:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->getStressOTAFileName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42e

    .line 838
    :cond_287
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 839
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 840
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressTimesTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_42e

    .line 787
    :cond_2af
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z
    invoke-static {v0, v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$202(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 788
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PREPARED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 790
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 791
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 792
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 802
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mOTAManager:Lcom/keephealth/android/twootablue/ota/OTAManager;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ota/OTAManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/keephealth/android/twootablue/ota/OTAManager;->upgrade(I)V

    goto/16 :goto_42e

    .line 806
    :cond_2f7
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isConnectPairSuccess:Z
    invoke-static {v0, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$202(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;Z)Z

    .line 807
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "PREPARING"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 809
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 810
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 811
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 812
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 815
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 816
    sput-boolean v5, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 817
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 818
    const-string v0, "3423rew22"

    const-string v1, "\u84dd\u7259\u8bbe\u5907\u6b63\u5728\u51c6\u5907\u4e2d"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42e

    .line 775
    :cond_354
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "IDLE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 777
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 778
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    if-eqz v0, :cond_38f

    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_38f

    .line 779
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_398

    .line 781
    :cond_38f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 782
    :goto_398
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 783
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_42e

    .line 846
    :cond_3ac
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mTextViewStatus:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1400(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v5, "UNKNOWN"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnRemoteInfo:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1500(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 848
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStartStop:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1600(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 849
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnPrepare:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1700(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 850
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStress:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1800(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 851
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBtnStressOneBin:Landroid/widget/Button;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 852
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->isStressTest:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2300(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Z

    move-result v0

    if-eqz v0, :cond_40f

    .line 853
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # setter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mScanCount:I
    invoke-static {v0, v4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2902(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;I)I

    .line 854
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 855
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v5, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mStressReconnectCallback:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 858
    :cond_40f
    iget-object v6, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    const-wide/16 v9, 0x64

    const/4 v11, 0x3

    const-wide/16 v7, 0x0

    # invokes: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->downLoadUpdateRate(JJI)V
    invoke-static/range {v6 .. v11}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$3200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;JJI)V

    .line 859
    iget-object v0, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$11;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mInfoHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$2000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "ota failure"

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 860
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    .line 861
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isCloseBle:Z

    .line 862
    sput-boolean v4, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    :cond_42e
    :goto_42e
    return-void
.end method
