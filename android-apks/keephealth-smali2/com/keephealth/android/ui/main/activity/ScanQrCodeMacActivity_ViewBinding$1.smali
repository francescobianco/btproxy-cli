.class Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "ScanQrCodeMacActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 41
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/ScanQrCodeMacActivity;->selectPhoto()V

    return-void
.end method
