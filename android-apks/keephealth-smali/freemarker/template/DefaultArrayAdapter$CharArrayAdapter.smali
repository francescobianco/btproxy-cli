.class Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;
.super Lfreemarker/template/DefaultArrayAdapter;
.source "DefaultArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/template/DefaultArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayAdapter"
.end annotation


# instance fields
.field private final array:[C


# direct methods
.method private constructor <init>([CLfreemarker/template/ObjectWrapper;)V
    .registers 4

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p2, v0}, Lfreemarker/template/DefaultArrayAdapter;-><init>(Lfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V

    .line 271
    iput-object p1, p0, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;->array:[C

    return-void
.end method

.method synthetic constructor <init>([CLfreemarker/template/ObjectWrapper;Lfreemarker/template/DefaultArrayAdapter$1;)V
    .registers 4

    .line 265
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;-><init>([CLfreemarker/template/ObjectWrapper;)V

    return-void
.end method


# virtual methods
.method public get(I)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-ltz p1, :cond_12

    .line 275
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;->array:[C

    array-length v1, v0

    if-ge p1, v1, :cond_12

    aget-char p1, v0, p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method public getWrappedObject()Ljava/lang/Object;
    .registers 2

    .line 283
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;->array:[C

    return-object v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lfreemarker/template/DefaultArrayAdapter$CharArrayAdapter;->array:[C

    array-length v0, v0

    return v0
.end method
