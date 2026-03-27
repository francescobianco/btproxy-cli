.class Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$11;
.super Ljava/lang/Object;
.source "MainFragmentNew.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->bleTimeout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;)V
    .registers 2

    .line 3448
    iput-object p1, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$11;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    .line 3461
    iget-object v0, p0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew$11;->this$0:Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;

    iput-object p1, v0, Lcom/keephealth/android/ui/main/fragment/MainFragmentNew;->aliveActivity:Landroid/app/Activity;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
