.class public Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;
.super Lcom/keephealth/android/base/BaseViewHolder;
.source "DialCenterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field center_bg:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900d9
    .end annotation
.end field

.field center_select:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900dc
    .end annotation
.end field

.field center_theme:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900dd
    .end annotation
.end field

.field final synthetic this$0:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;Landroid/view/View;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter$ViewHolder;->this$0:Lcom/keephealth/android/ui/device/adapter/DialCenterAdapter;

    .line 83
    invoke-direct {p0, p2}, Lcom/keephealth/android/base/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
