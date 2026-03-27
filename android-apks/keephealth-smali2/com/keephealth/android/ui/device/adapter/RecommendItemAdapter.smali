.class public Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "RecommendItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/DialDetailB;",
        "Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private imgHeight:I

.field private imgWidth:I

.field private isInActivity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;II)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 46
    iput-boolean p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->isInActivity:Z

    int-to-float p2, p3

    .line 52
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgWidth:I

    int-to-float p2, p4

    .line 53
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgHeight:I

    .line 54
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x3

    .line 55
    iget p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgWidth:I

    if-le p1, p2, :cond_32

    .line 56
    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgWidth:I

    int-to-double p1, p2

    int-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p3, p3

    div-double/2addr v0, p3

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgHeight:I

    :cond_32
    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-RecommendItemAdapter(Lcom/keephealth/android/model/bean/DialDetailB;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 6

    .line 99
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p1

    sget p4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-eq p1, p4, :cond_45

    .line 100
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz p1, :cond_1d

    .line 101
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_45

    .line 103
    :cond_1d
    iget-object p1, p2, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f100234

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->customClickListener:Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-interface {p1, p2, p3}, Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;->onCustomClick(Landroid/view/View;I)V

    :cond_45
    :goto_45
    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 160
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 42
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialDetailB;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialDetailB;I)V
    .registers 12

    .line 67
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 69
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 70
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 72
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const v2, 0x7f080122

    if-eqz v0, :cond_52

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_6d

    .line 75
    :cond_52
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 83
    :cond_6d
    :goto_6d
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    const v2, 0x7f060113

    if-eqz v0, :cond_10e

    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_10e

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    const/4 v4, 0x5

    if-ge v0, v4, :cond_10e

    .line 86
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_af
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 87
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v6

    const-string v7, "key:"

    if-ne v5, v6, :cond_fb

    .line 88
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100234

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\u5df2\u5b89\u88c5"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_10e

    .line 93
    :cond_fb
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jh4343"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_af

    .line 96
    :cond_10e
    :goto_10e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "itemBean.getCustomId():"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "\u539f\u59cbjh4343"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    new-instance v5, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2, p1, p3}, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;Lcom/keephealth/android/model/bean/DialDetailB;Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;I)V

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  DialCenterBActivity.currentDialId:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "hger8"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sget v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-ne v0, v5, :cond_17b

    .line 121
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100231

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 126
    :cond_17b
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p2

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    const-string v2, "   "

    const-string v5, "AppApplication.comeDial2:"

    const-string v6, "  "

    if-ne p2, v0, :cond_21b

    .line 127
    sget-boolean p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    if-eqz p2, :cond_1a4

    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-nez p2, :cond_1a4

    .line 128
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100232

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1be

    .line 129
    :cond_1a4
    sget-boolean p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    if-nez p2, :cond_1be

    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz p2, :cond_1be

    .line 130
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f100235

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_1be
    :goto_1be
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean p3, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "   DialCenterBActivity.currentProgress222:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean p3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean p3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean p3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    sget p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_258

    .line 137
    :cond_21b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v0, Lcom/keephealth/android/app/AppApplication;->itemPosition2:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget p3, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_258
    return-void
.end method

.method public setData()V
    .registers 1

    return-void
.end method

.method public setInActivity(Z)V
    .registers 2

    .line 48
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendItemAdapter;->isInActivity:Z

    return-void
.end method
