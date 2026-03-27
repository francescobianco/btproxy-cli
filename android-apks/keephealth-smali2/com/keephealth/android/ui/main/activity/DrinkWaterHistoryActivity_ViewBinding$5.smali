.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DrinkWaterHistoryActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;)V
    .registers 3

    .line 104
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$5;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$5;->val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->onClick(Landroid/view/View;)V

    return-void
.end method
