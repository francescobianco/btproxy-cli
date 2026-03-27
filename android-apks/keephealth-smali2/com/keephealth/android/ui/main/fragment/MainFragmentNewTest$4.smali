.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$4;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MainFragmentNewTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->getStepData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;)V
    .registers 2

    .line 918
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 2

    .line 931
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requestFaild()V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3

    const/16 v0, 0x14

    .line 921
    new-array v0, v0, [B

    .line 922
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copy([B[B)V

    const/4 p1, 0x0

    .line 923
    aget-byte p1, v0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0x83

    if-ne p1, v0, :cond_19

    .line 925
    iget-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest$4;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/fragment/MainFragmentNewTest;->requestSuccess()V

    :cond_19
    return-void
.end method
