.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;
.super Landroid/content/BroadcastReceiver;
.source "MainFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 549
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 553
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 554
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v2, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_7a

    .line 594
    :cond_20
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 595
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    goto :goto_7a

    .line 565
    :cond_2a
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 566
    iget-object p2, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    if-eqz p2, :cond_7a

    if-eqz v1, :cond_7a

    .line 567
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7a

    .line 568
    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 569
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p1

    if-eqz p1, :cond_65

    .line 570
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # getter for: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$600(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 574
    :cond_65
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_7a

    .line 576
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;

    invoke-direct {p2, p0, v1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4$1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$4;Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 581
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_7a
    :goto_7a
    return-void
.end method
