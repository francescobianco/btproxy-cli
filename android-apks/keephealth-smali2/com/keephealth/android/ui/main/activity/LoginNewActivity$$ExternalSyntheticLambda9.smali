.class public final synthetic Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda9;->f$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda9;->f$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    check-cast p1, Lcom/keephealth/android/model/BaseBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->lambda$createObserver$13$com-keephealth-android-ui-main-activity-LoginNewActivity(Lcom/keephealth/android/model/BaseBean;)V

    return-void
.end method
