.class public final synthetic Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/dialog/WheelViewDialog$OnSelectClick;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;[Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput p3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onSelect(III)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/String;

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$3;->lambda$onClickL$0$com-keephealth-android-childmodule-activity-SportTaskActivity$3([Ljava/lang/String;I[Ljava/lang/String;III)V

    return-void
.end method
