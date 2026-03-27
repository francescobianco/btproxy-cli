.class Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;
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

    .line 103
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 106
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;

    iget-object v1, v1, Lcom/keephealth/android/databinding/ActivityAddrewardNameBinding;->etAddName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity$3;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardNameActivity;->finish()V

    return-void
.end method
