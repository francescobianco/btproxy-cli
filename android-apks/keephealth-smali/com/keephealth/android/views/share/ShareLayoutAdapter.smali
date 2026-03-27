.class public Lcom/keephealth/android/views/share/ShareLayoutAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "ShareLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/views/share/ShareItem;",
        "Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/views/share/ShareItem;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-views-share-ShareLayoutAdapter(ILandroid/view/View;)V
    .registers 4

    .line 29
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareLayoutAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareLayoutAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0130

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 35
    new-instance v0, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;-><init>(Lcom/keephealth/android/views/share/ShareLayoutAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 20
    check-cast p1, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/views/share/ShareItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/views/share/ShareLayoutAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;Lcom/keephealth/android/views/share/ShareItem;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;Lcom/keephealth/android/views/share/ShareItem;I)V
    .registers 6

    .line 27
    iget-object v0, p1, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->imgIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/share/ShareItem;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p1, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/views/share/ShareItem;->getIconName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p1, Lcom/keephealth/android/views/share/ShareLayoutAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/views/share/ShareLayoutAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/views/share/ShareLayoutAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/views/share/ShareLayoutAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
