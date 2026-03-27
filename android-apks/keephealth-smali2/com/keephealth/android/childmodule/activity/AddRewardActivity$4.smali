.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;
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

    .line 175
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .registers 7

    .line 178
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->id:I
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$200(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_7c

    .line 181
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 182
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 183
    const-string v2, "name"

    const-string v3, "update_success"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->isEdit:Z
    invoke-static {v2}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$400(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Z

    move-result v2

    const-string v3, "update_name"

    if-nez v2, :cond_2f

    .line 185
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$000(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 187
    :cond_2f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v4, v4, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_49
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->etAddReward:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "update_icon"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "update_iconId"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {v1, v0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->setResult(ILandroid/content/Intent;)V

    .line 194
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->finish()V

    :goto_7c
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 175
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$4;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
