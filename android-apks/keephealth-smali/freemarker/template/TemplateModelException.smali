.class public Lfreemarker/template/TemplateModelException;
.super Lfreemarker/template/TemplateException;
.source "TemplateModelException.java"


# instance fields
.field private final replaceWithCause:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    .line 38
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x0

    .line 56
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 75
    invoke-direct {p0, p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .registers 5

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p3, v0}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    .line 101
    iput-boolean p2, p0, Lfreemarker/template/TemplateModelException;->replaceWithCause:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/_ErrorDescriptionBuilder;Z)V
    .registers 5

    const/4 p4, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p4, p3}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Lfreemarker/core/Expression;Lfreemarker/core/_ErrorDescriptionBuilder;)V

    const/4 p1, 0x0

    .line 124
    iput-boolean p1, p0, Lfreemarker/template/TemplateModelException;->replaceWithCause:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;Ljava/lang/String;Z)V
    .registers 5

    .line 111
    invoke-direct {p0, p3, p1, p2}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lfreemarker/template/TemplateModelException;->replaceWithCause:Z

    return-void
.end method


# virtual methods
.method public getReplaceWithCause()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lfreemarker/template/TemplateModelException;->replaceWithCause:Z

    return v0
.end method
