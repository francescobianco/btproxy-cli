.class public Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "AllDataBloodPressRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChildViewHolder"
.end annotation


# instance fields
.field layout_delete:Landroid/widget/LinearLayout;

.field line:Landroid/view/View;

.field swipeLayout:Lcom/keephealth/android/views/SwipeDragLayout;

.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

.field tvBloodTime:Landroid/widget/TextView;

.field tvBloodValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter$ChildViewHolder;->this$0:Lcom/keephealth/android/ui/main/adapter/AllDataBloodPressRecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
