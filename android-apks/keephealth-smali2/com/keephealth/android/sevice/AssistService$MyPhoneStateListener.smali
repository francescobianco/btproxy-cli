.class Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "AssistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistService;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/sevice/AssistService;)V
    .registers 2

    .line 666
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/sevice/AssistService;Lcom/keephealth/android/sevice/AssistService$1;)V
    .registers 3

    .line 666
    invoke-direct {p0, p1}, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;-><init>(Lcom/keephealth/android/sevice/AssistService;)V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .registers 4

    .line 669
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$700(Lcom/keephealth/android/sevice/AssistService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 679
    :cond_f
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    .line 680
    const-string p1, "onCallForwardingIndicatorChanged"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 8

    .line 685
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 686
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

    .line 687
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/keephealth/android/sevice/AssistService;->access$1102(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;)Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistService;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistService;->access$1002(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   contactName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistService;->access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "   phoneNumber:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistService;->access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FF45fd4"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->hasFirstReigsterPhone:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1300(Lcom/keephealth/android/sevice/AssistService;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_74

    .line 692
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->hasFirstReigsterPhone:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/sevice/AssistService;->access$1302(Lcom/keephealth/android/sevice/AssistService;Z)Z

    return-void

    .line 695
    :cond_74
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$700(Lcom/keephealth/android/sevice/AssistService;)Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x9

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object v0

    if-nez v0, :cond_83

    return-void

    .line 699
    :cond_83
    iget-boolean v3, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-nez v3, :cond_88

    return-void

    .line 702
    :cond_88
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "protocolUtils.getNotice().getCallonOff():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 703
    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/sevice/AssistService;->access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_209

    iget-object v3, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/sevice/AssistService;->access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b2

    goto/16 :goto_209

    .line 705
    :cond_b2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onOff.isCall1:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "trtr54"

    invoke-static {v4, v3}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-boolean v0, v0, Lcom/keephealth/android/model/bean/DeviceConfig;->isCall:Z

    if-nez v0, :cond_cd

    return-void

    .line 709
    :cond_cd
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$700(Lcom/keephealth/android/sevice/AssistService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 710
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_e0

    return-void

    .line 713
    :cond_e0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gge3d"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1b7

    if-eq p1, v2, :cond_14c

    const/4 p2, 0x2

    if-eq p1, p2, :cond_fd

    goto/16 :goto_209

    .line 747
    :cond_fd
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_130

    .line 748
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->answerRingingCallToDevice()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 749
    const-string p1, "\u6458\u673a"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 752
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1500(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    iget-object p2, p2, Lcom/keephealth/android/sevice/AssistService;->callRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 753
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1500(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 754
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->isRemind:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/sevice/AssistService;->access$902(Lcom/keephealth/android/sevice/AssistService;Z)Z

    .line 757
    :cond_130
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

    const-string p2, "FF33f2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_209

    .line 732
    :cond_14c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "aa:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->aa:I
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1200(Lcom/keephealth/android/sevice/AssistService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # operator++ for: Lcom/keephealth/android/sevice/AssistService;->aa:I
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1208(Lcom/keephealth/android/sevice/AssistService;)I

    .line 734
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->aa:I
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1200(Lcom/keephealth/android/sevice/AssistService;)I

    move-result p1

    if-ne p1, v2, :cond_209

    .line 735
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_209

    .line 736
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isAssReceivePhone:Z

    .line 737
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isPhoneReceivePhone:Z

    if-nez p1, :cond_209

    .line 738
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->isCommingPhone:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/sevice/AssistService;->access$1402(Lcom/keephealth/android/sevice/AssistService;Z)Z

    .line 739
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->isRemind:Z
    invoke-static {p1, v2}, Lcom/keephealth/android/sevice/AssistService;->access$902(Lcom/keephealth/android/sevice/AssistService;Z)Z

    .line 740
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/sevice/AssistService;->sendData(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, p2, v0}, Lcom/keephealth/android/sevice/AssistService;->access$1600(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6765\u7535_AssistService:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "--"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {p2}, Lcom/keephealth/android/sevice/AssistService;->access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF45fd67"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_209

    .line 716
    :cond_1b7
    const-string p1, "\u7a7a\u95f2"

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget p1, p1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->telephony:I

    if-nez p1, :cond_1f7

    .line 718
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->endRingingCallToDevice()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 720
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->isCommingPhone:Z
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1400(Lcom/keephealth/android/sevice/AssistService;)Z

    move-result p1

    if-eqz p1, :cond_1dc

    .line 722
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->isRemind:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/sevice/AssistService;->access$902(Lcom/keephealth/android/sevice/AssistService;Z)Z

    .line 724
    :cond_1dc
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->isRemind:Z
    invoke-static {p1, v3}, Lcom/keephealth/android/sevice/AssistService;->access$902(Lcom/keephealth/android/sevice/AssistService;Z)Z

    .line 725
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1500(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    iget-object v2, v2, Lcom/keephealth/android/sevice/AssistService;->callRun:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 726
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$MyPhoneStateListener;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->callHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$1500(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 728
    :cond_1f7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6302\u65ad:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_209
    :goto_209
    return-void
.end method
