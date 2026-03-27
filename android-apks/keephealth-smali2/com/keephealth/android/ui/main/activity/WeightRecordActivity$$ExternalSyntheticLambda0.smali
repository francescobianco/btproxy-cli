.class public final synthetic Lcom/keephealth/android/ui/main/activity/WeightRecordActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$OnSwipeChildClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    return-void
.end method


# virtual methods
.method public final onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .registers 14

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/keephealth/android/ui/main/activity/WeightRecordActivity;->lambda$returnRecordInfos$0$com-keephealth-android-ui-main-activity-WeightRecordActivity(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result p1

    return p1
.end method
