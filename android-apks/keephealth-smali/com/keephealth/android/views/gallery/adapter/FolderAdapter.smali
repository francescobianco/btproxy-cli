.class public Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;
.super Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter<",
        "Lcom/keephealth/android/views/gallery/bean/Folder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 23
    invoke-direct {p0, p1}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/keephealth/android/views/gallery/bean/Folder;I)V
    .registers 7

    .line 33
    check-cast p1, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;

    .line 34
    iget-object p3, p1, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;->tv_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p3, p1, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;->tv_size:Landroid/widget/TextView;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Folder;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object p3, p0, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;->mLoader:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {p2}, Lcom/keephealth/android/views/gallery/bean/Folder;->getAlbumPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;->iv_image:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 21
    check-cast p2, Lcom/keephealth/android/views/gallery/bean/Folder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/keephealth/android/views/gallery/bean/Folder;I)V

    return-void
.end method

.method onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 28
    new-instance p2, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;

    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00b1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/gallery/adapter/FolderAdapter$FolderViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
