.class Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;
.super Ljava/lang/Object;
.source "RecommendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendDialBin([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

.field final synthetic val$bytes:[B

.field final synthetic val$finalJ:[I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;[I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 912
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    iput-object p3, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 915
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->send_data_0:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2000(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)I

    move-result v0

    if-nez v0, :cond_71

    .line 916
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->send_data_0:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2002(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;I)I

    .line 918
    :cond_e
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    const/4 v2, 0x0

    if-nez v0, :cond_69

    .line 919
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 920
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    aget v0, v0, v2

    sget-object v3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_3d

    .line 921
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->this$0:Lcom/keephealth/android/ui/device/fragment/RecommendFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->access$2500(Lcom/keephealth/android/ui/device/fragment/RecommendFragment;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$1;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_62

    .line 1073
    :cond_3d
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    aget v0, v0, v2

    sget-object v3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_62

    .line 1074
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    sget-object v3, Lcom/keephealth/android/ui/device/fragment/RecommendFragment;->sendData:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11$2;-><init>(Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 1114
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/RecommendFragment$11;->val$finalJ:[I

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 1117
    :cond_69
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    if-eqz v0, :cond_e

    .line 1118
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 1119
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_71
    return-void
.end method
