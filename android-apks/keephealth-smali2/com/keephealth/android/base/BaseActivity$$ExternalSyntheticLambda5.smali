.class public final synthetic Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/base/BaseActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/base/BaseActivity$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/base/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/base/BaseActivity;->lambda$showScanDialog$4$com-keephealth-android-base-BaseActivity(Landroid/view/View;)V

    return-void
.end method
