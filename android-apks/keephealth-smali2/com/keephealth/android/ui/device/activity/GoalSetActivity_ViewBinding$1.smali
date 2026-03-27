.class Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "GoalSetActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;Lcom/keephealth/android/ui/device/activity/GoalSetActivity;)V
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$1;->this$0:Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/GoalSetActivity_ViewBinding$1;->val$target:Lcom/keephealth/android/ui/device/activity/GoalSetActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/device/activity/GoalSetActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
