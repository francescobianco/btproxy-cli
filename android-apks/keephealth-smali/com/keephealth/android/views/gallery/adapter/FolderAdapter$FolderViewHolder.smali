.class Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderViewHolder"
.end annotation


# instance fields
.field iv_image:Landroid/widget/ImageView;

.field tv_name:Landroid/widget/TextView;

.field tv_size:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0902de

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;->iv_image:Landroid/widget/ImageView;

    const v0, 0x7f09073b

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;->tv_name:Landroid/widget/TextView;

    const v0, 0x7f090778

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;->tv_size:Landroid/widget/TextView;

    return-void
.end method
