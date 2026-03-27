.class Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$1;
.super Ljava/lang/Object;
.source "RecyclerListFragment.java"

# interfaces
.implements Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 120
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$1;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleContactItem(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)V"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mList:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fdr3e"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment$1;->this$0:Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListFragment;->postData(Ljava/util/List;)V

    return-void
.end method
