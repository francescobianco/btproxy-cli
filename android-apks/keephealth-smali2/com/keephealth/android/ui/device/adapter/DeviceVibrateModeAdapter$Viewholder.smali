.class public Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter$Viewholder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "DeviceVibrateModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/DeviceVibrateModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Viewholder"
.end annotation


# instance fields
.field ivSelect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902cc
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09068d
    .end annotation
.end field

.field tv_vibrate_status:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090790
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
