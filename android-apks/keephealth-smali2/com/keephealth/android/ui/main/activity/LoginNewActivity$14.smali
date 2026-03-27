.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "LoginNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 2

    .line 890
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 4

    .line 893
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 894
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v0, v0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/keephealth/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$14;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    const-class v1, Lcom/keephealth/android/ui/main/activity/UpdatePasswordActivity;

    invoke-static {v0, v1, p1}, Lcom/keephealth/android/util/IntentUtil;->goToActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method
