.class Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "DetailSleepActivityNew_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;-><init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;

.field final synthetic val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$6;->this$0:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$6;->val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 84
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew_ViewBinding$6;->val$target:Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/DetailSleepActivityNew;->changePreDay()V

    return-void
.end method
