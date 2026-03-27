.class Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "HealthReminderActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;)V
    .registers 3

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$3;->this$0:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$3;->val$target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity_ViewBinding$3;->val$target:Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/device/activity/HealthReminderActivity;->longSit()V

    return-void
.end method
