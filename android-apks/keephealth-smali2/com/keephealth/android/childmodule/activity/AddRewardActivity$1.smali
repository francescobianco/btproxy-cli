.class Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;
.super Ljava/lang/Object;
.source "AddRewardActivity.java"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


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
        "Landroidx/activity/result/ActivityResultCallback<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(Landroidx/activity/result/ActivityResult;)V
    .registers 6

    if-eqz p1, :cond_91

    .line 106
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 108
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    const-string v3, "name"

    if-ne v1, v2, :cond_3c

    .line 109
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 111
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    # setter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$002(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    :cond_20
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$000(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_89

    .line 114
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->tvAddName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$000(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 116
    :cond_3c
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_89

    .line 117
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_89

    .line 119
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$102(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    # setter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->id:I
    invoke-static {v0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$202(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;I)I

    .line 121
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_89

    .line 122
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object v0, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->addRewardNameViewModel:Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$100(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/childmodule/viewmodel/AddRewardNameViewModel;->setIconId(Ljava/lang/String;)I

    move-result v0

    # setter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I
    invoke-static {p1, v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$302(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;I)I

    .line 123
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->binding:Lcom/keephealth/android/databinding/ActivityAddrewardBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityAddrewardBinding;->addrewardImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->iconId:I
    invoke-static {v0}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$300(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    :cond_89
    :goto_89
    iget-object p1, p0, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->this$0:Lcom/keephealth/android/childmodule/activity/AddRewardActivity;

    # getter for: Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->access$000(Lcom/keephealth/android/childmodule/activity/AddRewardActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/keephealth/android/childmodule/activity/AddRewardActivity;->tv_name:Ljava/lang/String;

    :cond_91
    return-void
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .registers 2

    .line 102
    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/childmodule/activity/AddRewardActivity$1;->onActivityResult(Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
