.class Lcom/keephealth/android/childmodule/fragment/RewardFragment$2;
.super Ljava/lang/Object;
.source "RewardFragment.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


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
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/fragment/RewardFragment;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$2;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .registers 4

    if-eqz p1, :cond_21

    .line 152
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 154
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_21

    .line 155
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 156
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 157
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    iget-object p1, p0, Lcom/keephealth/android/childmodule/fragment/RewardFragment$2;->this$0:Lcom/keephealth/android/childmodule/fragment/RewardFragment;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/fragment/RewardFragment;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_21
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .registers 2

    .line 148
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/fragment/RewardFragment$2;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
