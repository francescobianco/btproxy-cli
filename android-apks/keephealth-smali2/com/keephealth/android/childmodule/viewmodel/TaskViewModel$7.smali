.class Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "TaskViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getBatchMarkTask(Ljava/util/List;)V
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


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 276
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->markBean:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I
    invoke-static {p1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->access$000(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I

    move-result p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_30

    .line 278
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->access$000(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getBatchMarkTask(Ljava/util/List;)V

    .line 279
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    # operator++ for: Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I
    invoke-static {p1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->access$008(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I

    .line 281
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onFailure: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u6279\u91cf\u6807\u8bb0\u4efb\u52a1"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

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
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/childmodule/bean/MarkBean;",
            ">;)V"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->markBean:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/childmodule/bean/MarkBean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->access$000(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I

    move-result v0

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 268
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTaskList:Ljava/util/List;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    # getter for: Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I
    invoke-static {v2}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->access$000(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getBatchMarkTask(Ljava/util/List;)V

    .line 269
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$7;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    # operator++ for: Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->indexSuccess:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->access$008(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)I

    .line 271
    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u6279\u91cf\u6807\u8bb0\u4efb\u52a1"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
