.class public Lfreemarker/core/BugException;
.super Ljava/lang/RuntimeException;
.source "BugException.java"


# static fields
.field private static final COMMON_MESSAGE:Ljava/lang/String; = "A bug was detected in FreeMarker; please report it with stack-trace"


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 33
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A bug was detected in FreeMarker; please report it with stack-trace: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .line 41
    const-string v0, "A bug was detected in FreeMarker; please report it with stack-trace"

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
