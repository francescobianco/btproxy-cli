.class public final synthetic Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity$$ExternalSyntheticLambda1;->f$0:Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;

    check-cast p1, Lcom/keephealth/android/viewmodel/HRVDataBean;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/activity/HRVHistoryActivity;->lambda$createObserver$1$com-keephealth-android-ui-main-activity-HRVHistoryActivity(Lcom/keephealth/android/viewmodel/HRVDataBean;)V

    return-void
.end method
