.class Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "WomenHealthOldActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;)V
    .registers 3

    .line 70
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$3;->this$0:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$3;->val$target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity_ViewBinding$3;->val$target:Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/activity/WomenHealthOldActivity;->moodOnClick(Landroid/view/View;)V

    return-void
.end method
