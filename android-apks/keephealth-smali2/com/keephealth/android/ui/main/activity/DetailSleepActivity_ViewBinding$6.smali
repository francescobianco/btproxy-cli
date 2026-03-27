.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailSleepActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;)V
    .registers 3

    .line 109
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$6;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$6;->val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 112
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity_ViewBinding$6;->val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity;->changeNextDay()V

    return-void
.end method
