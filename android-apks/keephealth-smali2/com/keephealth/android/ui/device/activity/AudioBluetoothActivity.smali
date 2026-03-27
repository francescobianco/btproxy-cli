.class public Lcom/keephealth/android/ui/device/activity/AudioBluetoothActivity;
.super Lcom/keephealth/android/base/BaseActivity;
.source "AudioBluetoothActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .registers 2

    const v0, 0x7f0c0022

    return v0
.end method

.method protected initView()V
    .registers 3

    .line 16
    invoke-super {p0}, Lcom/keephealth/android/base/BaseActivity;->initView()V

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/AudioBluetoothActivity;->bgView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
