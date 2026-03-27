.class Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$12;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DeviceFragmentNew_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;)V
    .registers 3

    .line 181
    iput-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$12;->this$0:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$12;->val$target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 184
    iget-object p1, p0, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew_ViewBinding$12;->val$target:Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/fragment/DeviceFragmentNew;->alarmEdit()V

    return-void
.end method
