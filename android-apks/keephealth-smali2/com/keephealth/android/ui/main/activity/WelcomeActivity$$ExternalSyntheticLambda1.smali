.class public final synthetic Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/WelcomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/WelcomeActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WelcomeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/activity/WelcomeActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/WelcomeActivity;->lambda$showWebViewDialog$1$com-keephealth-android-ui-main-activity-WelcomeActivity()V

    return-void
.end method
