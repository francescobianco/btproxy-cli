.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$16;
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

    .line 907
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$16;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 911
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$16;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # getter for: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->agreeXieyiLogin:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$100(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)Z

    move-result p1

    if-nez p1, :cond_1e

    sget p1, Lcom/keephealth/android/app/AppApplication;->foreign:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    .line 912
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$16;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1004c1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    return-void

    .line 915
    :cond_1e
    invoke-static {}, Lcom/keephealth/android/workmanager/WeChatLoginHelper;->login()V

    return-void
.end method
