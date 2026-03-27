.class public final synthetic Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity$4;->lambda$onFailed$1$com-keephealth-android-ui-device-activity-DialCenterActivity$4()V

    return-void
.end method
