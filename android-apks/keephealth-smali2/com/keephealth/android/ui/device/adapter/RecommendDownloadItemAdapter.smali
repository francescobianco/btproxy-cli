.class public Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "RecommendDownloadItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;,
        Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field protected customClickListener:Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;

.field private imgHeight:I

.field private imgWidth:I

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;II)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;II)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    int-to-float v0, p3

    .line 56
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->imgWidth:I

    int-to-float v0, p4

    .line 57
    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->imgHeight:I

    .line 58
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {v1, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x3

    .line 59
    iget p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->imgWidth:I

    if-le p1, v0, :cond_37

    .line 60
    iput v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->imgWidth:I

    int-to-double v0, v0

    int-to-double v2, p4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    int-to-double p3, p3

    div-double/2addr v2, p3

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 61
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->imgHeight:I

    .line 63
    :cond_37
    invoke-virtual {p0, p2}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$onBindViewHolder$0$com-keephealth-android-ui-device-adapter-RecommendDownloadItemAdapter(ILcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;Landroid/view/View;)V
    .registers 6

    .line 106
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p3}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result p3

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-eq p3, v0, :cond_4d

    .line 107
    sget-boolean p3, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz p3, :cond_25

    .line 108
    iget-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100535

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showCustomToast(Ljava/lang/String;)V

    goto :goto_4d

    .line 110
    :cond_25
    iget-object p3, p2, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100234

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4d

    .line 111
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->customClickListener:Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;

    iget-object p2, p2, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-interface {p3, p2, p1}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;->onCustomClick(Landroid/view/View;I)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 39
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->onBindViewHolder(Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;I)V
    .registers 11

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v1}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->error(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-static {v1}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/BaseRequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/bumptech/glide/load/Transformation;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/keephealth/android/util/GlideRoundTransform;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Lcom/keephealth/android/util/GlideRoundTransform;-><init>(I)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->transform([Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 91
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    const v1, 0x7f060113

    const-string v4, "jh4343"

    if-eqz v0, :cond_e0

    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_e0

    .line 94
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->dialInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 95
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v7}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v7

    if-ne v6, v7, :cond_cd

    .line 96
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100234

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_e0

    .line 100
    :cond_cd
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 103
    :cond_e0
    :goto_e0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "itemBean.getCustomId():"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v6}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->progress:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, p2, p1}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;ILcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v4}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

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

    .line 126
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sget v5, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentDialId:I

    if-ne v0, v5, :cond_169

    .line 127
    invoke-static {}, Lcom/keephealth/android/util/QthreeUtils;->isQ32Device()Z

    move-result v0

    if-nez v0, :cond_169

    .line 128
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100231

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :cond_169
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DialDetailB;->getCustomId()I

    move-result v0

    sget v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    const-string v5, "   "

    const-string v6, "AppApplication.comeDial2:"

    const-string v7, "  "

    if-ne v0, v1, :cond_211

    .line 134
    sget-boolean p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    if-eqz p2, :cond_19a

    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-nez p2, :cond_19a

    .line 135
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b4

    .line 136
    :cond_19a
    sget-boolean p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    if-nez p2, :cond_1b4

    sget-boolean p2, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    if-eqz p2, :cond_1b4

    .line 137
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1b4
    :goto_1b4
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->tvStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "   DialCenterBActivity.currentProgress222:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenterTwo:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->progress:Landroid/widget/ProgressBar;

    sget p2, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->currentProgress:I

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_24e

    .line 144
    :cond_211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/keephealth/android/app/AppApplication;->comeDial2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isDownloading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/keephealth/android/app/AppApplication;->itemPosition2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->isInstallingId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_24e
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;
    .registers 5

    .line 77
    iget-object p2, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c018e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 78
    new-instance p2, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$CustomViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setCustomClickListener(Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->customClickListener:Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter$OnCustomClickListener;

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->mData:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/RecommendDownloadItemAdapter;->notifyDataSetChanged()V

    return-void
.end method
