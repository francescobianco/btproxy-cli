.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$9;
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

    .line 791
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 3

    .line 794
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    if-eqz p1, :cond_33

    sget-object p1, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 795
    sget-object p1, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    const-string v0, "https://keephealth-zhj.com/keephealth/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 796
    const-string p1, "http://47.75.143.120:9090/keephealth/"

    sput-object p1, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    .line 797
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnCheck:Landroid/widget/Button;

    const-string v0, "\u670d\u52a1\u5668\u5207\u6362\uff1a\u6d4b\u8bd5\u670d"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_33

    .line 799
    :cond_26
    sput-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    .line 800
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$9;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->binding:Lcom/keephealth/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/keephealth/android/databinding/ActivityLoginBinding;->btnCheck:Landroid/widget/Button;

    const-string v0, "\u670d\u52a1\u5668\u5207\u6362\uff1a\u6b63\u5f0f\u670d"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_33
    :goto_33
    return-void
.end method
