.class Lcom/keephealth/android/util/RestartApp$MyJobSchedulerService;
.super Landroid/app/job/JobService;
.source "RestartApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/RestartApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyJobSchedulerService"
.end annotation


# static fields
.field private static mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static setMainIntent(Landroid/content/Intent;)V
    .registers 1

    .line 120
    sput-object p0, Lcom/keephealth/android/util/RestartApp$MyJobSchedulerService;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 3

    .line 126
    sget-object v0, Lcom/keephealth/android/util/RestartApp$MyJobSchedulerService;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/RestartApp$MyJobSchedulerService;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/util/RestartApp$MyJobSchedulerService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method
