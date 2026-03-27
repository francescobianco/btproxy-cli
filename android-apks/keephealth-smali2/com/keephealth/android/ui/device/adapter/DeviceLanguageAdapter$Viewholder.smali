.class public Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter$Viewholder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "DeviceLanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/DeviceLanguageAdapter;
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


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 114
    invoke-direct {p0, p1}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
