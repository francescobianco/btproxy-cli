.class public Lcom/keephealth/android/model/net/ApiManager;
.super Ljava/lang/Object;
.source "ApiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/model/net/ApiManager$StravaTypeAdapter;,
        Lcom/keephealth/android/model/net/ApiManager$StrTypeAdapter;
    }
.end annotation


# static fields
.field private static final MAX_LOG_TOTAL_LEN:I = 0x7530

.field static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 246
    new-instance v0, Lcom/keephealth/android/model/net/ApiManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/keephealth/android/model/net/ApiManager$3;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/keephealth/android/model/net/ApiManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .registers 1

    .line 83
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->setLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 83
    invoke-static {p0}, Lcom/keephealth/android/model/net/ApiManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addObservable(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observable<",
            "TM;>;)",
            "Lio/reactivex/Observable<",
            "TM;>;"
        }
    .end annotation

    .line 88
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 89
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->unsubscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 90
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static changeHttp()V
    .registers 2

    .line 466
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "testHttp"

    invoke-static {v0, v1}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 468
    const-string v0, "http://47.75.143.120:9090/keephealth/"

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    goto :goto_21

    .line 470
    :cond_1d
    const-string v0, "https://keephealth-zhj.com/keephealth/"

    sput-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    :goto_21
    return-void
.end method

.method public static getDialCenterApi()Lcom/keephealth/android/model/net/api/DialCenterApi;
    .registers 4

    .line 448
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 449
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN_BASE"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/DialCenterApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/DialCenterApi;

    return-object v0
.end method

.method public static getFamilyApi()Lcom/keephealth/android/model/net/api/FamilyApi;
    .registers 4

    .line 444
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 445
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN_BASE"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/FamilyApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/FamilyApi;

    return-object v0
.end method

.method public static getFileApi()Lcom/keephealth/android/model/net/api/FileApi;
    .registers 4

    .line 440
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 441
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/FileApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/FileApi;

    return-object v0
.end method

.method public static getLoginApi()Lcom/keephealth/android/model/net/api/LoginApi;
    .registers 4

    .line 410
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 411
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/LoginApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/LoginApi;

    return-object v0
.end method

.method private static getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;
    .registers 10

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getRetrofit_url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "trtr5t"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance p3, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance v0, Lcom/keephealth/android/model/net/ApiManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/keephealth/android/model/net/ApiManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p3, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 282
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p3, v0}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF321h2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 287
    new-instance v0, Lcom/keephealth/android/model/net/ApiManager$5;

    invoke-direct {v0, p1}, Lcom/keephealth/android/model/net/ApiManager$5;-><init>(Ljava/lang/String;)V

    goto :goto_52

    .line 310
    :cond_4d
    new-instance v0, Lcom/keephealth/android/model/net/ApiManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/keephealth/android/model/net/ApiManager$$ExternalSyntheticLambda1;-><init>()V

    .line 335
    :goto_52
    new-instance p1, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {p1, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 336
    invoke-virtual {p1, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object p1

    .line 337
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec$Builder;->allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;

    move-result-object p1

    .line 338
    invoke-virtual {p1}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object p1

    .line 339
    new-instance v1, Lokhttp3/ConnectionSpec$Builder;

    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-direct {v1, v2}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v1

    .line 340
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-array v5, v5, [Lokhttp3/ConnectionSpec;

    aput-object p1, v5, v3

    aput-object v1, v5, v4

    .line 341
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 342
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    int-to-long p2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 344
    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 345
    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 346
    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 347
    invoke-virtual {p1, v4}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/model/net/ApiManager$6;

    invoke-direct {p2}, Lcom/keephealth/android/model/net/ApiManager$6;-><init>()V

    .line 348
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 365
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class p3, Lcom/keephealth/android/model/BaseBean;

    new-instance v0, Lcom/keephealth/android/model/net/ApiManager$StrTypeAdapter;

    invoke-direct {v0}, Lcom/keephealth/android/model/net/ApiManager$StrTypeAdapter;-><init>()V

    .line 366
    invoke-virtual {p2, p3, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 367
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 368
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 369
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 370
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    .line 373
    new-instance p3, Lretrofit2/Retrofit$Builder;

    invoke-direct {p3}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 374
    invoke-virtual {p3, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 375
    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p0, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 376
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    invoke-virtual {p0, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 377
    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method private static getRetrofitStrava(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;
    .registers 10

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "url:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  a:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "trt4r"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance p1, Lokhttp3/logging/HttpLoggingInterceptor;

    new-instance p3, Lcom/keephealth/android/model/net/ApiManager$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/keephealth/android/model/net/ApiManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p1, p3}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 171
    sget-object p3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {p1, p3}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 174
    new-instance p3, Lcom/keephealth/android/model/net/ApiManager$1;

    invoke-direct {p3}, Lcom/keephealth/android/model/net/ApiManager$1;-><init>()V

    .line 199
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x3

    new-array v1, v1, [Lokhttp3/TlsVersion;

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 200
    invoke-virtual {v0, v1}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->allEnabledCipherSuites()Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 203
    new-instance v1, Lokhttp3/ConnectionSpec$Builder;

    sget-object v2, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-direct {v1, v2}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    invoke-virtual {v1}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v1

    .line 204
    new-instance v2, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v2}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-array v5, v5, [Lokhttp3/ConnectionSpec;

    aput-object v0, v5, v3

    aput-object v1, v5, v4

    .line 205
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 207
    invoke-virtual {p1, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    int-to-long p2, p2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 208
    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 210
    invoke-virtual {p1, p2, p3, v0}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, v4}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/keephealth/android/model/net/ApiManager$2;

    invoke-direct {p2}, Lcom/keephealth/android/model/net/ApiManager$2;-><init>()V

    .line 212
    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 229
    new-instance p2, Lcom/google/gson/GsonBuilder;

    invoke-direct {p2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class p3, Lcom/keephealth/android/model/BaseBean;

    new-instance v0, Lcom/keephealth/android/model/net/ApiManager$StravaTypeAdapter;

    invoke-direct {v0}, Lcom/keephealth/android/model/net/ApiManager$StravaTypeAdapter;-><init>()V

    .line 230
    invoke-virtual {p2, p3, v0}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 231
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 232
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 233
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object p2

    .line 234
    invoke-virtual {p2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p2

    .line 237
    new-instance p3, Lretrofit2/Retrofit$Builder;

    invoke-direct {p3}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 238
    invoke-virtual {p3, p0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 239
    invoke-static {p2}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object p2

    invoke-virtual {p0, p2}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 240
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object p2

    invoke-virtual {p0, p2}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public static getRewardApi()Lcom/keephealth/android/model/net/api/TaskRewardApi;
    .registers 4

    .line 461
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 462
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN_BASE"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/TaskRewardApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/TaskRewardApi;

    return-object v0
.end method

.method public static getSportModeApi()Lcom/keephealth/android/model/net/api/SportModeApi;
    .registers 4

    .line 452
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 453
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN_BASE"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/SportModeApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/SportModeApi;

    return-object v0
.end method

.method public static getStravaAuthApi()Lcom/keephealth/android/model/net/api/UserApi;
    .registers 4

    .line 426
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const-string v3, "https://www.strava.com/"

    invoke-static {v3, v0, v1, v2}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofitStrava(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/UserApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/UserApi;

    return-object v0
.end method

.method public static getStravaRefreshAuthApi()Lcom/keephealth/android/model/net/api/UserApi;
    .registers 4

    .line 431
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const-string v3, "https://www.strava.com/api/v3/"

    invoke-static {v3, v0, v1, v2}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofitStrava(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/UserApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/UserApi;

    return-object v0
.end method

.method public static getStravaUploadFileApi()Lcom/keephealth/android/model/net/api/UserApi;
    .registers 4

    .line 436
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "USER_TOKEN"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const-string v3, "https://www.strava.com/api/v3"

    invoke-static {v3, v0, v1, v2}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofitStrava(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/UserApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/UserApi;

    return-object v0
.end method

.method public static getTaskModelApi()Lcom/keephealth/android/childmodule/api/TaskApi;
    .registers 4

    .line 457
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 458
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/childmodule/api/TaskApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/childmodule/api/TaskApi;

    return-object v0
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .line 388
    :try_start_0
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object p0

    invoke-static {p0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_f

    .line 390
    :catch_9
    const-string p0, "http.agent"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 395
    :goto_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_42

    .line 397
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_2c

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_28

    goto :goto_2c

    .line 401
    :cond_28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3f

    .line 399
    :cond_2c
    :goto_2c
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\\u%04x"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 404
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserApi()Lcom/keephealth/android/model/net/api/UserApi;
    .registers 4

    .line 420
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 421
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/UserApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/UserApi;

    return-object v0
.end method

.method public static getVerifyEmail()Lcom/keephealth/android/model/net/api/UserApi;
    .registers 4

    .line 415
    invoke-static {}, Lcom/keephealth/android/model/net/ApiManager;->changeHttp()V

    .line 416
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->SERVER_URL:Ljava/lang/String;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "USER_TOKEN"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/keephealth/android/model/net/ApiManager;->getRetrofit(Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/model/net/api/UserApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/model/net/api/UserApi;

    return-object v0
.end method

.method static synthetic lambda$getRetrofit$1(Ljava/lang/String;)V
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REQUEST\uff1a----"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isFeedbackActivity:Z

    if-nez v0, :cond_25

    .line 268
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/keephealth/android/model/net/ApiManager$4;

    invoke-direct {v1, p0}, Lcom/keephealth/android/model/net/ApiManager$4;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_25
    return-void
.end method

.method static synthetic lambda$getRetrofit$2(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    invoke-interface {p0}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 314
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "appType"

    const-string v3, "1"

    .line 315
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 316
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packageName"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/util/AppUtil;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appVersion"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 318
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "phoneSystemVersion"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    const-string v3, "phoneModel"

    invoke-virtual {v1, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 320
    const-string v2, "User-Agent"

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 321
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/keephealth/android/model/net/ApiManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 322
    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 324
    invoke-interface {p0, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getRetrofitStrava$0(Ljava/lang/String;)V
    .registers 3

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "REQUEST\uff1a----"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setLog(Ljava/lang/String;)V
    .registers 7

    if-nez p0, :cond_3

    return-void

    .line 130
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7530

    const/4 v2, 0x0

    if-le v0, v1, :cond_23

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "...(\u65e5\u5fd7\u622a\u65ad)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_23
    move v0, v2

    .line 135
    :goto_24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit16 v1, v1, 0xbb8

    if-gt v0, v1, :cond_5a

    mul-int/lit16 v1, v0, 0xbb8

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v3, v0, 0xbb8

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    const-string v4, "\u63a5\u53e3\u6570\u636e"

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u9875\u9762:\u63a5\u53e3\u6570\u636e  \u539f\u59cbstrtype\u6570\u636e:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    goto :goto_24

    :cond_5a
    return-void
.end method
