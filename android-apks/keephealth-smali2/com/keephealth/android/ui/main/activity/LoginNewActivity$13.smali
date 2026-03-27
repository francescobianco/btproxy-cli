.class Lcom/keephealth/android/ui/main/activity/LoginNewActivity$13;
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

    .line 882
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$13;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 885
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isClickSkipYanZheng:Z

    .line 886
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$13;->this$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->goToRegisterFirst()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->access$1200(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V

    return-void
.end method
