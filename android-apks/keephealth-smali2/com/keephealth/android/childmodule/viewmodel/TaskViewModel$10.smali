.class Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "TaskViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendAllTask()V
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

    .line 691
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 706
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTarget:Z

    .line 707
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->syncTask:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ThreadUtil;->setMainLooper(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5

    .line 694
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-boolean v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTarget:Z

    if-eqz v0, :cond_45

    .line 695
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 696
    const-string v0, "\u6536\u5230\u4efb\u52a1\u56de\u590d\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 697
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_45

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_45

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    if-ne v1, p1, :cond_45

    .line 698
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isSendTarget:Z

    .line 699
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$10;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->syncTask:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ThreadUtil;->setMainLooper(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    :cond_45
    return-void
.end method
