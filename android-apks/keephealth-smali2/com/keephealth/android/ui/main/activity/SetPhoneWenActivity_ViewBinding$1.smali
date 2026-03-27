.class Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SetPhoneWenActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;)V
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 38
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/SetPhoneWenActivity;->tvGoset()V

    return-void
.end method
