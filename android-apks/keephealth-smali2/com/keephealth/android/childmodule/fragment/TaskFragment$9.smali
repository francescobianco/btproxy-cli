.class Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/TaskFragment;->createObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

.field final synthetic val$markBean:Lcom/keephealth/android/childmodule/bean/MarkBean;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/TaskFragment;Lcom/keephealth/android/childmodule/bean/MarkBean;)V
    .registers 3

    .line 371
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->val$markBean:Lcom/keephealth/android/childmodule/bean/MarkBean;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 387
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isSendGolds:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 374
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-boolean v0, v0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isSendGolds:Z

    if-eqz v0, :cond_5e

    .line 375
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$700(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u53d1\u9001\u91d1\u5e01\u6570\u636e\u56de\u590d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->isSendGolds:Z

    .line 377
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    if-eqz p1, :cond_5e

    .line 378
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->val$markBean:Lcom/keephealth/android/childmodule/bean/MarkBean;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/MarkBean;->getStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setStatus(I)V

    .line 379
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    invoke-virtual {v0}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->getTaskId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/keephealth/android/childmodule/bean/FamilyTaskList;->setId(J)V

    .line 380
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/TaskFragment;->viewModel:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->access$600(Lcom/keephealth/android/childmodule/fragment/TaskFragment;)Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/TaskFragment$9;->this$0:Lcom/keephealth/android/childmodule/fragment/TaskFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/TaskFragment;->customItemBean:Lcom/keephealth/android/childmodule/bean/FamilyTaskList;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->sendTask(Ljava/lang/String;Lcom/keephealth/android/childmodule/bean/FamilyTaskList;II)V

    :cond_5e
    return-void
.end method
