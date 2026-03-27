.class public final synthetic Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda4;->f$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity$$ExternalSyntheticLambda4;->f$0:Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/RegisterNewActivity;->lambda$createObserver$7$com-keephealth-android-ui-main-activity-RegisterNewActivity(Ljava/lang/String;)V

    return-void
.end method
