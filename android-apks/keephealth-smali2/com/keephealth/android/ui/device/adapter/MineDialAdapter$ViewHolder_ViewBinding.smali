.class public Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "MineDialAdapter$ViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;Landroid/view/View;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;

    .line 22
    const-string v0, "field \'center_bg\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900d9

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    .line 23
    const-string v0, "field \'center_theme\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900dd

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    .line 24
    const-string v0, "field \'center_select\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f0900dc

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    .line 25
    const-string v0, "field \'reLayout\'"

    const-class v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f09048f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->reLayout:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 31
    iget-object v0, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder_ViewBinding;->target:Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;

    .line 35
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_bg:Landroid/widget/ImageView;

    .line 36
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_theme:Landroid/widget/ImageView;

    .line 37
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->center_select:Landroid/widget/ImageView;

    .line 38
    iput-object v1, v0, Lcom/keephealth/android/ui/device/adapter/MineDialAdapter$ViewHolder;->reLayout:Landroid/widget/RelativeLayout;

    return-void

    .line 32
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
