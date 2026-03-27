.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;
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

    .line 160
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .registers 6

    .line 163
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->id:I
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$200(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    goto :goto_28

    .line 166
    :cond_a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 167
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 168
    const-string v2, "name"

    const-string v3, "dele_success"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {v1, v0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->finish()V

    :goto_28
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 160
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$3;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
