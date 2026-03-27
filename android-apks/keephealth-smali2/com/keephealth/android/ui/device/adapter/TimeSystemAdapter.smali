.class public Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "TimeSystemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/TimeSystemBean;",
        "Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private selectType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/TimeSystemBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-TimeSystemAdapter(ILandroid/view/View;)V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 41
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;

    invoke-direct {v0, p1}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 20
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/TimeSystemBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/TimeSystemBean;I)V
    .registers 6

    .line 30
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/TimeSystemBean;->getType()I

    move-result p2

    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->selectType:I

    if-ne p2, v0, :cond_18

    .line 32
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    .line 34
    :cond_18
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;->ivSelect:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 36
    :goto_1f
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 26
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/TimeSystemAdapter;->selectType:I

    return-void
.end method
