.class public Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "MineDialAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/DialDetailB;",
        "Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private imgHeight:I

.field private imgWidth:I

.field private isChange:Z

.field private selectPosition:I


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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p2, -0x1

    .line 124
    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->selectPosition:I

    int-to-float p2, p3

    .line 32
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgWidth:I

    int-to-float p2, p4

    .line 33
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgHeight:I

    .line 39
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p1

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x3

    .line 40
    iget p1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgWidth:I

    if-le p1, p2, :cond_32

    .line 41
    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgWidth:I

    int-to-double p1, p2

    int-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p3, p3

    div-double/2addr v0, p3

    mul-double/2addr p1, v0

    double-to-int p1, p1

    .line 42
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgHeight:I

    :cond_32
    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-MineDialAdapter(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 107
    iget-boolean p3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->isChange:Z

    if-nez p3, :cond_b

    .line 108
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$1$com-keephealth-android-ui-device-adapter-MineDialAdapter(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 112
    iget-boolean p3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->isChange:Z

    if-eqz p3, :cond_b

    .line 113
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->customClickListener:Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnCustomClickListener;->onCustomClick(Landroid/view/View;I)V

    :cond_b
    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 26
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialDetailB;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialDetailB;I)V
    .registers 13

    .line 48
    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->isChange:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_2a

    .line 49
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1c

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_16

    goto :goto_1c

    .line 53
    :cond_16
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 50
    :cond_1c
    :goto_1c
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    const v3, 0x7f0d0020

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_41

    .line 56
    :cond_2a
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->selectPosition:I

    if-ne v0, p3, :cond_3c

    .line 57
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    const v3, 0x7f0d0021

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 58
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_41

    .line 60
    :cond_3c
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_41
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->reLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 64
    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgWidth:I

    const/high16 v4, 0x41a00000    # 20.0f

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 65
    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgHeight:I

    const/high16 v4, 0x42340000    # 45.0f

    iget-object v5, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 66
    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->reLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 69
    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgWidth:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 70
    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgHeight:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 71
    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgWidth:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 75
    iget v3, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->imgHeight:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 76
    iget-object v3, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    if-eqz v0, :cond_97

    goto :goto_9b

    .line 79
    :cond_97
    const-string v0, ""

    sput-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    .line 81
    :goto_9b
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 82
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    const v4, 0x7f08008c

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_b6

    .line 84
    :cond_ae
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    const v4, 0x7f080064

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 87
    :goto_b6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "onNormalBindViewHolder: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  -- "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " -- "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getBgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "getMineSuccess"

    invoke-static {v4, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getType()I

    move-result v0

    const-string v4, ".gif"

    const v5, 0x7f080122

    if-eqz v0, :cond_191

    .line 89
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_121

    .line 90
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v2, v6, v7, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto :goto_144

    .line 92
    :cond_121
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v0, v2, v6, v7, v4}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 94
    :goto_144
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    const v2, 0x7f06015e

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 95
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 97
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getBgUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadPortraitNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1b9

    .line 99
    :cond_175
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getBgUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImageNoCache(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1b9

    .line 102
    :cond_191
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 106
    :goto_1b9
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public sendChange(ZLjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-boolean p1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->isChange:Z

    .line 134
    iput-object p2, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->mList:Ljava/util/List;

    .line 135
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelectPosition(I)V
    .registers 3

    .line 126
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->selectPosition:I

    if-eq v0, p1, :cond_6

    .line 127
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter;->selectPosition:I

    :cond_6
    return-void
.end method
