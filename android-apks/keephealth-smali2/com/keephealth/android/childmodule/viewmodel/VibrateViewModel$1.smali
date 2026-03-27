.class Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "VibrateViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->getVibrateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 7

    .line 55
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "characteristic.getValue():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalenderDataStruc3t"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 59
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xf0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v1, :cond_65

    const/4 v0, 0x3

    aget-byte v1, p1, v0

    if-nez v1, :cond_65

    aget-byte v1, p1, v3

    const/4 v4, 0x5

    if-ne v1, v4, :cond_65

    .line 60
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    invoke-static {p1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    # setter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->allLength:I
    invoke-static {v1, v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$002(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;I)I

    .line 61
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->receiveList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$100(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->receiveList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$100(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    array-length p1, p1

    # setter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$202(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;I)I

    goto :goto_a3

    .line 65
    :cond_65
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->receiveList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$100(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    array-length v1, p1

    # += operator for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I
    invoke-static {v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$212(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;I)I

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->receiveList:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$100(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->mergeByteArrays(Ljava/util/List;)[B

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->allLength:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$000(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)I

    move-result v1

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->dataLength:I
    invoke-static {v3}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->access$200(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)I

    move-result v3

    if-ne v1, v3, :cond_a3

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v3, p1

    sub-int/2addr v3, v2

    aget-byte p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    if-ne v1, p1, :cond_a3

    .line 70
    new-instance p1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;

    invoke-direct {p1, p0, v0}, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1$1;-><init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$1;[B)V

    invoke-static {p1}, Lcom/keephealth/android/util/ThreadUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :cond_a3
    :goto_a3
    return-void
.end method
