.class Lfreemarker/core/TemplateElements;
.super Ljava/lang/Object;
.source "TemplateElementArrayBuilder.java"


# static fields
.field static final EMPTY:Lfreemarker/core/TemplateElements;


# instance fields
.field private final buffer:[Lfreemarker/core/TemplateElement;

.field private final count:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 31
    new-instance v0, Lfreemarker/core/TemplateElements;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfreemarker/core/TemplateElements;-><init>([Lfreemarker/core/TemplateElement;I)V

    sput-object v0, Lfreemarker/core/TemplateElements;->EMPTY:Lfreemarker/core/TemplateElements;

    return-void
.end method

.method constructor <init>([Lfreemarker/core/TemplateElement;I)V
    .registers 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lfreemarker/core/TemplateElements;->buffer:[Lfreemarker/core/TemplateElement;

    .line 51
    iput p2, p0, Lfreemarker/core/TemplateElements;->count:I

    return-void
.end method


# virtual methods
.method asMixedContent()Lfreemarker/core/MixedContent;
    .registers 5

    .line 93
    new-instance v0, Lfreemarker/core/MixedContent;

    invoke-direct {v0}, Lfreemarker/core/MixedContent;-><init>()V

    .line 94
    iget v1, p0, Lfreemarker/core/TemplateElements;->count:I

    if-eqz v1, :cond_1c

    .line 95
    iget-object v1, p0, Lfreemarker/core/TemplateElements;->buffer:[Lfreemarker/core/TemplateElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 96
    invoke-virtual {v0, p0}, Lfreemarker/core/MixedContent;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 97
    invoke-virtual {v1}, Lfreemarker/core/TemplateElement;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/TemplateElements;->getLast()Lfreemarker/core/TemplateElement;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lfreemarker/core/MixedContent;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    :cond_1c
    return-object v0
.end method

.method asSingleElement()Lfreemarker/core/TemplateElement;
    .registers 5

    .line 74
    iget v0, p0, Lfreemarker/core/TemplateElements;->count:I

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 75
    new-instance v0, Lfreemarker/core/TextBlock;

    sget-object v2, Lfreemarker/template/utility/CollectionUtils;->EMPTY_CHAR_ARRAY:[C

    invoke-direct {v0, v2, v1}, Lfreemarker/core/TextBlock;-><init>([CZ)V

    return-object v0

    .line 77
    :cond_d
    iget-object v2, p0, Lfreemarker/core/TemplateElements;->buffer:[Lfreemarker/core/TemplateElement;

    aget-object v1, v2, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    return-object v1

    .line 81
    :cond_15
    new-instance v0, Lfreemarker/core/MixedContent;

    invoke-direct {v0}, Lfreemarker/core/MixedContent;-><init>()V

    .line 82
    invoke-virtual {v0, p0}, Lfreemarker/core/MixedContent;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 83
    invoke-virtual {v1}, Lfreemarker/core/TemplateElement;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {p0}, Lfreemarker/core/TemplateElements;->getLast()Lfreemarker/core/TemplateElement;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lfreemarker/core/MixedContent;->setLocation(Lfreemarker/template/Template;Lfreemarker/core/TemplateObject;Lfreemarker/core/TemplateObject;)V

    return-object v0
.end method

.method getBuffer()[Lfreemarker/core/TemplateElement;
    .registers 2

    .line 55
    iget-object v0, p0, Lfreemarker/core/TemplateElements;->buffer:[Lfreemarker/core/TemplateElement;

    return-object v0
.end method

.method getCount()I
    .registers 2

    .line 59
    iget v0, p0, Lfreemarker/core/TemplateElements;->count:I

    return v0
.end method

.method getFirst()Lfreemarker/core/TemplateElement;
    .registers 3

    .line 63
    iget-object v0, p0, Lfreemarker/core/TemplateElements;->buffer:[Lfreemarker/core/TemplateElement;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return-object v0
.end method

.method getLast()Lfreemarker/core/TemplateElement;
    .registers 3

    .line 67
    iget-object v0, p0, Lfreemarker/core/TemplateElements;->buffer:[Lfreemarker/core/TemplateElement;

    if-eqz v0, :cond_b

    iget v1, p0, Lfreemarker/core/TemplateElements;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method
