.class Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2;
.super Landroid/os/Handler;
.source "DetailStreeCoseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Landroid/os/Looper;)V
    .registers 3

    .line 285
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 288
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 289
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    goto :goto_30

    .line 291
    :cond_8
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 292
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;

    const v0, 0x7f100258

    invoke-virtual {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->showToast(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;->access$000(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity;Ljava/lang/String;)V

    return-void

    .line 295
    :cond_1b
    invoke-static {}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->getDefault()Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->getHeartRate(I)[B

    move-result-object v0

    sget-object v1, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->SERVICE:Ljava/util/UUID;

    sget-object v2, Lcom/keephealth/android/util/ble/bluetooth/BluetoothUUID;->WRITE:Ljava/util/UUID;

    new-instance v3, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2$1;

    invoke-direct {v3, p0}, Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2$1;-><init>(Lcom/keephealth/android/ui/main/activity/DetailStreeCoseActivity$2;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/BluetoothLe;->writeDataToCharacteristic([BLjava/util/UUID;Ljava/util/UUID;Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;)V

    :goto_30
    return-void
.end method
