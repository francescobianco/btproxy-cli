.class Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DeviceConnectStatusActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;)V
    .registers 3

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 37
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DeviceConnectStatusActivity;->onKnow()V

    return-void
.end method
