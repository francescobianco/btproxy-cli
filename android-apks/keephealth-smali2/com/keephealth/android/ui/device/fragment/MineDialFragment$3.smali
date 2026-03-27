.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MineDialFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->notifyDial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V
    .registers 2

    .line 467
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    const/4 p1, 0x0

    .line 493
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8

    const/16 v0, 0x14

    .line 471
    new-array v1, v0, [B

    .line 472
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v1}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 473
    aget-byte v2, v1, p1

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xc4

    if-ne v2, v3, :cond_44

    .line 475
    iget-object v2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v2, v2, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 476
    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v2

    const/4 v4, 0x4

    add-int/2addr v2, v4

    const/4 v5, 0x6

    .line 477
    invoke-static {v1, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v4

    sput v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    .line 478
    rem-int/lit8 v4, v2, 0x14

    if-nez v4, :cond_3d

    .line 479
    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    div-int/2addr v2, v0

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataLengh:I
    invoke-static {v3, v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1102(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I

    goto :goto_44

    .line 481
    :cond_3d
    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    div-int/2addr v2, v0

    add-int/2addr v2, v3

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataLengh:I
    invoke-static {v4, v2}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1102(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I

    .line 484
    :cond_44
    :goto_44
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dataLengh:I
    invoke-static {v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1100(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I

    move-result v1

    if-ne v0, v1, :cond_60

    .line 486
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$3;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # invokes: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->handleData()V
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)V

    .line 488
    :cond_60
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    return-void
.end method
