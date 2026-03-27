.class public Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "SelectRemindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Ljava/lang/String;",
        "Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 27
    iput p3, p0, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;->mPosition:I

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-SelectRemindAdapter(Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 5

    .line 39
    iget-object p3, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 23
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;Ljava/lang/String;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;Ljava/lang/String;I)V
    .registers 5

    .line 32
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->weekDayName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget p2, p0, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;->mPosition:I

    if-ne p2, p3, :cond_10

    .line 34
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 36
    :cond_10
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :goto_17
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter;Lcom/keephealth/android/ui/device/adapter/SelectRemindAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
