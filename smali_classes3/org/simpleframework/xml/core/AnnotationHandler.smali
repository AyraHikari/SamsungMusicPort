.class Lorg/simpleframework/xml/core/AnnotationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Lorg/simpleframework/xml/core/Comparer;

.field private final b:Ljava/lang/Class;

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;ZZ)V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->a:Lorg/simpleframework/xml/core/Comparer;

    .line 116
    iput-boolean p3, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->c:Z

    .line 117
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->d:Z

    .line 118
    iput-object p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->b:Ljava/lang/Class;

    return-void
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    .line 251
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "required"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "attribute"

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 259
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x40

    .line 207
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 166
    check-cast p1, Ljava/lang/annotation/Annotation;

    const/4 v0, 0x0

    .line 167
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/annotation/Annotation;

    .line 169
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 172
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->a:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Comparer;->a(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result p1

    return p1

    .line 170
    :cond_0
    new-instance v1, Lorg/simpleframework/xml/core/PersistenceException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "Annotation %s is not the same as %s"

    invoke-direct {v1, p1, v2}, Lorg/simpleframework/xml/core/PersistenceException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private b(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 223
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->b:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 225
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 226
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 227
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/AnnotationHandler;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    if-lez v1, :cond_0

    const/16 v4, 0x2c

    .line 230
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 231
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 234
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 135
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AnnotationHandler;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "equals"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "annotationType"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 144
    iget-object p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->b:Ljava/lang/Class;

    return-object p1

    :cond_2
    const-string p1, "required"

    .line 146
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 147
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->d:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "attribute"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->c:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 152
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    iget-object v1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->b:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 188
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->a(Ljava/lang/StringBuilder;)V

    .line 189
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->b(Ljava/lang/StringBuilder;)V

    .line 191
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
