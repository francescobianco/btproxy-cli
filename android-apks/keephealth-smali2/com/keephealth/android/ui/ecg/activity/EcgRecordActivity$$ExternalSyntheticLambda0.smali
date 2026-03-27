.class public final synthetic Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 15

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/keephealth/android/ui/ecg/activity/EcgRecordActivity;->lambda$getSuccess$0$com-keephealth-android-ui-ecg-activity-EcgRecordActivity(Ljava/util/List;Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p1

    return p1
.end method
