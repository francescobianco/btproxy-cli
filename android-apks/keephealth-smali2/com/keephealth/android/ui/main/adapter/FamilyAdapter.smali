.class public Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "FamilyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/FamilyBean;",
        "Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;",
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
            "Lcom/keephealth/android/model/bean/FamilyBean;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-main-adapter-FamilyAdapter(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 30
    iget-object p3, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 40
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance v0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 21
    check-cast p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/FamilyBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;Lcom/keephealth/android/model/bean/FamilyBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;Lcom/keephealth/android/model/bean/FamilyBean;I)V
    .registers 8

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/ui/mine/activity/FamilyActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/mine/activity/FamilyActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->familyAvatar:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/FamilyBean;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 29
    iget-object v0, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->familyName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p2, p0, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter;->mList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p3, p2, :cond_43

    .line 32
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->viewLine:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_49

    .line 34
    :cond_43
    iget-object p1, p1, Lcom/keephealth/android/ui/main/adapter/FamilyAdapter$ViewHolder;->viewLine:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_49
    return-void
.end method
