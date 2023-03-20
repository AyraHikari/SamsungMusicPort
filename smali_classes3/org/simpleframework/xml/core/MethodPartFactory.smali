.class Lorg/simpleframework/xml/core/MethodPartFactory;
.super Ljava/lang/Object;
.source "MethodPartFactory.java"


# instance fields
.field private final factory:Lorg/simpleframework/xml/core/AnnotationFactory;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    return-void
.end method

.method private getAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->factory:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->getInstance(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lorg/simpleframework/xml/core/Reflector;->getParameterDependents(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getReturnDependents(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    return-object p1

    :cond_0
    const-string v0, "is"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    return-object p1

    :cond_1
    const-string v0, "set"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    return-object p1

    .line 8
    :cond_2
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    return-object p1
.end method

.method private getName(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->getWrite(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    new-instance p1, Lorg/simpleframework/xml/core/MethodException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "Annotation %s must mark a set or get method"

    invoke-direct {p1, p2, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private getParameterType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getRead(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v1, p1, p2, v0}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_0
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Could not get name for %s"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 7
    :cond_1
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Get method %s is not a valid property"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    array-length v0, v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/MethodType;->getPrefix()I

    move-result p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 3
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getWrite(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 4
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getTypeName(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v1, p1, p2, v0}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v1

    .line 6
    :cond_0
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Could not get name for %s"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 7
    :cond_1
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Set method %s is not a valid property"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getName(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->getType()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 5
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 6
    new-instance v0, Lorg/simpleframework/xml/core/SetPart;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/SetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/GetPart;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/GetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public getInstance(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getAnnotation(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->getInstance(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getType(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getMethodType(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 2
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getParameterType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 7
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->getReturnType(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
