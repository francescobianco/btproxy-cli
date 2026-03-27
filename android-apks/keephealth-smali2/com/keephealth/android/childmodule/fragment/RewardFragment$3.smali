.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 166
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 166
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->onChanged(Ljava/util/List;)V

    return-void
.end method

.method public onChanged(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/childmodule/bean/RewardSelectBean;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    new-instance v1, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    const v2, 0x7f0c013b

    invoke-direct {v1, v2, p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;-><init>(ILjava/util/List;)V

    iput-object v1, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    .line 171
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v2}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 172
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->setOnItemClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    new-instance v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$2;-><init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->seDuihuanClickListener(Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnDuihuanClickListener;)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_88

    .line 207
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 208
    iget-object v2, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_75

    .line 213
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_9a

    .line 248
    :cond_75
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_9a

    .line 252
    :cond_88
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->tvNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->binding:Lcom/keephealth/android/databinding/FragmentRewardViewBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/FragmentRewardViewBinding;->rewardRecyclew:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_9a
    return-void
.end method
