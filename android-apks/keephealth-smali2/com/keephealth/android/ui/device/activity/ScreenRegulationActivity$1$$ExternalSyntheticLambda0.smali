.class public final synthetic Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;I[B)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;

    iput p2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;

    iget v1, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1$$ExternalSyntheticLambda0;->f$2:[B

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/ScreenRegulationActivity$1;->lambda$onSuccess$0$com-keephealth-android-ui-device-activity-ScreenRegulationActivity$1(I[B)V

    return-void
.end method
