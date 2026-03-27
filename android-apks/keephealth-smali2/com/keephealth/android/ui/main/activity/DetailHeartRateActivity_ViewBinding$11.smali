.class Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$11;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailHeartRateActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;)V
    .registers 3

    .line 147
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$11;->this$0:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$11;->val$target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity_ViewBinding$11;->val$target:Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailHeartRateActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
