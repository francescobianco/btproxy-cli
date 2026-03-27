.class public Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "DeviceSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field ivStart:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902d1
    .end annotation
.end field

.field rlClickView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904e1
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906fc
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;Landroid/view/View;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/DeviceSettingAdapter;

    .line 105
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
