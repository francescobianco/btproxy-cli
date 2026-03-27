.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$9;
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

    .line 136
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$9;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$9;->val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 139
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity_ViewBinding$9;->val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity;->setGoal()V

    return-void
.end method
