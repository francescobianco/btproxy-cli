.class Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "AddRewardNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->createObserver()V
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

    .line 92
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 5

    .line 95
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v2, v2, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$2;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->finish()V

    return-void
.end method
