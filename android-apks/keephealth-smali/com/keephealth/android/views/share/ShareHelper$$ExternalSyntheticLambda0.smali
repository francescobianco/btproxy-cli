.class public final synthetic Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# instance fields
.field public final synthetic f$0:Lcom/keephealth/android/views/share/ShareHelper;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:Lcom/google/android/gms/maps/MapView;

.field public final synthetic f$3:Z

.field public final synthetic f$4:[Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/keephealth/android/views/share/ShareHelper;Landroid/view/ViewGroup;Lcom/google/android/gms/maps/MapView;Z[Landroid/view/View;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/views/share/ShareHelper;

    iput-object p2, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/gms/maps/MapView;

    iput-boolean p4, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$3:Z

    iput-object p5, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$4:[Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onSnapshotReady(Landroid/graphics/Bitmap;)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$0:Lcom/keephealth/android/views/share/ShareHelper;

    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$2:Lcom/google/android/gms/maps/MapView;

    iget-boolean v3, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$3:Z

    iget-object v4, p0, Lcom/keephealth/android/views/share/ShareHelper$$ExternalSyntheticLambda0;->f$4:[Landroid/view/View;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/keephealth/android/views/share/ShareHelper;->lambda$shotWithMapView$2$com-keephealth-android-views-share-ShareHelper(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/MapView;Z[Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void
.end method
