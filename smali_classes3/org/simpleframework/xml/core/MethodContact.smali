.class Lorg/simpleframework/xml/core/MethodContact;
.super Ljava/lang/Object;
.source "MethodContact.java"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# instance fields
.field private get:Lorg/simpleframework/xml/core/MethodPart;

.field private item:Ljava/lang/Class;

.field private items:[Ljava/lang/Class;

.field private label:Ljava/lang/annotation/Annotation;

.field private name:Ljava/lang/String;

.field private owner:Ljava/lang/Class;

.field private set:Lorg/simpleframework/xml/core/MethodPart;

.field private type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->owner:Ljava/lang/Class;

    .line 4
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    .line 5
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDependents()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->items:[Ljava/lang/Class;

    .line 6
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getDependent()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->item:Ljava/lang/Class;

    .line 7
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->type:Ljava/lang/Class;

    .line 8
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    .line 10
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotation()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
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
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/simpleframework/xml/core/MethodContact;->label:Ljava/lang/annotation/Annotation;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Lorg/simpleframework/xml/core/MethodPart;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->owner:Ljava/lang/Class;

    return-object v0
.end method

.method public getDependent()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->item:Ljava/lang/Class;

    return-object v0
.end method

.method public getDependents()[Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->items:[Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public getWrite()Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->get:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->set:Lorg/simpleframework/xml/core/MethodPart;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Lorg/simpleframework/xml/core/MethodPart;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/core/MethodException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    aput-object v1, p2, v2

    aput-object v0, p2, v3

    const-string v0, "Property \'%s\' is read only in %s"

    invoke-direct {p1, v0, p2}, Lorg/simpleframework/xml/core/MethodException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "method \'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
