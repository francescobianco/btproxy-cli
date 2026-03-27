.class public final synthetic Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

.field public final synthetic f$1:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;

    iput p3, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;->f$1:Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;

    iget v2, p0, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter;->lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-SelectWeekDayAdapter(Lcom/keephealth/android/ui/device/adapter/SelectWeekDayAdapter$ViewHolder;ILandroid/view/View;)V

    return-void
.end method
