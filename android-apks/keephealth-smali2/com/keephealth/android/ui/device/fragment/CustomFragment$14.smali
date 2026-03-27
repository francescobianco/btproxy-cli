.class Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "CustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/CustomFragment;->notifyDial()V
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

    .line 1751
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    const/16 v0, 0x14

    .line 1754
    new-array v1, v0, [B

    .line 1755
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 1756
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ggrr6"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xc4

    if-ne p1, v2, :cond_51

    .line 1759
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    const/4 v2, 0x1

    .line 1760
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    .line 1762
    rem-int/lit8 v3, p1, 0x14

    if-nez v3, :cond_4a

    .line 1763
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    div-int/2addr p1, v0

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataLengh:I
    invoke-static {v2, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2702(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)I

    goto :goto_51

    .line 1765
    :cond_4a
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    # setter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataLengh:I
    invoke-static {v3, p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2702(Lcom/keephealth/android/ui/device/fragment/CustomFragment;I)I

    .line 1769
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1770
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->dataLengh:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2700(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)I

    move-result v0

    if-ne p1, v0, :cond_6d

    .line 1771
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/CustomFragment$14;->this$0:Lcom/keephealth/android/ui/device/fragment/CustomFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/CustomFragment;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/CustomFragment;->access$2800(Lcom/keephealth/android/ui/device/fragment/CustomFragment;)V

    :cond_6d
    return-void
.end method
