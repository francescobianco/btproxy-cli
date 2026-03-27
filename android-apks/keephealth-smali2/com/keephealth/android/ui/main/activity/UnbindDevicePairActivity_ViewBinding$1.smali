.class Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "UnbindDevicePairActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;)V
    .registers 3

    .line 33
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 36
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/UnbindDevicePairActivity;->onKnow()V

    return-void
.end method
