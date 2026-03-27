.class Lfreemarker/template/LoggingAttemptExceptionReporter;
.super Ljava/lang/Object;
.source "LoggingAttemptExceptionReporter.java"

# interfaces
.implements Lfreemarker/template/AttemptExceptionReporter;


# static fields
.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private final logAsWarn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/template/LoggingAttemptExceptionReporter;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lfreemarker/template/LoggingAttemptExceptionReporter;->logAsWarn:Z

    return-void
.end method


# virtual methods
.method public report(Lfreemarker/template/TemplateException;Lfreemarker/core/Environment;)V
    .registers 4

    .line 40
    iget-boolean p2, p0, Lfreemarker/template/LoggingAttemptExceptionReporter;->logAsWarn:Z

    const-string v0, "Error executing FreeMarker template part in the #attempt block"

    if-nez p2, :cond_c

    .line 41
    sget-object p2, Lfreemarker/template/LoggingAttemptExceptionReporter;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {p2, v0, p1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 43
    :cond_c
    sget-object p2, Lfreemarker/template/LoggingAttemptExceptionReporter;->LOG:Lfreemarker/log/Logger;

    invoke-virtual {p2, v0, p1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    return-void
.end method
