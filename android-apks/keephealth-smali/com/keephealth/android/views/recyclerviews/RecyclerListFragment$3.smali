.class Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "RecyclerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->sendBleContacts(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$3;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 268
    const-string p1, "FF3212"

    const-string v0, "ble_failed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    .line 263
    const-string p1, "FF3212"

    const-string v0, "ble_success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
