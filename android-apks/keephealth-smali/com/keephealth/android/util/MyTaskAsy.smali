.class public Lcom/keephealth/android/util/MyTaskAsy;
.super Landroid/os/AsyncTask;
.source "MyTaskAsy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/keephealth/android/util/MyTaskAsy;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/keephealth/android/util/MyTaskAsy;
    .registers 1

    .line 14
    sget-object v0, Lcom/keephealth/android/util/MyTaskAsy;->instance:Lcom/keephealth/android/util/MyTaskAsy;

    if-nez v0, :cond_b

    .line 15
    new-instance v0, Lcom/keephealth/android/util/MyTaskAsy;

    invoke-direct {v0}, Lcom/keephealth/android/util/MyTaskAsy;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/MyTaskAsy;->instance:Lcom/keephealth/android/util/MyTaskAsy;

    .line 17
    :cond_b
    sget-object v0, Lcom/keephealth/android/util/MyTaskAsy;->instance:Lcom/keephealth/android/util/MyTaskAsy;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 5
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/MyTaskAsy;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 24
    aget-object p1, p1, v0

    .line 27
    const-string p1, "\u5904\u7406\u540e\u7684\u6570\u636e"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 5
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/MyTaskAsy;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
