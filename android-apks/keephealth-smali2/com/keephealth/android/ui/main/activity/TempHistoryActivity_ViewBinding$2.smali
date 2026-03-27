.class Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TempHistoryActivity_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$2;->this$0:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 61
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity_ViewBinding$2;->val$target:Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/TempHistoryActivity;->changeNextDay()V

    return-void
.end method
