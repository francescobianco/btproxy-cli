.class Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DrinkWaterHistoryActivity2_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$8;->this$0:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$8;->val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 135
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2_ViewBinding$8;->val$target:Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DrinkWaterHistoryActivity2;->setGoal()V

    return-void
.end method
