.class Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "TaskViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->deleteAllTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V
    .registers 2

    .line 641
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 656
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDelete:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 644
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-boolean v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDelete:Z

    if-eqz v0, :cond_62

    .line 645
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object v0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/keephealth/android/util/ble/CmdHelper;->deleteAllTask()[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u6536\u5230\u5220\u9664\u6240\u6709\u4efb\u52a1\u56de\u590d\u6570\u636e:"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 647
    aget-byte v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_62

    const/4 v1, 0x1

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    array-length v3, v0

    sub-int/2addr v3, v1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    if-ne v2, v0, :cond_62

    .line 648
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-boolean p1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isDelete:Z

    .line 649
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$9;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTaskDevice()V

    :cond_62
    return-void
.end method
