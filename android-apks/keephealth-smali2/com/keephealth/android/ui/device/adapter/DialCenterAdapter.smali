.class public Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DialCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/DicalDetail;",
        "Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private imgHeight:I

.field private imgWidth:I

.field private selectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DicalDetail;",
            ">;II)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    int-to-float p2, p3

    .line 29
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgWidth:I

    int-to-float p2, p4

    .line 30
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgHeight:I

    .line 31
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x3

    .line 32
    iget p1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgWidth:I

    if-le p1, p2, :cond_2f

    .line 33
    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgWidth:I

    int-to-double p1, p2

    int-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p3, p3

    div-double/2addr v0, p3

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 34
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgHeight:I

    .line 36
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "imgSize:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DialCenterAdapter(Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 58
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;
    .registers 5

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0118

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 24
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/DicalDetail;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DicalDetail;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DicalDetail;I)V
    .registers 9

    .line 41
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->selectPosition:I

    if-ne v0, p3, :cond_b

    .line 42
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 44
    :cond_b
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    :goto_12
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 47
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 48
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 49
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 53
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 54
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DicalDetail;->getTemplateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/device/activity/DialCenterActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DicalDetail;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 58
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelectPosition(I)V
    .registers 3

    .line 69
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->selectPosition:I

    if-eq v0, p1, :cond_9

    .line 70
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->selectPosition:I

    .line 71
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method
