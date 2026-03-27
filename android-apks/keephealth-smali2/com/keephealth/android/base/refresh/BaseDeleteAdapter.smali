.class public abstract Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;,
        Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NoDataViewHolder;,
        Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NetErrorViewHolder;,
        Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;,
        Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnRetryClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "MVH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final TYPE_NET_ERROR:I = 0x2

.field private static final TYPE_NORMAL:I = 0x0

.field private static final TYPE_NO_DATA:I = 0x1

.field private static currentType:I


# instance fields
.field protected customClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected mContext:Landroid/content/Context;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mOnItemClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;

.field private mOpenMenu:Lcom/keephealth/android/views/RvSlideLayout;

.field protected mRetryClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnRetryClickListener;

.field private mScrollingMenu:Lcom/keephealth/android/views/RvSlideLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    if-eqz p2, :cond_12

    .line 59
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_e

    goto :goto_12

    :cond_e
    const/4 p2, 0x0

    .line 62
    sput p2, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    goto :goto_15

    :cond_12
    :goto_12
    const/4 p2, 0x1

    .line 60
    sput p2, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 64
    :goto_15
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 191
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyItemInserted(I)V

    .line 192
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public addMoreItem(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public closeOpenMenu()V
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mOpenMenu:Lcom/keephealth/android/views/RvSlideLayout;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/keephealth/android/views/RvSlideLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 47
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mOpenMenu:Lcom/keephealth/android/views/RvSlideLayout;

    invoke-virtual {v0}, Lcom/keephealth/android/views/RvSlideLayout;->closeMenu()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mOpenMenu:Lcom/keephealth/android/views/RvSlideLayout;

    :cond_12
    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 134
    sget v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    if-nez v0, :cond_b

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 159
    sget p1, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    return p1
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getScrollingMenu()Lcom/keephealth/android/views/RvSlideLayout;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mScrollingMenu:Lcom/keephealth/android/views/RvSlideLayout;

    return-object v0
.end method

.method public holdOpenMenu(Lcom/keephealth/android/views/RvSlideLayout;)V
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->closeOpenMenu()V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mOpenMenu:Lcom/keephealth/android/views/RvSlideLayout;

    return-void
.end method

.method synthetic lambda$onCreateViewHolder$0$com-keephealth-android-base-refresh-BaseDeleteAdapter(ILandroid/view/View;)V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 102
    instance-of v0, p1, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NoDataViewHolder;

    if-eqz v0, :cond_5

    goto :goto_13

    .line 104
    :cond_5
    instance-of v0, p1, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NetErrorViewHolder;

    if-eqz v0, :cond_a

    goto :goto_13

    .line 112
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    :goto_13
    return-void
.end method

.method protected abstract onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    if-eqz p2, :cond_3f

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2f

    const/4 v0, 0x2

    if-eq p2, v0, :cond_20

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 93
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    const/4 p1, 0x0

    goto :goto_43

    .line 88
    :cond_20
    new-instance p2, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NetErrorViewHolder;

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0190

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NetErrorViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3d

    .line 85
    :cond_2f
    new-instance p2, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NoDataViewHolder;

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0191

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$NoDataViewHolder;-><init>(Landroid/view/View;)V

    :goto_3d
    move-object p1, p2

    goto :goto_43

    .line 82
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    :goto_43
    return-object p1
.end method

.method protected abstract onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMVH;TT;I)V"
        }
    .end annotation
.end method

.method public setCustomClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->customClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnCustomClickListener;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_d

    .line 171
    sput v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    goto :goto_12

    :cond_d
    const/4 v1, 0x0

    .line 174
    sput v1, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 175
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    .line 177
    :goto_12
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 178
    sput v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 180
    :cond_1c
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnItemClickListener;

    return-void
.end method

.method public setRetryClickListener(Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnRetryClickListener;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mRetryClickListener:Lcom/keephealth/android/base/refresh/BaseDeleteAdapter$OnRetryClickListener;

    return-void
.end method

.method public setScrollingMenu(Lcom/keephealth/android/views/RvSlideLayout;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->mScrollingMenu:Lcom/keephealth/android/views/RvSlideLayout;

    return-void
.end method

.method public showNetError()V
    .registers 2

    const/4 v0, 0x2

    .line 210
    sput v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 211
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showNoData()V
    .registers 2

    const/4 v0, 0x1

    .line 205
    sput v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 206
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showNormalData()V
    .registers 2

    const/4 v0, 0x0

    .line 200
    sput v0, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->currentType:I

    .line 201
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseDeleteAdapter;->notifyDataSetChanged()V

    return-void
.end method
