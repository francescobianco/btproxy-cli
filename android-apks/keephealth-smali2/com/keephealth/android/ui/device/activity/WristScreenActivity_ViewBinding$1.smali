.class Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WristScreenActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WristScreenActivity;)V
    .registers 3

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 43
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/WristScreenActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/WristScreenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/WristScreenActivity;->selecStatrTime()V

    return-void
.end method
