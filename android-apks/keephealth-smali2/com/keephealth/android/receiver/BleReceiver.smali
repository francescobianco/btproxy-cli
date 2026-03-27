.class public Lcom/keephealth/android/receiver/BleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BleReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x0

    .line 34
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 37
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 38
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_128

    .line 40
    const-string v0, "current"

    const/4 v1, 0x1

    const-string v2, "\u5f53\u524d\u9875\u9762:"

    packed-switch p2, :pswitch_data_13c

    goto/16 :goto_13b

    .line 78
    :pswitch_26
    :try_start_26
    const-string p2, "aaa"

    const-string v0, "STATE_TURNING_OFF \u624b\u673a\u84dd\u7259\u6b63\u5728\u5173\u95ed"

    invoke-static {p2, v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13b

    .line 82
    :pswitch_2f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "  \u624b\u673a\u84dd\u7259\u5f00\u542f"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 83
    sput v1, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    .line 84
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isFirstDescrition:Z

    .line 85
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 86
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 87
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 88
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 89
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "bleReceiveDisConnect"

    invoke-static {p2, v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 91
    sput p1, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 92
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getConnected()Z

    .line 97
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRemote:Z

    if-eqz p2, :cond_13b

    .line 98
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    goto/16 :goto_13b

    .line 103
    :pswitch_79
    const-string p2, "FDD33f22"

    const-string v0, "STATE_TURNING_ON \u624b\u673a\u84dd\u7259\u6b63\u5728\u5f00\u542f"

    invoke-static {p2, v0}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13b

    .line 42
    :pswitch_82
    sput v1, Lcom/keephealth/android/app/AppApplication;->isBluetoothOpen:I

    .line 43
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->cancelAllTag()V

    .line 44
    sput v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->homeDestroy:I

    .line 45
    sput p1, Lcom/keephealth/android/app/AppApplication;->inScanDevice:I

    .line 46
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/keephealth/android/util/SharePreferenceUtils;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 47
    sput p1, Lcom/keephealth/android/app/AppApplication;->bleReceiveDisConnect:I

    .line 49
    const-string p2, "GGGh3d2"

    const-string v0, "isBluetoothOpen_a"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isFirstDescrition:Z

    .line 52
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  \u624b\u673a\u84dd\u7259\u5173\u95ed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "request_all"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 54
    sput p1, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 56
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isOtaUpdate:Z

    const/16 v0, 0x12e

    if-eqz p2, :cond_dc

    .line 57
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    const/16 p2, 0xbcd

    .line 58
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 60
    :cond_dc
    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->comeDial:Z

    if-eqz p2, :cond_e3

    .line 61
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 63
    :cond_e3
    sput v1, Lcom/keephealth/android/app/AppApplication;->firstComming:I

    .line 64
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    .line 65
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    .line 66
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    .line 67
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverServiceClear()V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_ee} :catch_128

    .line 69
    :try_start_ee
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->disconnect(I)V
    :try_end_f6
    .catch Ljava/lang/NullPointerException; {:try_start_ee .. :try_end_f6} :catch_f6
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f6} :catch_128

    :catch_f6
    const/16 p2, 0x3e7

    .line 73
    :try_start_f8
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 74
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->clearQueue()V

    .line 75
    const-string p2, "FDD33f2F2"

    const-string v0, "\u624b\u673a\u84dd\u7259\u5173\u95ed..."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13b

    .line 106
    :cond_10a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_122

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13b

    :cond_122
    const/16 p2, 0x405

    .line 107
    invoke-static {p2}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_127} :catch_128

    goto :goto_13b

    :catch_128
    move-exception p2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BleReceiver-e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_13b
    :goto_13b
    return-void

    :pswitch_data_13c
    .packed-switch 0xa
        :pswitch_82
        :pswitch_79
        :pswitch_2f
        :pswitch_26
    .end packed-switch
.end method
