.class public Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "ScanDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field layoutItem:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09030e
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

.field tvConnect:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090634
    .end annotation
.end field

.field tvDb:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090649
    .end annotation
.end field

.field tvDeviceName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090650
    .end annotation
.end field

.field tvMac:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090681
    .end annotation
.end field

.field tvState:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0906e0
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;Landroid/view/View;)V
    .registers 3

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/ScanDeviceAdapter;

    .line 99
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
