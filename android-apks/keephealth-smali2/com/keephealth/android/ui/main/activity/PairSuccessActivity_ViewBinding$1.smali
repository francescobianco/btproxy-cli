.class Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "PairSuccessActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;)V
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/PairSuccessActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
