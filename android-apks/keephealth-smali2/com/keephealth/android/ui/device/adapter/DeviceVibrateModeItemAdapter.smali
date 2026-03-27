.class public Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "DeviceVibrateModeItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/VibrateBean;",
        "Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;",
        ">;"
    }
.end annotation


# instance fields
.field private mode:Ljava/lang/String;

.field private selectType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/VibrateBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 34
    iput-object p3, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-DeviceVibrateModeItemAdapter(ILandroid/view/View;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    invoke-interface {v0, p2, p1}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0140

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;

    invoke-direct {v0, p1}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 30
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;

    check-cast p2, Lcom/keephealth/android/model/bean/VibrateBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;Lcom/keephealth/android/model/bean/VibrateBean;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;Lcom/keephealth/android/model/bean/VibrateBean;I)V
    .registers 6

    .line 63
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->mode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->mode:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/VibrateBean;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 64
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;->ivSelect:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_21

    .line 66
    :cond_1b
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;->ivSelect:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    :goto_21
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/VibrateBean;->getMode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$Viewholder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 39
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeItemAdapter;->selectType:I

    return-void
.end method
