.class Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageViewHolder"
.end annotation


# instance fields
.field mCheckView:Landroid/widget/ImageView;

.field mGifMask:Landroid/widget/ImageView;

.field mImageView:Landroid/widget/ImageView;

.field mMaskView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 74
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902e0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mImageView:Landroid/widget/ImageView;

    const v0, 0x7f0900d7

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mCheckView:Landroid/widget/ImageView;

    const v0, 0x7f0902fa

    .line 77
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mMaskView:Landroid/view/View;

    const v0, 0x7f0902e1

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mGifMask:Landroid/widget/ImageView;

    return-void
.end method
