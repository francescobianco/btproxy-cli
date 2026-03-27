.class Lcom/keephealth/android/sevice/AssistService$5;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "AssistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/sevice/AssistService;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistService;

.field final synthetic val$finalBody:Ljava/lang/String;

.field final synthetic val$finalContact:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 545
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService$5;->this$0:Lcom/keephealth/android/sevice/AssistService;

    iput-object p2, p0, Lcom/keephealth/android/sevice/AssistService$5;->val$finalContact:Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/sevice/AssistService$5;->val$finalBody:Ljava/lang/String;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 11

    const/16 v0, 0x14

    .line 548
    new-array v0, v0, [B

    .line 550
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 551
    aget-byte v1, v0, p1

    and-int/lit16 v2, v1, 0xff

    const-string v3, "characteristic..."

    const-string v4, "FF4534"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v7, 0x8a

    if-ne v2, v7, :cond_56

    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    if-nez v2, :cond_56

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "finalContact:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService$5;->val$finalContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF453ff4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$5;->val$finalContact:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessage2(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 554
    :goto_3c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_52

    .line 555
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3c

    .line 557
    :cond_52
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :cond_56
    and-int/lit16 v2, v1, 0xff

    const/4 v8, 0x2

    if-ne v2, v7, :cond_81

    .line 558
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    if-ne v2, v5, :cond_81

    .line 559
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$5;->val$finalBody:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/keephealth/android/util/ble/CmdHelper;->setMessage2(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 560
    :goto_67
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7d

    .line 561
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_67

    .line 563
    :cond_7d
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :cond_81
    and-int/lit16 p1, v1, 0xff

    if-ne p1, v7, :cond_98

    .line 564
    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v8, :cond_98

    .line 565
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    sget-object v0, Lcom/keephealth/android/util/ble/CmdHelper;->END_MESSAGE:[B

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([B)V

    .line 566
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    :cond_98
    and-int/lit16 p1, v1, 0xff

    if-ne p1, v7, :cond_ad

    .line 567
    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v6, :cond_ad

    .line 568
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$5;->this$0:Lcom/keephealth/android/sevice/AssistService;

    iget-object v0, v0, Lcom/keephealth/android/sevice/AssistService;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->destroy(Ljava/lang/Object;)V

    :cond_ad
    :goto_ad
    return-void
.end method
