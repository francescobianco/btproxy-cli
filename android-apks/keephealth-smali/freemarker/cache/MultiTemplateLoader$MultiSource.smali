.class final Lfreemarker/cache/MultiTemplateLoader$MultiSource;
.super Ljava/lang/Object;
.source "MultiTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/MultiTemplateLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MultiSource"
.end annotation


# instance fields
.field private final loader:Lfreemarker/cache/TemplateLoader;

.field private final source:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lfreemarker/cache/TemplateLoader;)V
    .registers 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    .line 133
    iput-object p2, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    return-void
.end method


# virtual methods
.method close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    iget-object v1, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lfreemarker/cache/TemplateLoader;->closeTemplateSource(Ljava/lang/Object;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 156
    instance-of v0, p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 157
    check-cast p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;

    .line 158
    iget-object v0, p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    iget-object v2, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p1, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method getLastModified()J
    .registers 3

    .line 137
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    iget-object v1, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lfreemarker/cache/TemplateLoader;->getLastModified(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method getReader(Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    iget-object v1, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lfreemarker/cache/TemplateLoader;->getReader(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method getWrappedSource()Ljava/lang/Object;
    .registers 2

    .line 151
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 165
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->loader:Lfreemarker/cache/TemplateLoader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 170
    iget-object v0, p0, Lfreemarker/cache/MultiTemplateLoader$MultiSource;->source:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
