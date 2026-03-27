.class Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DialCenterBActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;)V
    .registers 3

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 42
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/DialCenterBActivity;->checkRecommend()V

    return-void
.end method
