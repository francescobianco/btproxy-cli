.class public final synthetic Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/VerifyEmailOrPhoneActivity;->lambda$createObserver$1$com-keephealth-android-ui-main-activity-VerifyEmailOrPhoneActivity(Ljava/lang/String;)V

    return-void
.end method
