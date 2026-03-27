.class public Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "SportModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field sportModeIcon:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09058c
    .end annotation
.end field

.field sportModeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09058d
    .end annotation
.end field

.field sportModeStatus:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09058e
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

.field viewLine:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0907ba
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;Landroid/view/View;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/SportModeAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/SportModeAdapter;

    .line 59
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
