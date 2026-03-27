.class public final synthetic Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/LoginNewActivity;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;->f$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;->f$0:Lcom/keephealth/android/ui/main/activity/LoginNewActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/LoginNewActivity$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/ui/main/activity/LoginNewActivity;->lambda$getAccessToken$7$com-keephealth-android-ui-main-activity-LoginNewActivity(Ljava/lang/String;)V

    return-void
.end method
