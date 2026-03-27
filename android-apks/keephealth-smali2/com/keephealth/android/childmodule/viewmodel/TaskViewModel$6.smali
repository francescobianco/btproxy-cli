.class Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "TaskViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getMarkTaskTask(JILjava/util/Date;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/childmodule/bean/MarkBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

.field final synthetic val$status:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;II)V
    .registers 4

    .line 221
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput p2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->val$status:I

    iput p3, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->val$type:I

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 232
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->markBean:Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/MarkBean;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/MarkBean;

    iget v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->val$status:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->setStatus(I)V

    .line 225
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/bean/MarkBean;

    iget v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->val$type:I

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/bean/MarkBean;->setType(I)V

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$6;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->markBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/MarkBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6807\u8bb0\u4efb\u52a1"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
