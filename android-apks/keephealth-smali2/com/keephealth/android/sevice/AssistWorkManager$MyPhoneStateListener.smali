.class Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AssistWorkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistWorkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistWorkManager;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V
    .registers 2

    .line 627
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/sevice/AssistWorkManager;Lcom/keephealth/android/sevice/AssistWorkManager$1;)V
    .registers 3

    .line 627
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;-><init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 4

    .line 630
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 640
    :cond_f
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 641
    const-string p1, "onCallForwardingIndicatorChanged"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 9

    .line 646
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TelephonyManager   state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ---incomingNumber"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1002(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 649
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$902(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   contactName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   phoneNumber:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FF45fd4"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->hasFirstReigsterPhone:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1300(Lcom/keephealth/android/sevice/AssistWorkManager;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_7a

    .line 653
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->hasFirstReigsterPhone:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1302(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    return-void

    .line 656
    :cond_7a
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x9

    invoke-static {v0, v4}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_89

    return-void

    .line 660
    :cond_89
    iget-boolean v4, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-nez v4, :cond_8e

    return-void

    .line 663
    :cond_8e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "protocolUtils.getNotice().getCallonOff():"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 664
    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_215

    iget-object v4, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b8

    goto/16 :goto_215

    .line 666
    :cond_b8
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onOff.isCall2:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trtr54"

    invoke-static {v5, v4}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    if-nez v0, :cond_d3

    return-void

    .line 670
    :cond_d3
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1200(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_e6

    .line 671
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_e6

    return-void

    .line 674
    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 675
    const-string v1, "FF33f2"

    const/4 v2, 0x0

    if-eqz p1, :cond_1c3

    if-eq p1, v3, :cond_158

    const/4 p2, 0x2

    if-eq p1, p2, :cond_103

    goto/16 :goto_215

    .line 708
    :cond_103
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_13e

    .line 709
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->answerRingingCallToDevice()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 710
    const-string p1, "\u6458\u673a"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 713
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1500(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_139

    .line 714
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1500(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    iget-object p2, p2, Lcom/keephealth/android/sevice/AssistWorkManager;->callRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 715
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1500(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 717
    :cond_139
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$802(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 720
    :cond_13e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u63a5\u542c:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    iget p2, p2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_215

    .line 693
    :cond_158
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "aa:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1100(Lcom/keephealth/android/sevice/AssistWorkManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF45fd67"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # operator++ for: Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1108(Lcom/keephealth/android/sevice/AssistWorkManager;)I

    .line 695
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1100(Lcom/keephealth/android/sevice/AssistWorkManager;)I

    move-result p1

    if-ne p1, v3, :cond_215

    .line 696
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_215

    .line 697
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isAssReceivePhone:Z

    .line 698
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isPhoneReceivePhone:Z

    if-nez p1, :cond_215

    .line 699
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isCommingPhone:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1402(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 700
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$802(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 701
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/keephealth/android/sevice/AssistWorkManager;->sendData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, p2, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1600(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6765\u7535_AssistService:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_215

    .line 677
    :cond_1c3
    const-string p1, "\u7a7a\u95f2"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 678
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_203

    .line 679
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endRingingCallToDevice()[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 681
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isCommingPhone:Z
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1400(Lcom/keephealth/android/sevice/AssistWorkManager;)Z

    move-result p1

    if-eqz p1, :cond_1e8

    .line 683
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$802(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 685
    :cond_1e8
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$802(Lcom/keephealth/android/sevice/AssistWorkManager;Z)Z

    .line 686
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1500(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    iget-object v2, v2, Lcom/keephealth/android/sevice/AssistWorkManager;->callRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 687
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1500(Lcom/keephealth/android/sevice/AssistWorkManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 689
    :cond_203
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6302\u65ad:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_215
    :goto_215
    return-void
.end method
