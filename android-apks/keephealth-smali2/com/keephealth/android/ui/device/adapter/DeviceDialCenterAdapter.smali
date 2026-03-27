.class public Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DeviceDialCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;",
        "Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;",
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
            "Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;",
            ">;II)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    int-to-float p2, p3

    .line 32
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgWidth:I

    int-to-float p2, p4

    .line 33
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgHeight:I

    .line 34
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x3

    .line 35
    iget p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgWidth:I

    if-le p1, p2, :cond_36

    .line 36
    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgWidth:I

    int-to-double p1, p2

    int-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p3, p3

    div-double/2addr v0, p3

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 37
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgHeight:I

    .line 39
    :cond_36
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "imgSize:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DeviceDialCenterAdapter(ILandroid/view/View;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_9
    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 27
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0116

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 27
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;I)V
    .registers 11

    .line 44
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 45
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 46
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 47
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 50
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 51
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 52
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNormalBindViewHolder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8868\u76d8\u4e2d\u5fc3"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".gif"

    const v2, 0x7f080122

    if-eqz v0, :cond_ab

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    goto :goto_ab

    .line 62
    :cond_66
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_f0

    .line 55
    :cond_ab
    :goto_ab
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e7

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c3

    goto :goto_e7

    .line 59
    :cond_c3
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_f0

    .line 57
    :cond_e7
    :goto_e7
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->getBackgroundId()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    :goto_f0
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelectPosition(I)V
    .registers 3

    .line 81
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->selectPosition:I

    if-eq v0, p1, :cond_9

    .line 82
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->selectPosition:I

    .line 83
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/DeviceDialCenterAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method
