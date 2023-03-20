.class Lorg/simpleframework/xml/core/AnnotationHandler;
.super Ljava/lang/Object;
.source "AnnotationHandler.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# static fields
.field private static final ATTRIBUTE:Ljava/lang/String; = "attribute"

.field private static final CLASS:Ljava/lang/String; = "annotationType"

.field private static final EQUAL:Ljava/lang/String; = "equals"

.field private static final REQUIRED:Ljava/lang/String; = "required"

.field private static final STRING:Ljava/lang/String; = "toString"


# instance fields
.field private final attribute:Z

.field private final comparer:Lorg/simpleframework/xml/core/Comparer;

.field private final required:Z

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;-><init>(Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ZZ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/simpleframework/xml/core/Comparer;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Comparer;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->comparer:Lorg/simpleframework/xml/core/Comparer;

    .line 5
    iput-boolean p3, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->attribute:Z

    .line 6
    iput-boolean p2, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    .line 7
    iput-object p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    return-void
.end method

.method private attributes(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4
    aget-object v3, v0, v1

    invoke-direct {p0, v3}, Lorg/simpleframework/xml/core/AnnotationHandler;->value(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v3

    if-lez v1, :cond_0

    const/16 v4, 0x2c

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    .line 6
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x29

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private equals(Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/annotation/Annotation;

    const/4 v0, 0x0

    .line 2
    aget-object p2, p2, v0

    check-cast p2, Ljava/lang/annotation/Annotation;

    .line 3
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->comparer:Lorg/simpleframework/xml/core/Comparer;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/core/Comparer;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result p1

    return p1

    .line 5
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

.method private name(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x28

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private value(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "required"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "attribute"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->attribute:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/AnnotationHandler;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "equals"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p3}, Lorg/simpleframework/xml/core/AnnotationHandler;->equals(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "annotationType"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    return-object p1

    :cond_2
    const-string p1, "required"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->required:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "attribute"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    iget-boolean p1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->attribute:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/simpleframework/xml/core/AnnotationHandler;->type:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->name(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/AnnotationHandler;->attributes(Ljava/lang/StringBuilder;)V

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
