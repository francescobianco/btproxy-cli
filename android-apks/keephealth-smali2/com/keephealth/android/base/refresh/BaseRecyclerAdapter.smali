.class public abstract Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnClickListener;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;,
        Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$HeaderViewHolder;
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


# static fields
.field public static final BOTH_HEADER_FOOTER:I = 0x3

.field public static final NEITHER:I = 0x0

.field public static final ONLY_FOOTER:I = 0x2

.field public static final ONLY_HEADER:I = 0x1

.field public static final STATE_HIDE:I = 0x5

.field public static final STATE_INVALID_NETWORK:I = 0x3

.field public static final STATE_LOADING:I = 0x8

.field public static final STATE_LOAD_ERROR:I = 0x7

.field public static final STATE_LOAD_MORE:I = 0x2

.field public static final STATE_NO_MORE:I = 0x1

.field public static final STATE_REFRESHING:I = 0x6

.field private static final VIEW_TYPE_FOOTER:I = -0x2

.field private static final VIEW_TYPE_HEADER:I = -0x1

.field public static final VIEW_TYPE_NORMAL:I


# instance fields
.field private final BEHAVIOR_MODE:I

.field protected customClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;

.field protected mContext:Landroid/content/Context;

.field protected mHeaderView:Landroid/view/View;

.field protected mInflater:Landroid/view/LayoutInflater;

.field public mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected mSelectedPosition:I

.field protected mState:I

.field protected mSystemTime:Ljava/lang/String;

.field private onClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnClickListener;

.field protected onItemClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;

.field private onItemLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;

.field private onLoadingHeaderCallBack:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;

.field private onLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;

.field private retryOnClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 69
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSelectedPosition:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    iput p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->BEHAVIOR_MODE:I

    const/4 p1, 0x5

    .line 74
    iput p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mState:I

    .line 76
    invoke-direct {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->initListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;)Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;

    return-object p0
.end method

.method private initListener()V
    .registers 2

    .line 83
    new-instance v0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$1;-><init>(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;)V

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnClickListener;

    .line 91
    new-instance v0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$2;-><init>(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;)V

    iput-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;

    return-void
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

    if-eqz p1, :cond_19

    .line 309
    :try_start_2
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemRangeInserted(II)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_19

    :catch_15
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    :goto_19
    return-void
.end method

.method public addItem(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getIndex(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 329
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemInserted(I)V

    :cond_e
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

    .line 320
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_10
    return-void
.end method

.method public final clear()V
    .registers 3

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p0, v0, v1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->setState(IZ)V

    .line 380
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyDataSetChanged()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_12
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getHeaderView()Landroid/view/View;
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method protected getIndex(I)I
    .registers 4

    .line 273
    iget v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->BEHAVIOR_MODE:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    :cond_8
    add-int/lit8 p1, p1, -0x1

    :cond_a
    return p1
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getIndex(I)I

    move-result v0

    if-ltz v0, :cond_1a

    .line 364
    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_f

    goto :goto_1a

    .line 366
    :cond_f
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getIndex(I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .registers 4

    .line 278
    iget v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->BEHAVIOR_MODE:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1b

    if-ne v0, v1, :cond_9

    goto :goto_1b

    :cond_9
    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 281
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v2

    return v0

    .line 282
    :cond_14
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 279
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 244
    iget v2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->BEHAVIOR_MODE:I

    if-eq v2, v1, :cond_a

    if-ne v2, v0, :cond_c

    :cond_a
    const/4 p1, -0x1

    return p1

    :cond_c
    add-int/2addr p1, v1

    .line 246
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemCount()I

    move-result v1

    if-ne p1, v1, :cond_1c

    iget p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->BEHAVIOR_MODE:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1a

    if-ne p1, v0, :cond_1c

    :cond_1a
    const/4 p1, -0x2

    return p1

    :cond_1c
    const/4 p1, 0x0

    return p1
.end method

.method public final getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 253
    iget v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSelectedPosition:I

    if-ltz v0, :cond_16

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_16

    .line 255
    :cond_d
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    iget v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSelectedPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_16
    :goto_16
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 408
    iget v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mState:I

    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 206
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 207
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 208
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_15

    .line 209
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 210
    new-instance v0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$3;-><init>(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_15
    return-void
.end method

.method protected abstract onBindDefaultViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 8

    .line 139
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_24

    if-eq v0, v2, :cond_1b

    .line 194
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onBindDefaultViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V

    goto/16 :goto_ea

    .line 141
    :cond_1b
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onLoadingHeaderCallBack:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;

    if-eqz v0, :cond_ea

    .line 142
    invoke-interface {v0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;->onBindHeaderHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto/16 :goto_ea

    .line 145
    :cond_24
    check-cast p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;

    .line 146
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNoDate:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNetError:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    iget p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mState:I

    const-string v4, ""

    packed-switch p2, :pswitch_data_ec

    :pswitch_3f
    goto/16 :goto_ea

    .line 185
    :pswitch_41
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->tv_footer:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->pb_footer:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_ea

    .line 181
    :pswitch_4d
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->tv_footer:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->pb_footer:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_ea

    .line 189
    :pswitch_59
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_ea

    .line 151
    :pswitch_60
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 152
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->resetItem(Ljava/util/List;)V

    .line 153
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->tv_footer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1005b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->pb_footer:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 155
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_ea

    .line 156
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNetError:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_ea

    .line 161
    :pswitch_8f
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->tv_footer:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->pb_footer:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_ea

    .line 165
    :pswitch_9a
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->tv_footer:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->pb_footer:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 167
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_db

    .line 168
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNoDate:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->noDataImg:Landroid/widget/ImageView;

    const v0, 0x7f0d006c

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->noDateText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->noDateTextLitter:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 173
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->layout_foot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ea

    .line 175
    :cond_db
    iget-object p2, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->llNoDate:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 177
    iget-object p1, p1, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;->layout_foot:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_ea
    :goto_ea
    return-void

    nop

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_8f
        :pswitch_60
        :pswitch_3f
        :pswitch_59
        :pswitch_4d
        :pswitch_41
        :pswitch_8f
    .end packed-switch
.end method

.method protected abstract onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    const/4 v0, -0x2

    if-eq p2, v0, :cond_31

    const/4 v0, -0x1

    if-eq p2, v0, :cond_20

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onCreateDefaultViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 121
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLongClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 123
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1f
    return-object p1

    .line 112
    :cond_20
    iget-object p2, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onLoadingHeaderCallBack:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;

    if-eqz p2, :cond_29

    .line 113
    invoke-interface {p2, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;->onCreateHeaderHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    .line 115
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "you have to impl the interface when using this viewType"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_31
    new-instance p2, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;

    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$FooterViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .line 227
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 228
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_4d

    .line 229
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 230
    iget v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->BEHAVIOR_MODE:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 231
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    if-nez p1, :cond_1b

    move v2, v3

    :cond_1b
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_4d

    :cond_1f
    const/4 v4, 0x2

    if-ne v1, v4, :cond_34

    .line 233
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_30

    move v2, v3

    :cond_30
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    goto :goto_4d

    :cond_34
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4d

    .line 235
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v3

    if-ne p1, v1, :cond_4d

    .line 236
    :cond_4a
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final removeItem(I)V
    .registers 4

    .line 356
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-le v0, p1, :cond_12

    .line 357
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getIndex(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_12
    return-void
.end method

.method public final removeItem(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 349
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 350
    iget-object v1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_16
    return-void
.end method

.method public replaceItem(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    if-eqz p2, :cond_e

    .line 335
    iget-object v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getIndex(I)I

    move-result v1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_e
    return-void
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

    .line 371
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->clear()V

    .line 372
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->addAll(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public setCustomClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->customClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnCustomClickListener;

    return-void
.end method

.method public final setHeaderView(Landroid/view/View;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mHeaderView:Landroid/view/View;

    return-void
.end method

.method public setOnItemClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onItemLongClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnItemLongClickListener;

    return-void
.end method

.method protected setOnLoadingHeaderCallBack(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;)V
    .registers 2

    .line 430
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->onLoadingHeaderCallBack:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$OnLoadingHeaderCallBack;

    return-void
.end method

.method public setRetryOnClickListener(Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->retryOnClickListener:Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter$RetryOnClickListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .registers 3

    .line 263
    iget v0, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSelectedPosition:I

    if-eq p1, v0, :cond_c

    .line 264
    invoke-virtual {p0, v0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->updateItem(I)V

    .line 265
    iput p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSelectedPosition:I

    .line 266
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->updateItem(I)V

    .line 268
    :cond_c
    iput p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSelectedPosition:I

    .line 269
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->updateItem(I)V

    return-void
.end method

.method public setState(IZ)V
    .registers 4

    .line 388
    iput p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    .line 390
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_14

    :cond_9
    if-eqz p2, :cond_14

    .line 393
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->updateItem(I)V

    :cond_14
    :goto_14
    return-void
.end method

.method public setState(IZI)V
    .registers 4

    .line 398
    iput p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mState:I

    const/4 p3, 0x3

    if-ne p1, p3, :cond_9

    .line 400
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyDataSetChanged()V

    goto :goto_14

    :cond_9
    if-eqz p2, :cond_14

    .line 403
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->updateItem(I)V

    :cond_14
    :goto_14
    return-void
.end method

.method public setSystemTime(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->mSystemTime:Ljava/lang/String;

    return-void
.end method

.method public updateItem(I)V
    .registers 3

    .line 341
    invoke-virtual {p0}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-le v0, p1, :cond_9

    .line 342
    invoke-virtual {p0, p1}, Lcom/keephealth/android/base/refresh/BaseRecyclerAdapter;->notifyItemChanged(I)V

    :cond_9
    return-void
.end method
