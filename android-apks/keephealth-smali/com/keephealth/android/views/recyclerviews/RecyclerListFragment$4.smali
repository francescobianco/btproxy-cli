.class Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "RecyclerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->postData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;Ljava/util/List;)V
    .registers 3

    .line 306
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    iput-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;->val$list:Ljava/util/List;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF321gh2"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FF321gh2"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$4;->val$list:Ljava/util/List;

    # invokes: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->sendBleContacts(Ljava/util/List;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$200(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;Ljava/util/List;)V

    return-void
.end method
