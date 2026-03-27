.class public Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "RecommendItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field center_bg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d9
    .end annotation
.end field

.field progress:Landroid/widget/ProgressBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09046f
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

.field tvStatus:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e2
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;Landroid/view/View;)V
    .registers 3

    .line 169
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;

    .line 170
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
