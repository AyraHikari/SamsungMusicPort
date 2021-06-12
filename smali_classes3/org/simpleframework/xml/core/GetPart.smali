.class Lorg/simpleframework/xml/core/GetPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


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

.field private final d:Lorg/simpleframework/xml/core/MethodType;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->a:Lorg/simpleframework/xml/util/Cache;

    .line 81
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->c()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    .line 82
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->f:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->b()Lorg/simpleframework/xml/core/MethodType;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/GetPart;->d:Lorg/simpleframework/xml/core/MethodType;

    .line 84
    iput-object p2, p0, Lorg/simpleframework/xml/core/GetPart;->c:Ljava/lang/annotation/Annotation;

    .line 85
    iput-object p3, p0, Lorg/simpleframework/xml/core/GetPart;->b:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 168
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0}, Lorg/simpleframework/xml/util/Cache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->b:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 170
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 171
    iget-object v5, p0, Lorg/simpleframework/xml/core/GetPart;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v5, v4, v3}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public d()[Ljava/lang/Class;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Class;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->c:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public g()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->d:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public h()Ljava/lang/reflect/Method;
    .locals 2

    .line 197
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->e:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
