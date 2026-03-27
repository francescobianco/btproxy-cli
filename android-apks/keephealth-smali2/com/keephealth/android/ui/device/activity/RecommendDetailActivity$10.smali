.class Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;
.super Ljava/lang/Object;
.source "RecommendDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendDialBin([BI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

.field final synthetic val$dataSize:I

.field final synthetic val$finalJ:[I

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;[III)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 724
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    iput p3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$dataSize:I

    iput p4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 727
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->send_data_0:I
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1500(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;)I

    move-result v0

    if-nez v0, :cond_77

    .line 728
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    const/4 v1, 0x1

    # setter for: Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->send_data_0:I
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->access$1502(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;I)I

    .line 730
    :cond_e
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    const/4 v2, 0x0

    if-nez v0, :cond_6f

    .line 731
    sput-boolean v1, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 733
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_3f

    .line 734
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$1;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    goto :goto_68

    .line 897
    :cond_3f
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    aget v0, v0, v2

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_68

    .line 899
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->this$0:Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;

    iget-object v3, v3, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity;->sendData:Ljava/util/List;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    new-instance v4, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;

    invoke-direct {v4, p0}, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10$2;-><init>(Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;)V

    invoke-virtual {v0, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    .line 940
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/RecommendDetailActivity$10;->val$finalJ:[I

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 942
    :cond_6f
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    if-eqz v0, :cond_e

    .line 943
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isSendBiaopan:Z

    .line 944
    sput-boolean v2, Lcom/keephealth/android/app/AppApplication;->isFinishBao:Z

    :cond_77
    return-void
.end method
