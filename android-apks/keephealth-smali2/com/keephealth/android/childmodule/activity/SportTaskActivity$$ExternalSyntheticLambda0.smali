.class public final synthetic Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity;->lambda$createObserver$0$com-keephealth-android-childmodule-activity-SportTaskActivity(Ljava/lang/String;)V

    return-void
.end method
