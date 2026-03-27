.class public Lfreemarker/debug/Breakpoint;
.super Ljava/lang/Object;
.source "Breakpoint.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final line:I

.field private final templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    .line 40
    iput p2, p0, Lfreemarker/debug/Breakpoint;->line:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4

    .line 71
    check-cast p1, Lfreemarker/debug/Breakpoint;

    .line 72
    iget-object v0, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    iget-object v1, p1, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 73
    iget v0, p0, Lfreemarker/debug/Breakpoint;->line:I

    iget p1, p1, Lfreemarker/debug/Breakpoint;->line:I

    sub-int/2addr v0, p1

    :cond_11
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 63
    instance-of v0, p1, Lfreemarker/debug/Breakpoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 64
    check-cast p1, Lfreemarker/debug/Breakpoint;

    .line 65
    iget-object v0, p1, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget p1, p1, Lfreemarker/debug/Breakpoint;->line:I

    iget v0, p0, Lfreemarker/debug/Breakpoint;->line:I

    if-ne p1, v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public getLine()I
    .registers 2

    .line 47
    iget v0, p0, Lfreemarker/debug/Breakpoint;->line:I

    return v0
.end method

.method public getLocationString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfreemarker/debug/Breakpoint;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 58
    iget-object v0, p0, Lfreemarker/debug/Breakpoint;->templateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lfreemarker/debug/Breakpoint;->line:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method
