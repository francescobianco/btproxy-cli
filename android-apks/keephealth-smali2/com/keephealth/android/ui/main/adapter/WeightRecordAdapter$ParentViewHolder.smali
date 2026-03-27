.class Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;
.super Ljava/lang/Object;
.source "WeightRecordAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParentViewHolder"
.end annotation


# instance fields
.field expanIcon:Landroid/widget/ImageView;

.field monthName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

.field tvAvgWeight:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;->this$0:Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$1;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1}, Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter$ParentViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/WeightRecordAdapter;)V

    return-void
.end method
