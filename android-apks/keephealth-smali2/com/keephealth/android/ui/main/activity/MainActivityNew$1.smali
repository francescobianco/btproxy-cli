.class Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;
.source "MainActivityNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/MainActivityNew;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeConnectListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceConnectFail(Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;)V
    .registers 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/exception/ConnBleException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8fde\u63a5\u5f02\u5e38:"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 352
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 353
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2e

    .line 354
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # operator++ for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$008(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I

    goto :goto_40

    .line 355
    :cond_2e
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$000(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)I

    move-result v0

    if-ne v0, v1, :cond_40

    const/16 v0, 0x3f6

    .line 356
    invoke-static {v0}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # setter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I
    invoke-static {v0, p1}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$002(Lcom/keephealth/android/ui/main/activity/MainActivityNew;I)I

    :cond_40
    :goto_40
    return-void
.end method

.method public onDeviceConnected()V
    .registers 5

    const/4 v0, 0x0

    .line 329
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fde\u63a5\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/keephealth/android/util/TimeUtil;->timeStamp2Date(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gf32"

    invoke-static {v2, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # setter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->connUmber:I
    invoke-static {v1, v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$002(Lcom/keephealth/android/ui/main/activity/MainActivityNew;I)I

    return-void
.end method

.method public onDeviceConnecting()V
    .registers 1

    return-void
.end method

.method public onDeviceDisconnected()V
    .registers 4

    const/4 v0, 0x0

    .line 336
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/keephealth/android/app/AppApplication;->isConnecting:Ljava/lang/Boolean;

    .line 337
    const-string v1, "asasa5fsds"

    const-string v2, "\u65ad\u5f00\u8fde\u63a5"

    invoke-static {v1, v2}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sput v0, Lcom/keephealth/android/app/AppApplication;->discoverService:I

    .line 339
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/MainActivityNew$1;->this$0:Lcom/keephealth/android/ui/main/activity/MainActivityNew;

    # getter for: Lcom/keephealth/android/ui/main/activity/MainActivityNew;->mainFragment:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
    invoke-static {v0}, Lcom/keephealth/android/ui/main/activity/MainActivityNew;->access$100(Lcom/keephealth/android/ui/main/activity/MainActivityNew;)Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->unConnect(I)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;)V
    .registers 3

    .line 344
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    .line 346
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->setReconnect(Z)V

    return-void
.end method
