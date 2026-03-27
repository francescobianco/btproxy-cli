.class Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CardQrCodeActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;)V
    .registers 3

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/activity/CardQrCodeActivity;->openLight(Landroid/view/View;)V

    return-void
.end method
