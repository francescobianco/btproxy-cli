.class Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;
.super Ljava/lang/Object;
.source "RewardIconRecordActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;)V
    .registers 6

    if-eqz p1, :cond_46

    .line 62
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getFamilyExchangeList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getFamilyExchangeList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 63
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getFamilyExchangeList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    new-instance v1, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

    const v2, 0x7f0c012c

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getFamilyExchangeList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;-><init>(ILjava/util/List;)V

    iput-object v1, v0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->taskRewardRecordAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordRecycler:Lcom/keephealth/android/views/NonScrollRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NonScrollRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordRecycler:Lcom/keephealth/android/views/NonScrollRecyclerView;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->taskRewardRecordAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardRecordItemAdapter;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/views/NonScrollRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_46
    if-eqz p1, :cond_f8

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordAll:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    const v3, 0x7f100638

    invoke-virtual {v2, v3}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getCoinObtainSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    const v3, 0x7f1006d8

    invoke-virtual {v2, v3}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getCoinConsumeSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getFamilyExchangeList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_cb

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;->getFamilyExchangeList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_cb

    .line 71
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordRecycler:Lcom/keephealth/android/views/NonScrollRecyclerView;

    invoke-virtual {p1, v1}, Lcom/keephealth/android/views/NonScrollRecyclerView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->recordIconNodataImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->tvRewardRecordIconNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->tvRewardRecordIconNodataTwo:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordAll:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f8

    .line 77
    :cond_cb
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordRecycler:Lcom/keephealth/android/views/NonScrollRecyclerView;

    invoke-virtual {p1, v2}, Lcom/keephealth/android/views/NonScrollRecyclerView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->recordIconNodataImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->tvRewardRecordIconNodata:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->tvRewardRecordIconNodataTwo:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity;->binding:Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityRewardRecordBinding;->rewardRecordAll:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f8
    :goto_f8
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 59
    check-cast p1, Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/activity/RewardIconRecordActivity$1;->onChanged(Lcom/keephealth/android/childmodule/bean/RewardSelectListBean;)V

    return-void
.end method
