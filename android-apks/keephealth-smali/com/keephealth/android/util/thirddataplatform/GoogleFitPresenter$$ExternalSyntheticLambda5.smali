.class public final synthetic Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda5;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lambda$uploadStep$3$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Ljava/lang/Exception;)V

    return-void
.end method
