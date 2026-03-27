.class public Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "WeightRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildViewHolder"
.end annotation


# instance fields
.field layout_delete:Landroid/widget/LinearLayout;

.field line:Landroid/view/View;

.field line2:Landroid/view/View;

.field swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

.field tvWeightTime:Landroid/widget/TextView;

.field weightTotal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ChildViewHolder;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
