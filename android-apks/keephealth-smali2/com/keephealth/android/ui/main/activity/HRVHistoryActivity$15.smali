.class Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$15;
.super Lcom/keephealth/android/childmodule/ClickManagerListener;
.source "HRVHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 2

    .line 664
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    invoke-direct {p0}, Lcom/keephealth/android/childmodule/ClickManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected onClickL(Landroid/view/View;)V
    .registers 2

    .line 667
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$15;->this$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    # invokes: Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->showHrvKnow()V
    invoke-static {p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->access$1000(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V

    return-void
.end method
