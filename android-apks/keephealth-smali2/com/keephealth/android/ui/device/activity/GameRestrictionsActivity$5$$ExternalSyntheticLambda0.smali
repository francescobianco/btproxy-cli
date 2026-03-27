.class public final synthetic Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;

.field public final synthetic f$1:[B

.field public final synthetic f$2:[I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;[B[I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;->f$1:[B

    iput-object p3, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;->f$1:[B

    iget-object v2, p0, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5$$ExternalSyntheticLambda0;->f$2:[I

    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/ui/device/activity/GameRestrictionsActivity$5;->lambda$onSuccess$0$com-keephealth-android-ui-device-activity-GameRestrictionsActivity$5([B[I)V

    return-void
.end method
