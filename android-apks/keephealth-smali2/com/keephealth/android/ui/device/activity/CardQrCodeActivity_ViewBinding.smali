.class public Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;
.super Ljava/lang/Object;
.source "CardQrCodeActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

.field private view7f0902b5:Landroid/view/View;

.field private view7f0902c3:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V
    .registers 3

    .line 25
    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;Landroid/view/View;)V
    .registers 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    .line 33
    const-string v0, "field \'mZXingView\'"

    const-class v1, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    const v2, 0x7f0907f0

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 34
    const-string v0, "field \'ivBack\'"

    const-class v1, Landroid/widget/ImageView;

    const v2, 0x7f09029f

    invoke-static {p2, v2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->ivBack:Landroid/widget/ImageView;

    .line 35
    const-string v0, "field \'ivPhoto\' and method \'selectPhoto\'"

    const v1, 0x7f0902c3

    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 36
    const-string v2, "field \'ivPhoto\'"

    const-class v3, Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->ivPhoto:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->view7f0902c3:Landroid/view/View;

    .line 38
    new-instance v1, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$1;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902b5

    .line 44
    const-string v1, "method \'openLight\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 45
    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->view7f0902b5:Landroid/view/View;

    .line 46
    new-instance v0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$2;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .registers 3

    .line 57
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    .line 61
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->mZXingView:Lcn/bingoogolapple/qrcode/zxing/ZXingView;

    .line 62
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->ivBack:Landroid/widget/ImageView;

    .line 63
    iput-object v1, v0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->ivPhoto:Landroid/widget/ImageView;

    .line 65
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->view7f0902c3:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->view7f0902c3:Landroid/view/View;

    .line 67
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->view7f0902b5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iput-object v1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;->view7f0902b5:Landroid/view/View;

    return-void

    .line 58
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
