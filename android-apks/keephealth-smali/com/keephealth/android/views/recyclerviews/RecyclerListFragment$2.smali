.class Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "RecyclerListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/greendao/bean/UserInfoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u4e2a\u4eba\u4fe1\u606fonFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF321h2"

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
            "Lcom/keephealth/android/greendao/bean/UserInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u4e2a\u4eba\u4fe1\u606f_2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF321hr42"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_74

    .line 137
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_74

    .line 138
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 139
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 140
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 142
    :cond_3e
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/greendao/bean/UserInfoBean;

    invoke-virtual {v0}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getContacts()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/greendao/bean/UserInfoBean;

    invoke-virtual {p1}, Lcom/keephealth/android/greendao/bean/UserInfoBean;->getContacts()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;
    invoke-static {p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$100(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 145
    iget-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->adapter:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;
    invoke-static {p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$100(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$2;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    # getter for: Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->setData(Ljava/util/List;)V

    :cond_74
    return-void
.end method
