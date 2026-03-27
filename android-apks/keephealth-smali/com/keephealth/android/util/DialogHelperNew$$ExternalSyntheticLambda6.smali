.class public final synthetic Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/keephealth/android/views/wheel/OnWheelChangedNewListener;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:[Ljava/lang/String;

.field public final synthetic f$2:Lcom/keephealth/android/views/wheel/NewWheelView;

.field public final synthetic f$3:Lcom/keephealth/android/views/wheel/NewWheelView;

.field public final synthetic f$4:[Ljava/lang/String;

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;[Ljava/lang/String;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;[Ljava/lang/String;I)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$1:[Ljava/lang/String;

    iput-object p3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$2:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object p4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$3:Lcom/keephealth/android/views/wheel/NewWheelView;

    iput-object p5, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$4:[Ljava/lang/String;

    iput p6, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$5:I

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/keephealth/android/views/wheel/NewWheelView;II)V
    .registers 13

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$2:Lcom/keephealth/android/views/wheel/NewWheelView;

    iget-object v3, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$3:Lcom/keephealth/android/views/wheel/NewWheelView;

    iget-object v4, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$4:[Ljava/lang/String;

    iget v5, p0, Lcom/keephealth/android/util/DialogHelperNew$$ExternalSyntheticLambda6;->f$5:I

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v0 .. v8}, Lcom/keephealth/android/util/DialogHelperNew;->lambda$showWheelHeightMileDialog$21([Ljava/lang/String;[Ljava/lang/String;Lcom/keephealth/android/views/wheel/NewWheelView;Lcom/keephealth/android/views/wheel/NewWheelView;[Ljava/lang/String;ILcom/keephealth/android/views/wheel/NewWheelView;II)V

    return-void
.end method
