.class public Lfreemarker/log/_Log4jOverSLF4JTester;
.super Ljava/lang/Object;
.source "_Log4jOverSLF4JTester.java"


# static fields
.field private static final MDC_KEY:Ljava/lang/String; = "freemarker.log._Log4jOverSLF4JTester"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final test()Z
    .registers 2

    .line 35
    sget-object v0, Lfreemarker/log/_Log4jOverSLF4JTester;->MDC_KEY:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/apache/log4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_7
    invoke-static {v0}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_14

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 39
    :goto_10
    invoke-static {v0}, Lorg/apache/log4j/MDC;->remove(Ljava/lang/String;)V

    return v1

    :catchall_14
    move-exception v0

    sget-object v1, Lfreemarker/log/_Log4jOverSLF4JTester;->MDC_KEY:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/log4j/MDC;->remove(Ljava/lang/String;)V

    .line 40
    throw v0
.end method
