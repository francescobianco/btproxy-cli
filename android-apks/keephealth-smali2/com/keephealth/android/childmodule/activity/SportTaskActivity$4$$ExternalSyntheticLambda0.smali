.class public final synthetic Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/dialog/WheelViewDialogRadius$OnSelectClick;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;[Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;

    iput-object p2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onSelect(III)V
    .registers 10

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;

    iget-object v1, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4$$ExternalSyntheticLambda0;->f$2:Ljava/util/List;

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/childmodule/activity/SportTaskActivity$4;->lambda$onClickL$0$com-keephealth-android-childmodule-activity-SportTaskActivity$4([Ljava/lang/String;Ljava/util/List;III)V

    return-void
.end method
