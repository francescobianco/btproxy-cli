.class public Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "SportModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;,
        Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
        "Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/device/bean/SportModeBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getmClickListener()Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;

    return-object v0
.end method

.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-SportModeAdapter(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;ILcom/keephealth/android/ui/device/bean/SportModeBean;Landroid/view/View;)V
    .registers 5

    .line 34
    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->isSportStaus()Z

    move-result p3

    invoke-interface {p4, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;->onStatusClick(Landroid/view/View;IZ)V

    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-device-adapter-SportModeAdapter(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;ILcom/keephealth/android/ui/device/bean/SportModeBean;Landroid/view/View;)V
    .registers 5

    .line 35
    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->isSportStaus()Z

    move-result p3

    invoke-interface {p4, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;->onStatusClick(Landroid/view/View;IZ)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0136

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 20
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/SportModeBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/SportModeBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/SportModeBean;I)V
    .registers 6

    .line 27
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->getSportRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->getSportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/SportModeBean;->isSportStaus()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 30
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    const v1, 0x7f0d0267

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_29

    .line 32
    :cond_21
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    const v1, 0x7f0d0260

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    :goto_29
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;ILcom/keephealth/android/ui/device/bean/SportModeBean;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    new-instance v1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;ILcom/keephealth/android/ui/device/bean/SportModeBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_4f

    .line 37
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->viewLine:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55

    .line 39
    :cond_4f
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->viewLine:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_55
    return-void
.end method

.method public setmClickListener(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;->mClickListener:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$OnStatusClickListener;

    return-void
.end method
