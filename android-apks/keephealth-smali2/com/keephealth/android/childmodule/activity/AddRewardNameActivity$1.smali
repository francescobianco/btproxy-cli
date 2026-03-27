.class Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$1;
.super Ljava/lang/Object;
.source "AddRewardNameActivity.java"

# interfaces
.implements Lcom/keephealth/android/childmodule/adapter/TaskAddRewardAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .registers 5

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->finish()V

    return-void
.end method
