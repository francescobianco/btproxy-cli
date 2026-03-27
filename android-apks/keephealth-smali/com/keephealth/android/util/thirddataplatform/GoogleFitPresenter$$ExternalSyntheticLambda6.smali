.class public final synthetic Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

.field public final synthetic f$1:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;Lcom/google/android/gms/fitness/data/DataType;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    iput-object p2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;->f$1:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda6;->f$1:Lcom/google/android/gms/fitness/data/DataType;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lambda$subscribe$0$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Lcom/google/android/gms/fitness/data/DataType;Ljava/lang/Void;)V

    return-void
.end method
