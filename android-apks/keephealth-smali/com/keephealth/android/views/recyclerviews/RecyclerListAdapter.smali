.class public Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecyclerListAdapter.java"

# interfaces
.implements Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;,
        Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;,
        Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;",
        ">;",
        "Lcom/keephealth/android/views/recyclerviews/helper/ItemTouchHelperAdapter;"
    }
.end annotation


# static fields
.field private static final STRINGS:[Ljava/lang/String;


# instance fields
.field private isEdit:Z

.field private final mDragStartListener:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mOnDeleContactItemLising:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "One"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Two"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Three"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Four"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Five"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Six"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Seven"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Eight"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Nine"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ten"

    aput-object v2, v0, v1

    sput-object v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mItems:Ljava/util/List;

    .line 68
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mDragStartListener:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;

    .line 69
    iput-object p2, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mList:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "gg43e"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mDragStartListener:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnStartDragListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;)Ljava/util/List;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 135
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 35
    check-cast p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->onBindViewHolder(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;I)V
    .registers 5

    .line 97
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->getPhonePerson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->tv_phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;

    invoke-virtual {v1}, Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->handleView:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$1;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-boolean v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->isEdit:Z

    if-eqz v0, :cond_3c

    .line 110
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->img_contact:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_48

    .line 113
    :cond_3c
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->img_contact:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->handleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    :goto_48
    iget-object p1, p1, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;->img_contact:Landroid/widget/ImageView;

    new-instance v0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$2;-><init>(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;
    .registers 5

    .line 91
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0122

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    new-instance p2, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;

    invoke-direct {p2, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$ItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onItemDismiss(I)V
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onItemMove(II)V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyItemMoved(II)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/greendao/bean/UserInfoBean$SosInfo;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "list.size6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ggr33e"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyDataSetChanged()V

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "list.size4:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEditData(Z)V
    .registers 2

    .line 84
    iput-boolean p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->isEdit:Z

    .line 85
    invoke-virtual {p0}, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnDeleContactItemLising(Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter;->mOnDeleContactItemLising:Lcom/keephealth/android/views/recyclerviews/RecyclerListAdapter$OnDeleContactItemLising;

    return-void
.end method
