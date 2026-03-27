.class public final synthetic Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/activity/AlarmListActivity;

.field public final synthetic f$1:Lcom/keephealth/android/model/bean/DeviceModel;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/activity/AlarmListActivity;Lcom/keephealth/android/model/bean/DeviceModel;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/AlarmListActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/model/bean/DeviceModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/activity/AlarmListActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/activity/AlarmListActivity$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/model/bean/DeviceModel;

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/ui/device/activity/AlarmListActivity;->lambda$initView$0$com-keephealth-android-ui-device-activity-AlarmListActivity(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/view/View;)V

    return-void
.end method
