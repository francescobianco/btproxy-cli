.class public Lcom/keephealth/android/util/baidumap/StepService$StepBinder;
.super Landroid/os/Binder;
.source "StepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/baidumap/StepService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StepBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/util/baidumap/StepService;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/util/baidumap/StepService;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/keephealth/android/util/baidumap/StepService$StepBinder;->this$0:Lcom/keephealth/android/util/baidumap/StepService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/keephealth/android/util/baidumap/StepService;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/util/baidumap/StepService$StepBinder;->this$0:Lcom/keephealth/android/util/baidumap/StepService;

    return-object v0
.end method
