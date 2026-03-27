.class Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->startSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

.field final synthetic val$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .registers 3

    .line 332
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;->val$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 335
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 336
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;->this$0:Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$1;->val$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    # invokes: Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->onAnimEnd(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    invoke-static {p1, v0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->access$000(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;Landroidx/core/splashscreen/SplashScreenViewProvider;)V

    return-void
.end method
