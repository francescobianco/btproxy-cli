.class public Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;
.super Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$CamViewHolder;,
        Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter<",
        "Lcom/keephealth/android/views/gallery/bean/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private isSingleSelect:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/views/gallery/bean/Image;

    .line 33
    invoke-virtual {p1}, Lcom/keephealth/android/views/gallery/bean/Image;->getId()I

    move-result p1

    if-nez p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/keephealth/android/views/gallery/bean/Image;I)V
    .registers 8

    .line 47
    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Image;->getId()I

    move-result p3

    if-eqz p3, :cond_53

    .line 48
    check-cast p1, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;

    .line 49
    iget-object p3, p1, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Image;->isSelect()Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 50
    iget-object p3, p1, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mMaskView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Image;->isSelect()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object p3, p1, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mGifMask:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Image;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    move v0, v1

    goto :goto_37

    :cond_36
    move v0, v2

    :goto_37
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->mLoader:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Image;->getThumbPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    iget-object p1, p1, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;->mCheckView:Landroid/widget/ImageView;

    iget-boolean p2, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->isSingleSelect:Z

    if-eqz p2, :cond_50

    move v1, v2

    :cond_50
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_53
    return-void
.end method

.method bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p2, Lcom/keephealth/android/views/gallery/bean/Image;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/keephealth/android/views/gallery/bean/Image;I)V

    return-void
.end method

.method onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    const/4 v0, 0x0

    if-nez p2, :cond_12

    .line 41
    new-instance p2, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$CamViewHolder;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b0

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$CamViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 42
    :cond_12
    new-instance p2, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;

    iget-object v1, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c00b2

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter$ImageViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setSingleSelect(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/keephealth/android/views/gallery/adapter/ImageAdapter;->isSingleSelect:Z

    return-void
.end method
