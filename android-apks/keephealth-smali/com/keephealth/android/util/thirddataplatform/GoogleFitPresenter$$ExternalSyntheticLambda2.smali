.class public final synthetic Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

.field public final synthetic f$1:Lcom/google/android/gms/fitness/HistoryClient;

.field public final synthetic f$2:Lcom/google/android/gms/fitness/data/DataSet;

.field public final synthetic f$3:Lcom/google/android/gms/fitness/data/DataSet;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;Lcom/google/android/gms/fitness/HistoryClient;Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSet;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    iput-object p2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/gms/fitness/HistoryClient;

    iput-object p3, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/fitness/data/DataSet;

    iput-object p4, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$3:Lcom/google/android/gms/fitness/data/DataSet;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$0:Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;

    iget-object v1, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$1:Lcom/google/android/gms/fitness/HistoryClient;

    iget-object v2, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$2:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object v3, p0, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter$$ExternalSyntheticLambda2;->f$3:Lcom/google/android/gms/fitness/data/DataSet;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/keephealth/android/util/thirddataplatform/GoogleFitPresenter;->lambda$uploadStep$6$com-keephealth-android-util-thirddataplatform-GoogleFitPresenter(Lcom/google/android/gms/fitness/HistoryClient;Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/DataSet;Ljava/lang/Void;)V

    return-void
.end method
