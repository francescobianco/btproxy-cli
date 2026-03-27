.class Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialCenterEditActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;)V
    .registers 3

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 51
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterEditActivity;->selectBackground()V

    return-void
.end method
