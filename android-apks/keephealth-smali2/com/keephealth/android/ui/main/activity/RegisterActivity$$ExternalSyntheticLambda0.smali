.class public final synthetic Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

.field public final synthetic f$1:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/ui/main/activity/RegisterActivity;Landroid/app/Dialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iput-object p2, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/ui/main/activity/RegisterActivity;

    iget-object v1, p0, Lcom/keephealth/android/ui/main/activity/RegisterActivity$$ExternalSyntheticLambda0;->f$1:Landroid/app/Dialog;

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/ui/main/activity/RegisterActivity;->lambda$showWebViewDialog$1$com-keephealth-android-ui-main-activity-RegisterActivity(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
