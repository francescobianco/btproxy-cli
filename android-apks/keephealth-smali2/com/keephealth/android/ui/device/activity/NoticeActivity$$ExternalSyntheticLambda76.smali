.class public final synthetic Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/ItemToggleLayout$OnToggleListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/NoticeActivity;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;->f$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final onToggle(Lcom/keephealth/android/views/ItemToggleLayout;Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;->f$0:Lcom/keephealth/android/ui/device/activity/NoticeActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/NoticeActivity$$ExternalSyntheticLambda76;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, p1, p2}, Lcom/keephealth/android/ui/device/activity/NoticeActivity;->lambda$setOnToggleListener$71$com-keephealth-android-ui-device-activity-NoticeActivity(Ljava/util/function/Consumer;Lcom/keephealth/android/views/ItemToggleLayout;Z)V

    return-void
.end method
