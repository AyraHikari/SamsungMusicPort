.class Lorg/simpleframework/xml/core/MethodContact;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/core/Contact;


# instance fields
.field private a:Ljava/lang/annotation/Annotation;

.field private b:Lorg/simpleframework/xml/core/MethodPart;

.field private c:Lorg/simpleframework/xml/core/MethodPart;

.field private d:[Ljava/lang/Class;

.field private e:Ljava/lang/Class;

.field private f:Ljava/lang/Class;

.field private g:Ljava/lang/Class;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/MethodContact;-><init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/MethodPart;Lorg/simpleframework/xml/core/MethodPart;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->e()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->e:Ljava/lang/Class;

    .line 99
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->f()Ljava/lang/annotation/Annotation;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->a:Ljava/lang/annotation/Annotation;

    .line 100
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->d()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->d:[Ljava/lang/Class;

    .line 101
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->c()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->f:Ljava/lang/Class;

    .line 102
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->b()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->g:Ljava/lang/Class;

    .line 103
    invoke-interface {p1}, Lorg/simpleframework/xml/core/MethodPart;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->h:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lorg/simpleframework/xml/core/MethodContact;->b:Lorg/simpleframework/xml/core/MethodPart;

    .line 105
    iput-object p1, p0, Lorg/simpleframework/xml/core/MethodContact;->c:Lorg/simpleframework/xml/core/MethodPart;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/annotation/Annotation;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
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

    .line 163
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->c:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/MethodPart;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->a:Ljava/lang/annotation/Annotation;

    invoke-interface {v1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 166
    iget-object p1, p0, Lorg/simpleframework/xml/core/MethodContact;->a:Ljava/lang/annotation/Annotation;

    return-object p1

    :cond_0
    if-nez v0, :cond_1

    .line 168
    iget-object v1, p0, Lorg/simpleframework/xml/core/MethodContact;->b:Lorg/simpleframework/xml/core/MethodPart;

    if-eqz v1, :cond_1

    .line 169
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->b:Lorg/simpleframework/xml/core/MethodPart;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/core/MethodPart;->a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->c:Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method

.method public d()Lorg/simpleframework/xml/core/MethodPart;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/simpleframework/xml/core/MethodContact;->b:Lorg/simpleframework/xml/core/MethodPart;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "method \'%s\'"

    const/4 v1, 0x1

    .line 274
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/core/MethodContact;->h:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
