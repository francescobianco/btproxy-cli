.class public Lcom/keephealth/android/util/AsyncTaskUtil$AsyncTaskCallBackAdapter;
.super Ljava/lang/Object;
.source "AsyncTaskUtil.java"

# interfaces
.implements Lcom/keephealth/android/util/AsyncTaskUtil$IAsyncTaskCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/AsyncTaskUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncTaskCallBackAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method
