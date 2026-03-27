.class public final synthetic Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/CustomToggleButton$OnSwitchListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

.field public final synthetic f$1:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    iput p3, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSwitched(Z)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;

    iget v2, p0, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter;->lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-AlarmListAdapter(Lcom/keephealth/android/ui/device/adapter/AlarmListAdapter$ViewHolder;IZ)V

    return-void
.end method
