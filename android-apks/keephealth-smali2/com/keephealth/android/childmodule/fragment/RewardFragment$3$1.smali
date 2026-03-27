.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/adapter/TaskRewardAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->onChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(ILcom/keephealth/android/childmodule/bean/RewardSelectBean;)V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # setter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->update_position:I
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$102(Lcom/keephealth/android/childmodule/fragment/RewardFragment;I)I

    .line 177
    iget-object v0, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object v0, v0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # setter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->dele_position:I
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$002(Lcom/keephealth/android/childmodule/fragment/RewardFragment;I)I

    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-virtual {v1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 180
    const-string p1, "isEdit"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const-string p1, "name"

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string p1, "id"

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    const-string p1, "icon"

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getCoin()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string p1, "iconId"

    invoke-virtual {p2}, Lcom/keephealth/android/childmodule/bean/RewardSelectBean;->getIconId()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3$1;->this$1:Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment$3;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    # getter for: Lcom/keephealth/android/childmodule/fragment/RewardFragment;->register:Landroidx/activity/result/ActivityResultLauncher;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->access$200(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void
.end method
