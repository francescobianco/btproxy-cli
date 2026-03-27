.class public Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DeviceVibrateModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/VibrateBean;",
        "Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private selectType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/VibrateBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DeviceVibrateModeAdapter(ILandroid/view/View;)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c013f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;

    invoke-direct {v0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 29
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;

    check-cast p2, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;Lcom/keephealth/android/model/bean/VibrateBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;Lcom/keephealth/android/model/bean/VibrateBean;I)V
    .registers 7

    .line 42
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/VibrateBean;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    goto :goto_72

    .line 56
    :cond_14
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100748

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 53
    :cond_27
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1004ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 50
    :cond_3a
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100746

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 47
    :cond_4d
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    .line 44
    :cond_60
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10018e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :goto_72
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->tv_vibrate_status:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/VibrateBean;->getMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 37
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;->selectType:I

    return-void
.end method
