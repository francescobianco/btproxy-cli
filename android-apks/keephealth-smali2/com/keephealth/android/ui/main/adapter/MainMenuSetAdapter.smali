.class public Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "MainMenuSetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;,
        Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
        "Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/main/bean/MainMenuSet;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getmClickListener()Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->mClickListener:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;

    return-object v0
.end method

.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-main-adapter-MainMenuSetAdapter(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;ILcom/keephealth/android/ui/main/bean/MainMenuSet;Landroid/view/View;)V
    .registers 5

    .line 32
    iget-object p4, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->mClickListener:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result p3

    invoke-interface {p4, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;->onStatusClick(Landroid/view/View;IZ)V

    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-main-adapter-MainMenuSetAdapter(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;ILcom/keephealth/android/ui/main/bean/MainMenuSet;Landroid/view/View;)V
    .registers 5

    .line 33
    iget-object p4, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->mClickListener:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result p3

    invoke-interface {p4, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;->onStatusClick(Landroid/view/View;IZ)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 18
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0136

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 18
    check-cast p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/main/bean/MainMenuSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;Lcom/keephealth/android/ui/main/bean/MainMenuSet;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;Lcom/keephealth/android/ui/main/bean/MainMenuSet;I)V
    .registers 7

    .line 25
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->getMenuName()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 27
    invoke-virtual {p2}, Lcom/keephealth/android/ui/main/bean/MainMenuSet;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 28
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    const v2, 0x7f0d0267

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_27

    .line 30
    :cond_1f
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    const v2, 0x7f0d0260

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 32
    :goto_27
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;ILcom/keephealth/android/ui/main/bean/MainMenuSet;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->sportModeStatus:Landroid/widget/ImageView;

    new-instance v2, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;ILcom/keephealth/android/ui/main/bean/MainMenuSet;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object p2, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_4b

    .line 35
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->viewLine:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51

    .line 37
    :cond_4b
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$ViewHolder;->viewLine:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_51
    return-void
.end method

.method public setmClickListener(Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter;->mClickListener:Lcom/keephealth/android/ui/main/adapter/MainMenuSetAdapter$OnStatusClickListener;

    return-void
.end method
