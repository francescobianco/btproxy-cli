.class public Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
.super Lcom/keephealth/android/base/BaseAdapter;
.source "ScanDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BaseAdapter<",
        "Lcom/keephealth/android/model/bean/BLEDevice;",
        "Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private connPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/BLEDevice;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/keephealth/android/base/BaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    const/4 p1, -0x1

    .line 78
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connPosition:I

    return-void
.end method


# virtual methods
.method public connecting(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connPosition:I

    .line 81
    invoke-virtual {p0, p1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method synthetic lambda$onNormalBindViewHolder$0$com-keephealth-android-ui-device-adapter-ScanDeviceAdapter(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;ILandroid/view/View;)V
    .registers 4

    .line 69
    iget-object p3, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->mOnItemClickListener:Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->layoutItem:Landroid/widget/RelativeLayout;

    invoke-interface {p3, p1, p2}, Lcom/keephealth/android/base/BaseAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method

.method protected onCreateViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c012d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;-><init>(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected bridge synthetic onNormalBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .registers 4

    .line 32
    check-cast p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;

    check-cast p2, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {p0, p1, p2, p3}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;Lcom/keephealth/android/model/bean/BLEDevice;I)V

    return-void
.end method

.method protected onNormalBindViewHolder(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;Lcom/keephealth/android/model/bean/BLEDevice;I)V
    .registers 8

    .line 43
    iget v0, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->connPosition:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne p3, v0, :cond_27

    .line 44
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvConnect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f01002a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 47
    iget-object v1, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvConnect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 48
    const-string v0, "rre4"

    const-string v1, "\u958b\u59cb\u52a8\u753b"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 50
    :cond_27
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvConnect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget v0, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x46

    if-gt v0, v1, :cond_44

    .line 53
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5f

    .line 54
    :cond_44
    iget v0, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_57

    .line 55
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    const v1, 0x7f0d003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5f

    .line 57
    :cond_57
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvState:Landroid/widget/ImageView;

    const v1, 0x7f0d0040

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :goto_5f
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDeviceName:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {p2}, Lcom/keephealth/android/model/bean/BLEDevice;->isBonded()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 63
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvMac:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10050e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_86

    .line 65
    :cond_7f
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvMac:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :goto_86
    iget-object v0, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDb:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p2, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->tvDb:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object p2, p1, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->layoutItem:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;I)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setData(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/BLEDevice;",
            ">;I)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->mList:Ljava/util/List;

    .line 39
    invoke-virtual {p0}, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;->notifyDataSetChanged()V

    return-void
.end method
