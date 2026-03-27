.class public Lcom/keephealth/android/app/LibContext;
.super Ljava/lang/Object;
.source "LibContext.java"


# static fields
.field static libContext:Lcom/keephealth/android/app/LibContext;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/keephealth/android/app/LibContext;

    invoke-direct {v0}, Lcom/keephealth/android/app/LibContext;-><init>()V

    sput-object v0, Lcom/keephealth/android/app/LibContext;->libContext:Lcom/keephealth/android/app/LibContext;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .registers 1

    .line 24
    sget-object v0, Lcom/keephealth/android/app/LibContext;->libContext:Lcom/keephealth/android/app/LibContext;

    iget-object v0, v0, Lcom/keephealth/android/app/LibContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/keephealth/android/app/LibContext;
    .registers 1

    .line 21
    sget-object v0, Lcom/keephealth/android/app/LibContext;->libContext:Lcom/keephealth/android/app/LibContext;

    return-object v0
.end method

.method private init7_0_Camera()V
    .registers 3

    .line 67
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 68
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 69
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectFileUriExposure()Landroid/os/StrictMode$VmPolicy$Builder;

    return-void
.end method

.method private initFacebook()V
    .registers 1

    return-void
.end method

.method private initLogger()V
    .registers 5

    .line 42
    new-instance v0, Lcom/orhanobut/logger/AndroidLogAdapter;

    invoke-static {}, Lcom/orhanobut/logger/PrettyFormatStrategy;->newBuilder()Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/keephealth/android/app/LibContext;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/orhanobut/logger/PrettyFormatStrategy$Builder;->build()Lcom/orhanobut/logger/PrettyFormatStrategy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/orhanobut/logger/AndroidLogAdapter;-><init>(Lcom/orhanobut/logger/FormatStrategy;)V

    .line 42
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->addLogAdapter(Lcom/orhanobut/logger/LogAdapter;)V

    .line 46
    new-instance v0, Lcom/orhanobut/logger/DiskLogAdapter;

    invoke-static {}, Lcom/keephealth/android/util/log/TxtFormatStrategy;->newBuilder()Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;

    move-result-object v1

    .line 47
    invoke-virtual {p0}, Lcom/keephealth/android/app/LibContext;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->tag(Ljava/lang/String;)Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/app/LibContext;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/keephealth/android/app/LibContext;->getLogPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/keephealth/android/util/log/TxtFormatStrategy$Builder;->build(Ljava/lang/String;Ljava/lang/String;)Lcom/keephealth/android/util/log/TxtFormatStrategy;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/orhanobut/logger/DiskLogAdapter;-><init>(Lcom/orhanobut/logger/FormatStrategy;)V

    .line 46
    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->addLogAdapter(Lcom/orhanobut/logger/LogAdapter;)V

    return-void
.end method


# virtual methods
.method public getLogPath()Ljava/lang/String;
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/app/LibContext;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/app/LibContext;->context:Landroid/content/Context;

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/app/LibContext;->initFacebook()V

    .line 30
    invoke-direct {p0}, Lcom/keephealth/android/app/LibContext;->init7_0_Camera()V

    return-void
.end method

.method public initCrashHandler(Ljava/lang/String;)V
    .registers 4

    .line 57
    invoke-static {}, Lcom/keephealth/android/util/CrashUtil;->getInstance()Lcom/keephealth/android/util/CrashUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/app/LibContext;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/CrashUtil;->init(Landroid/content/Context;)V

    .line 58
    invoke-static {}, Lcom/keephealth/android/util/CrashUtil;->getInstance()Lcom/keephealth/android/util/CrashUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/util/CrashUtil;->setCrashDir(Ljava/lang/String;)V

    return-void
.end method
