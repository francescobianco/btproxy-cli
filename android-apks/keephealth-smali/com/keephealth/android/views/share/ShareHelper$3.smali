.class Lcom/keephealth/android/views/share/ShareHelper$3;
.super Lcom/keephealth/android/util/AsyncTaskUtil$AsyncTaskCallBackAdapter;
.source "ShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/views/share/ShareHelper;->shotWithMapView(Lcom/google/android/gms/maps/MapView;Lcom/google/android/gms/maps/GoogleMap;Landroid/view/ViewGroup;Z[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/views/share/ShareHelper;

.field final synthetic val$bitmaptemp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/keephealth/android/views/share/ShareHelper;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 258
    iput-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper$3;->this$0:Lcom/keephealth/android/views/share/ShareHelper;

    iput-object p2, p0, Lcom/keephealth/android/views/share/ShareHelper$3;->val$bitmaptemp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/keephealth/android/util/AsyncTaskUtil$AsyncTaskCallBackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    .line 261
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper$3;->this$0:Lcom/keephealth/android/views/share/ShareHelper;

    # getter for: Lcom/keephealth/android/views/share/ShareHelper;->activity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/keephealth/android/views/share/ShareHelper;->access$000(Lcom/keephealth/android/views/share/ShareHelper;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/views/share/ShareHelper$3;->val$bitmaptemp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/keephealth/android/views/share/ShareHelper$3;->this$0:Lcom/keephealth/android/views/share/ShareHelper;

    # getter for: Lcom/keephealth/android/views/share/ShareHelper;->path:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/views/share/ShareHelper;->access$200(Lcom/keephealth/android/views/share/ShareHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/keephealth/android/util/image/BitmapUtil;->saveBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/keephealth/android/views/share/ShareHelper$3;->this$0:Lcom/keephealth/android/views/share/ShareHelper;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/keephealth/android/views/share/ShareHelper;->isShotComplete:Z

    const/4 p1, 0x0

    return-object p1
.end method
