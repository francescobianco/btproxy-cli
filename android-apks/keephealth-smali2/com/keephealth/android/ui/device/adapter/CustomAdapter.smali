.class public Lcom/keephealth/android/ui/device/adapter/CustomAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "CustomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/DialDetailB;",
        "Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;",
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
            "Lcom/keephealth/android/model/bean/DialDetailB;",
            ">;II)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    int-to-float p2, p3

    .line 31
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgWidth:I

    int-to-float p2, p4

    .line 32
    invoke-static {p2, p1}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgHeight:I

    .line 33
    invoke-static {p1}, Lcom/keephealth/android/util/ScreenUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    .line 34
    iget p2, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgHeight:I

    if-le p2, p1, :cond_28

    .line 35
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgHeight:I

    int-to-double p1, p1

    int-to-double v0, p4

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    int-to-double p3, p3

    div-double/2addr v0, p3

    div-double/2addr p1, v0

    double-to-int p1, p1

    .line 36
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgWidth:I

    :cond_28
    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-CustomAdapter(Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 67
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 26
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0119

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/CustomAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 26
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/DialDetailB;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialDetailB;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;Lcom/keephealth/android/model/bean/DialDetailB;I)V
    .registers 8

    .line 42
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->selectPosition:I

    if-ne v0, p3, :cond_b

    .line 43
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_12

    .line 45
    :cond_b
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    :goto_12
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->reLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 48
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgWidth:I

    const/high16 v2, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 49
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgHeight:I

    const/high16 v2, 0x42340000    # 45.0f

    iget-object v3, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ScreenUtil;->dp2px(FLandroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 50
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->reLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 54
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 55
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 58
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 59
    iget v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->imgHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 60
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    sget-object v0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->shape:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 62
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_7e

    .line 64
    :cond_76
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 66
    :goto_7e
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/base/BaseActivity;->getImageLoader()Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setPlaceholder(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ImageLoadUtil;->setError(I)Lcom/keephealth/android/util/ImageLoadUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/DialDetailB;->getPicUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, v2, p2}, Lcom/keephealth/android/util/ImageLoadUtil;->loadRectImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 67
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/CustomAdapter;Lcom/keephealth/android/ui/device/adapter/CustomAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSelectPosition(I)V
    .registers 3

    .line 78
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->selectPosition:I

    if-eq v0, p1, :cond_9

    .line 79
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->selectPosition:I

    .line 80
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/CustomAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method
