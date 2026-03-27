.class Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;
.super Ljava/lang/Object;
.source "FirmwareUpdateOtaQActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)V
    .registers 2

    .line 1469
    iput-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1472
    iget-object p1, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1473
    iget-object p2, p1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceConnected:Landroid/bluetooth/BluetoothDevice;
    invoke-static {p3}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5000(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    if-ne p2, p3, :cond_22

    .line 1474
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p2

    iget-object p1, p1, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p2, p1}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_6e

    .line 1476
    :cond_22
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mDeviceList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$4900(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2c
    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/DeviceEntry;

    .line 1477
    iget p4, p3, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    const/16 p5, 0xb

    if-ne p4, p5, :cond_2c

    .line 1478
    iget-object p4, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mBluzConnector:Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;
    invoke-static {p4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$1200(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;

    move-result-object p4

    iget-object p5, p3, Lcom/keephealth/android/model/bean/DeviceEntry;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p4, p5}, Lcom/keephealth/android/twootablue/ibluz/factory/IBluzDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    const/16 p4, 0xd

    .line 1479
    iput p4, p3, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    goto :goto_2c

    :cond_4e
    const/16 p2, 0xc

    .line 1483
    iput p2, p1, Lcom/keephealth/android/model/bean/DeviceEntry;->state:I

    .line 1484
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object p2

    if-eqz p2, :cond_63

    .line 1485
    iget-object p2, p0, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;->this$0:Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;

    # getter for: Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->mAdapter:Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;
    invoke-static {p2}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;->access$5100(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity;)Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 1488
    :cond_63
    new-instance p2, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;

    invoke-direct {p2, p0, p1}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;-><init>(Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23;Lcom/keephealth/android/model/bean/DeviceEntry;)V

    const/4 p1, 0x0

    const-wide/16 p3, 0x32

    .line 1495
    invoke-virtual {p2, p1, p3, p4}, Lcom/keephealth/android/ui/device/FirmwareUpdateOtaQActivity$23$1;->sendEmptyMessageDelayed(IJ)Z

    :goto_6e
    return-void
.end method
