.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendDialBin([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

.field final synthetic val$bytes:[B

.field final synthetic val$dataSize:I

.field final synthetic val$finalJ:[I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;[II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 972
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    iput p3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$dataSize:I

    iput-object p4, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 975
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->send_data_0:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3200(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)I

    move-result v0

    if-nez v0, :cond_79

    .line 976
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->send_data_0:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$3202(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)I

    .line 978
    :cond_e
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    const/4 v2, 0x0

    if-nez v0, :cond_71

    .line 979
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 980
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_41

    .line 981
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_6a

    .line 1136
    :cond_41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_6a

    .line 1138
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->sendData:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$2;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13$2;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 1180
    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$13;->val$finalJ:[I

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 1182
    :cond_71
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    if-eqz v0, :cond_e

    .line 1183
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 1184
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_79
    return-void
.end method
