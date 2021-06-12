.class Lorg/simpleframework/xml/core/MethodPartFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/simpleframework/xml/core/AnnotationFactory;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-direct {v0, p1, p2}, Lorg/simpleframework/xml/core/AnnotationFactory;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->a:Lorg/simpleframework/xml/core/AnnotationFactory;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;
    .locals 1

    .line 339
    invoke-virtual {p2}, Lorg/simpleframework/xml/core/MethodType;->getPrefix()I

    move-result p2

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 343
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 345
    :cond_0
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->b(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 124
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 125
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    return-object p1

    .line 127
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 128
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    return-object p1

    .line 130
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 131
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodPartFactory;->b(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    return-object p1

    .line 133
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

.method private a(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 287
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 289
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 292
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v1, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v1, p1, p2, v0}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v1

    .line 295
    :cond_0
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Could not get name for %s"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 290
    :cond_1
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Get method %s is not a valid property"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private b(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;)Lorg/simpleframework/xml/core/MethodName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 314
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 316
    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 319
    invoke-direct {p0, v1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/String;Lorg/simpleframework/xml/core/MethodType;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v1, Lorg/simpleframework/xml/core/MethodName;

    invoke-direct {v1, p1, p2, v0}, Lorg/simpleframework/xml/core/MethodName;-><init>(Ljava/lang/reflect/Method;Lorg/simpleframework/xml/core/MethodType;Ljava/lang/String;)V

    return-object v1

    .line 322
    :cond_0
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Could not get name for %s"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2

    .line 317
    :cond_1
    new-instance p2, Lorg/simpleframework/xml/core/MethodException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "Set method %s is not a valid property"

    invoke-direct {p2, p1, v0}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private b(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;
    .locals 1

    .line 148
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    return-object p1

    :cond_0
    const-string v0, "is"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    return-object p1

    :cond_1
    const-string v0, "set"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    return-object p1

    .line 159
    :cond_2
    sget-object p1, Lorg/simpleframework/xml/core/MethodType;->NONE:Lorg/simpleframework/xml/core/MethodType;

    return-object p1
.end method

.method private c(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->d(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object v0

    .line 177
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodPartFactory;->a:Lorg/simpleframework/xml/core/AnnotationFactory;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/core/AnnotationFactory;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/lang/reflect/Method;)[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 196
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->b(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 198
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 199
    invoke-static {p1, v0}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/Method;I)[Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 201
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 202
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 204
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 205
    invoke-static {p1}, Lorg/simpleframework/xml/core/Reflector;->b(Ljava/lang/reflect/Method;)[Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private e(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 248
    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 267
    array-length v0, v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Method;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->b(Ljava/lang/reflect/Method;)Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 223
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 224
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->e(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 226
    :cond_0
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->GET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_1

    .line 227
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->f(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 229
    :cond_1
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->IS:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_2

    .line 230
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->f(Ljava/lang/reflect/Method;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodName;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lorg/simpleframework/xml/core/MethodName;->b()Lorg/simpleframework/xml/core/MethodType;

    move-result-object v0

    .line 102
    sget-object v1, Lorg/simpleframework/xml/core/MethodType;->SET:Lorg/simpleframework/xml/core/MethodType;

    if-ne v0, v1, :cond_0

    .line 103
    new-instance v0, Lorg/simpleframework/xml/core/SetPart;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/SetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lorg/simpleframework/xml/core/GetPart;

    invoke-direct {v0, p1, p2, p3}, Lorg/simpleframework/xml/core/GetPart;-><init>(Lorg/simpleframework/xml/core/MethodName;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public a(Ljava/lang/reflect/Method;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/MethodPartFactory;->c(Ljava/lang/reflect/Method;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/MethodPartFactory;->a(Ljava/lang/reflect/Method;Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lorg/simpleframework/xml/core/MethodPart;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
