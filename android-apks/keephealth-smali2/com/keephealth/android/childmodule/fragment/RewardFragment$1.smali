.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;
.super Landroid/os/Handler;
.source "RewardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;Landroid/os/Looper;)V
    .registers 3

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 96
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 97
    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_117

    .line 99
    const-string v1, "add_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "reward_add"

    if-eqz v1, :cond_4a

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    if-eqz p1, :cond_110

    .line 101
    invoke-static {v2, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getRewardBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_110

    .line 102
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_110

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->setList(Ljava/util/Collection;)V

    .line 105
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->notifyDataSetChanged()V

    goto/16 :goto_110

    .line 109
    :cond_4a
    const-string v1, "dele_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 110
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    if-eqz p1, :cond_110

    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_110

    .line 111
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->dele_position:I
    invoke-static {v1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$000(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->setList(Ljava/util/Collection;)V

    .line 113
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-static {p1, v2, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveRewardBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_110

    .line 115
    :cond_91
    const-string v1, "update_success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 116
    const-string v0, "update_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "update_icon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 118
    const-string v3, "update_iconId"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 119
    iget-object v3, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v3, v3, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    if-eqz v3, :cond_110

    iget-object v3, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v3, v3, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_110

    const/4 v3, 0x0

    .line 120
    :goto_bc
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_f8

    .line 121
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->update_position:I
    invoke-static {v4}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$100(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)I

    move-result v4

    if-ne v4, v3, :cond_f5

    .line 122
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-virtual {v4, v0}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setName(Ljava/lang/String;)V

    .line 123
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-virtual {v4, v1}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setCoin(I)V

    .line 124
    iget-object v4, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;

    invoke-virtual {v4, p1}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->setIconId(I)V

    :cond_f5
    add-int/lit8 v3, v3, 0x1

    goto :goto_bc

    .line 127
    :cond_f8
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->taskRewardAdapter:Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter;->setList(Ljava/util/Collection;)V

    .line 128
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-static {p1, v2, v2, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->saveRewardBeanArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 131
    :cond_110
    :goto_110
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$1;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object v0, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->list:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->reflashData(Ljava/util/List;)V

    :cond_117
    return-void
.end method
