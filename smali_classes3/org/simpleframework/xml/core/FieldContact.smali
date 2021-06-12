.class Lorg/simpleframework/xml/core/FieldContact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# instance fields
.field private final a:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final b:[Ljava/lang/annotation/Annotation;

.field private final c:Ljava/lang/annotation/Annotation;

.field private final d:Ljava/lang/reflect/Field;

.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->a:Lorg/simpleframework/xml/util/Cache;

    .line 81
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iput v0, p0, Lorg/simpleframework/xml/core/FieldContact;->f:I

    .line 82
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->e:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lorg/simpleframework/xml/core/FieldContact;->c:Ljava/lang/annotation/Annotation;

    .line 84
    iput-object p1, p0, Lorg/simpleframework/xml/core/FieldContact;->d:Ljava/lang/reflect/Field;

    .line 85
    iput-object p3, p0, Lorg/simpleframework/xml/core/FieldContact;->b:[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method private b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0}, Lorg/simpleframework/xml/util/Cache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->b:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 220
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 221
    iget-object v5, p0, Lorg/simpleframework/xml/core/FieldContact;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v5, v4, v3}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->c:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->c:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 203
    iget-object p1, p0, Lorg/simpleframework/xml/core/FieldContact;->c:Ljava/lang/annotation/Annotation;

    return-object p1

    .line 205
    :cond_0
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/FieldContact;->b(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/simpleframework/xml/core/FieldContact;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "field \'%s\' %s"

    const/4 v1, 0x2

    .line 264
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/simpleframework/xml/core/FieldContact;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/core/FieldContact;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
