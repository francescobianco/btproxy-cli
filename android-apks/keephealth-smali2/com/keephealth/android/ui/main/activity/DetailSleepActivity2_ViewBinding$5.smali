.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailSleepActivity2_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;)V
    .registers 3

    .line 102
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivity2;->onClick(Landroid/view/View;)V

    return-void
.end method
