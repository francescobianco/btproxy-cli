.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->endRefreshing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;)V
    .registers 2

    .line 456
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 480
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 481
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    # invokes: Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->initBlueTooth()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->access$100(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V

    :cond_d
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4

    const/16 v0, 0x14

    .line 459
    new-array v0, v0, [B

    .line 460
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 461
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa7

    if-ne p1, v1, :cond_24

    .line 463
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;->this$1:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v1, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1$1;-><init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$2$1;[B)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_24
    return-void
.end method
