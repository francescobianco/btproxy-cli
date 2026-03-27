.class public Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "SymptomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/SymptomBean;",
        "Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;",
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
            "Lcom/keephealth/android/ui/device/bean/SymptomBean;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-SymptomAdapter(Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 5

    .line 29
    iget-object p3, p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x8

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;
    .registers 5

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c012f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 19
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/SymptomBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/SymptomBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/SymptomBean;I)V
    .registers 6

    .line 26
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;->weekDayName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/SymptomBean;->getSympName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;->isSelect:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/SymptomBean;->isSelect()Z

    move-result p2

    if-eqz p2, :cond_13

    const/4 p2, 0x0

    goto :goto_15

    :cond_13
    const/16 p2, 0x8

    :goto_15
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/SymptomAdapter;Lcom/keephealth/android/ui/device/adapter/SymptomAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
