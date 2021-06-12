.class Lorg/simpleframework/xml/core/DetailExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/core/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/core/ContactList;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lorg/simpleframework/xml/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Cache<",
            "Lorg/simpleframework/xml/core/Detail;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/simpleframework/xml/DefaultType;

.field private final e:Lorg/simpleframework/xml/core/Support;


# direct methods
.method private a(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/simpleframework/xml/core/FieldScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->e:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/FieldScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->b:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {p2, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 190
    new-instance v0, Lorg/simpleframework/xml/core/MethodScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->e:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, v1}, Lorg/simpleframework/xml/core/MethodScanner;-><init>(Lorg/simpleframework/xml/core/Detail;Lorg/simpleframework/xml/core/Support;)V

    if-eqz p2, :cond_0

    .line 193
    iget-object p2, p0, Lorg/simpleframework/xml/core/DetailExtractor;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {p2, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->c:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Detail;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lorg/simpleframework/xml/core/DetailScanner;

    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->d:Lorg/simpleframework/xml/DefaultType;

    invoke-direct {v0, p1, v1}, Lorg/simpleframework/xml/core/DetailScanner;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)V

    .line 108
    iget-object v1, p0, Lorg/simpleframework/xml/core/DetailExtractor;->c:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, v0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->b:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/DetailExtractor;->a(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lorg/simpleframework/xml/core/DetailExtractor;->a:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ContactList;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->a(Ljava/lang/Class;)Lorg/simpleframework/xml/core/Detail;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-direct {p0, p1, v1}, Lorg/simpleframework/xml/core/DetailExtractor;->b(Ljava/lang/Class;Lorg/simpleframework/xml/core/Detail;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object v0

    :cond_0
    return-object v0
.end method
