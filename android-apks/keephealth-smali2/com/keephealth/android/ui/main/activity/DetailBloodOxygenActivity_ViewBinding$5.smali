.class Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailBloodOxygenActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;)V
    .registers 3

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$5;->this$0:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/DetailBloodOxygenActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
