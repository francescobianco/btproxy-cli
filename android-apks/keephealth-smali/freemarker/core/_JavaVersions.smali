.class public final Lfreemarker/core/_JavaVersions;
.super Ljava/lang/Object;
.source "_JavaVersions.java"


# static fields
.field private static final IS_AT_LEAST_6:Z

.field private static final IS_AT_LEAST_8:Z

.field public static final JAVA_6:Lfreemarker/core/_Java6;

.field public static final JAVA_8:Lfreemarker/core/_Java8;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 37
    const-string v0, "java.version"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    .line 40
    :try_start_b
    new-instance v5, Lfreemarker/template/Version;

    invoke-direct {v5, v2}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v5}, Lfreemarker/template/Version;->getMajor()I

    move-result v6

    if-ne v6, v3, :cond_1d

    invoke-virtual {v5}, Lfreemarker/template/Version;->getMinor()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_23

    :cond_1d
    invoke-virtual {v5}, Lfreemarker/template/Version;->getMajor()I

    move-result v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_25

    if-le v5, v3, :cond_25

    :cond_23
    move v5, v3

    goto :goto_26

    :catch_25
    :cond_25
    move v5, v4

    :goto_26
    if-nez v2, :cond_2e

    .line 48
    :try_start_28
    const-string v2, "java.util.ServiceLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2d} :catch_2e

    move v5, v3

    .line 54
    :catch_2e
    :cond_2e
    sput-boolean v5, Lfreemarker/core/_JavaVersions;->IS_AT_LEAST_6:Z

    .line 60
    const-string v2, "freemarker.runtime"

    const-string v6, "INSTANCE"

    if-eqz v5, :cond_51

    .line 62
    :try_start_36
    const-string v5, "freemarker.core._Java6Impl"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/_Java6;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_46} :catch_47

    goto :goto_52

    :catch_47
    move-exception v5

    .line 65
    :try_start_48
    invoke-static {v2}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v7

    const-string v8, "Failed to access Java 6 functionality"

    invoke-virtual {v7, v8, v5}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_51} :catch_51

    :catch_51
    :cond_51
    move-object v5, v1

    .line 74
    :goto_52
    sput-object v5, Lfreemarker/core/_JavaVersions;->JAVA_6:Lfreemarker/core/_Java6;

    .line 80
    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 83
    :try_start_5a
    new-instance v5, Lfreemarker/template/Version;

    invoke-direct {v5, v0}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Lfreemarker/template/Version;->getMajor()I

    move-result v0

    if-ne v0, v3, :cond_6d

    invoke-virtual {v5}, Lfreemarker/template/Version;->getMinor()I

    move-result v0

    const/16 v7, 0x8

    if-ge v0, v7, :cond_7b

    :cond_6d
    invoke-virtual {v5}, Lfreemarker/template/Version;->getMajor()I

    move-result v0

    if-le v0, v3, :cond_7a

    goto :goto_7b

    .line 90
    :cond_74
    const-string v0, "java.time.Instant"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_79} :catch_7a

    goto :goto_7b

    :catch_7a
    :cond_7a
    move v3, v4

    .line 96
    :cond_7b
    :goto_7b
    sput-boolean v3, Lfreemarker/core/_JavaVersions;->IS_AT_LEAST_8:Z

    if-eqz v3, :cond_9b

    .line 107
    :try_start_7f
    const-string v0, "freemarker.core._Java8Impl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/_Java8;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8f} :catch_91

    move-object v1, v0

    goto :goto_9b

    :catch_91
    move-exception v0

    .line 110
    :try_start_92
    invoke-static {v2}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v2

    const-string v3, "Failed to access Java 8 functionality"

    invoke-virtual {v2, v3, v0}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_9b

    .line 119
    :catch_9b
    :cond_9b
    :goto_9b
    sput-object v1, Lfreemarker/core/_JavaVersions;->JAVA_8:Lfreemarker/core/_Java8;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
