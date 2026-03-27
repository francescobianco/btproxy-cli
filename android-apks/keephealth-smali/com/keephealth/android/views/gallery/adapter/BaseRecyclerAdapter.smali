.class public abstract Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;,
        Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field mLoader:Lcom/bumptech/glide/RequestManager;

.field private onClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnClickListener;

.field private onItemClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    .line 31
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mLoader:Lcom/bumptech/glide/RequestManager;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    new-instance p1, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$1;

    invoke-direct {p1, p0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$1;-><init>(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;)V

    iput-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;)Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_1a

    .line 72
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->notifyItemRangeInserted(II)V

    :cond_1a
    return-void
.end method

.method public final addItem(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 80
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_10
    return-void
.end method

.method public final clear()V
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_12

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_12

    .line 96
    :cond_b
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_12
    :goto_12
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    return-void
.end method

.method abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method abstract onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 47
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_12
    return-object p1
.end method

.method public final resetItem(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 101
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->clear()V

    .line 102
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->addAll(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter$OnItemClickListener;

    return-void
.end method

.method public updateItem(I)V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 88
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/gallery/adapter/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_9
    return-void
.end method
