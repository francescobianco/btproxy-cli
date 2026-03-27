.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->notifyDial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V
    .registers 2

    .line 1347
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

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

    .line 1350
    new-array v1, v0, [B

    .line 1351
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 1352
    aget-byte p1, v1, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0xc4

    if-ne p1, v2, :cond_39

    .line 1354
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x3

    const/4 v2, 0x1

    .line 1355
    invoke-static {v1, v2, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    .line 1357
    rem-int/lit8 v3, p1, 0x14

    if-nez v3, :cond_32

    .line 1358
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    div-int/2addr p1, v0

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataLengh:I
    invoke-static {v2, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2602(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I

    goto :goto_39

    .line 1360
    :cond_32
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    div-int/2addr p1, v0

    add-int/2addr p1, v2

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataLengh:I
    invoke-static {v3, p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2602(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I

    .line 1364
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1365
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->dataLengh:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2600(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I

    move-result v0

    if-ne p1, v0, :cond_55

    .line 1366
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$12;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->handleData()V
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2700(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)V

    :cond_55
    return-void
.end method
