.class Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$3;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "VibrateViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateStrong(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;)V
    .registers 2

    .line 224
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 239
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "false"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 227
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 228
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x82

    if-ne v1, v2, :cond_44

    const/4 v1, 0x3

    .line 229
    aget-byte v1, p1, v1

    if-nez v1, :cond_44

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_44

    .line 230
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel$3;->this$0:Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/VibrateViewModel;->setVibrateList:Landroidx/lifecycle/MutableLiveData;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bbe\u7f6e\u8bbe\u5907\u72b6\u6001:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    :cond_44
    return-void
.end method
