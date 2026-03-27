.class public final synthetic Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda2;->f$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity$$ExternalSyntheticLambda2;->f$0:Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/activity/DailyActivityTaskActivity;->lambda$createObserver$2$com-keephealth-android-childmodule-activity-DailyActivityTaskActivity(Ljava/lang/String;)V

    return-void
.end method
