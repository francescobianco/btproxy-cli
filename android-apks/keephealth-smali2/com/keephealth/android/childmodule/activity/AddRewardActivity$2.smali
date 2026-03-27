.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;
.super Ljava/lang/Object;
.source "AddRewardActivity.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .registers 11

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    goto/16 :goto_a3

    .line 145
    :cond_9
    const-string v0, "reward_add"

    invoke-static {v0, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->getRewardBeanArray(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 146
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$400(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 147
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v2, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$000(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v2 .. v8}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->addRewardSave(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;IIILjava/util/List;)V

    goto :goto_85

    .line 149
    :cond_45
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v2, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v2 .. v8}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->addRewardSave(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;IIILjava/util/List;)V

    .line 151
    :goto_85
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    const-string v2, "name"

    const-string v3, "add_success"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->setResult(ILandroid/content/Intent;)V

    .line 156
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->finish()V

    :goto_a3
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 139
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$2;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
