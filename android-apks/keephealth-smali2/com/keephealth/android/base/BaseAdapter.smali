.class public abstract Lcom/keephealth/android/base/BaseAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;,
        Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;,
        Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;,
        Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;,
        Lcom/keephealth/android/base/BaseAdapter$OnRetryClickListener;
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
.field private ag:I

.field protected customClickListener:Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;

.field protected inflater:Landroid/view/LayoutInflater;

.field private isDataChanged:Z

.field protected mContext:Landroid/content/Context;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

.field protected mRetryClickListener:Lcom/keephealth/android/base/BaseAdapter$OnRetryClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/keephealth/android/base/BaseAdapter;->isDataChanged:Z

    .line 39
    iput-object p2, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    if-eqz p2, :cond_14

    .line 40
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 41
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->showNormalData()V

    goto :goto_17

    .line 43
    :cond_14
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->showNoData()V

    .line 45
    :goto_17
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->inflater:Landroid/view/LayoutInflater;

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

    .line 175
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseAdapter;->notifyItemInserted(I)V

    .line 177
    iget-object p2, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, p1

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;->notifyItemRangeChanged(II)V

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

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemCount()I
    .registers 2

    .line 106
    sget v0, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

    if-nez v0, :cond_b

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 139
    sget p1, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

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

    .line 170
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method synthetic lambda$onCreateViewHolder$0$com-keephealth-android-base-BaseAdapter(ILandroid/view/View;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 74
    instance-of v0, p1, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;

    if-eqz v0, :cond_5

    goto :goto_13

    .line 76
    :cond_5
    instance-of v0, p1, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;

    if-eqz v0, :cond_a

    goto :goto_13

    .line 84
    :cond_a
    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/keephealth/android/base/BaseAdapter;->onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

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

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 65
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/base/BaseAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/base/BaseAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/base/BaseAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1e
    const/4 p1, 0x0

    goto :goto_43

    .line 60
    :cond_20
    new-instance p2, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;

    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0190

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/base/BaseAdapter$NetErrorViewHolder;-><init>(Landroid/view/View;)V

    goto :goto_3d

    .line 57
    :cond_2f
    new-instance p2, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;

    iget-object v0, p0, Lcom/keephealth/android/base/BaseAdapter;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0c0191

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/base/BaseAdapter$NoDataViewHolder;-><init>(Landroid/view/View;)V

    :goto_3d
    move-object p1, p2

    goto :goto_43

    .line 54
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/BaseAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

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

.method public setCustomClickListener(Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->customClickListener:Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;

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

    .line 151
    iput-boolean v0, p0, Lcom/keephealth/android/base/BaseAdapter;->isDataChanged:Z

    const/4 v1, 0x0

    if-nez p1, :cond_10

    .line 153
    sput v0, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

    .line 154
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    goto :goto_14

    .line 156
    :cond_10
    sput v1, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

    .line 157
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->mList:Ljava/util/List;

    .line 159
    :goto_14
    iget p1, p0, Lcom/keephealth/android/base/BaseAdapter;->ag:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/keephealth/android/base/BaseAdapter;->ag:I

    .line 160
    iget-boolean p1, p0, Lcom/keephealth/android/base/BaseAdapter;->isDataChanged:Z

    if-eqz p1, :cond_22

    .line 162
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->notifyDataSetChanged()V

    .line 163
    iput-boolean v1, p0, Lcom/keephealth/android/base/BaseAdapter;->isDataChanged:Z

    :cond_22
    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    return-void
.end method

.method public setRetryClickListener(Lcom/keephealth/android/base/BaseAdapter$OnRetryClickListener;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/keephealth/android/base/BaseAdapter;->mRetryClickListener:Lcom/keephealth/android/base/BaseAdapter$OnRetryClickListener;

    return-void
.end method

.method public showNetError()V
    .registers 2

    const/4 v0, 0x2

    .line 194
    sput v0, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

    .line 195
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showNoData()V
    .registers 2

    const/4 v0, 0x1

    .line 189
    sput v0, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

    .line 190
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public showNormalData()V
    .registers 2

    const/4 v0, 0x0

    .line 185
    sput v0, Lcom/keephealth/android/base/BaseAdapter;->currentType:I

    .line 186
    invoke-virtual {p0}, Lcom/keephealth/android/base/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
