.class Lorg/simpleframework/xml/core/GetPart;
.super Ljava/lang/Object;
.source "GetPart.java"

# interfaces
.implements Lorg/simpleframework/xml/core/MethodPart;


# instance fields
.field private final cache:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final label:Ljava/lang/annotation/Annotation;

.field private final list:[Ljava/lang/annotation/Annotation;

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final type:Lorg/simpleframework/xml/core/MethodType;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/simpleframework/xml/util/ConcurrentCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/ConcurrentCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    .line 3
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    .line 6
    iput-object p2, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    .line 7
    iput-object p3, p0, Lorg/simpleframework/xml/core/GetPart;->list:[Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0}, Lorg/simpleframework/xml/util/Cache;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->list:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v5, v4, v3}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->cache:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    return-object p1
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependent(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getMethodType()Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->type:Lorg/simpleframework/xml/core/MethodType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/GetPart;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
