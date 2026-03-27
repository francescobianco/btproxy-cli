.class public Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RecommendDownloadItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomViewHolder"
.end annotation


# instance fields
.field center_bg:Landroid/widget/ImageView;

.field progress:Landroid/widget/ProgressBar;

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;

.field tvStatus:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;Landroid/view/View;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;

    .line 175
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900d9

    .line 176
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->center_bg:Landroid/widget/ImageView;

    const p1, 0x7f09046f

    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->progress:Landroid/widget/ProgressBar;

    const p1, 0x7f0906e2

    .line 178
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public bind(I)V
    .registers 2

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    return-void
.end method
