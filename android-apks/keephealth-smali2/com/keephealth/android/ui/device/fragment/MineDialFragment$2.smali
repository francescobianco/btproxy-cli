.class Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;
.super Ljava/lang/Object;
.source "MineDialFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->onCustomClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 428
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    iput p2, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 431
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->showLoading()V

    .line 432
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    const/4 v0, 0x1

    # setter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->isSending:Z
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$602(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;Z)Z

    .line 434
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->bluetoothLe:Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$1000(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->this$0:Lcom/keephealth/android/ui/device/fragment/MineDialFragment;

    # getter for: Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->dialDetailBS:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment;->access$700(Lcom/keephealth/android/ui/device/fragment/MineDialFragment;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->deleteDial(I)[B

    move-result-object v0

    new-instance v1, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2$1;-><init>(Lcom/keephealth/android/ui/device/fragment/MineDialFragment$2;)V

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    return-void
.end method
