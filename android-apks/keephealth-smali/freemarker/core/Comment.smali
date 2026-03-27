.class public final Lfreemarker/core/Comment;
.super Lfreemarker/core/TemplateElement;
.source "Comment.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 36
    iput-object p1, p0, Lfreemarker/core/Comment;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_1a

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "<#--"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/core/Comment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "comment "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/core/Comment;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 56
    const-string v0, "#--...--"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    if-nez p1, :cond_5

    .line 74
    sget-object p1, Lfreemarker/core/ParameterRole;->CONTENT:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 73
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    if-nez p1, :cond_5

    .line 68
    iget-object p1, p0, Lfreemarker/core/Comment;->text:Ljava/lang/String;

    return-object p1

    .line 67
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lfreemarker/core/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isOutputCacheable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
