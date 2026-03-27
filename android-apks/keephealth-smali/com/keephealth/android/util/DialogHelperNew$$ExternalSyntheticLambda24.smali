.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/keephealth/android/views/wheel/NewWheelView;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$3:Lcom/keephealth/android/views/wheel/NewWheelView;

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 11

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda24;->f$3:Lcom/keephealth/android/views/wheel/NewWheelView;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$initSportTargetPicker$3(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;II)V

    return-void
.end method
