.class Lorg/simpleframework/xml/core/Support;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/simpleframework/xml/core/DetailExtractor;

.field private final b:Lorg/simpleframework/xml/core/DetailExtractor;

.field private final c:Lorg/simpleframework/xml/stream/Format;


# virtual methods
.method public a(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 308
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->a:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->b(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1

    .line 310
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->b:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->b(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1
.end method

.method public a()Lorg/simpleframework/xml/stream/Format;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/simpleframework/xml/core/Support;->c:Lorg/simpleframework/xml/stream/Format;

    return-object v0
.end method

.method public b(Ljava/lang/Class;Lorg/simpleframework/xml/DefaultType;)Lorg/simpleframework/xml/core/ContactList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 340
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->a:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->c(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1

    .line 342
    :cond_0
    iget-object p2, p0, Lorg/simpleframework/xml/core/Support;->b:Lorg/simpleframework/xml/core/DetailExtractor;

    invoke-virtual {p2, p1}, Lorg/simpleframework/xml/core/DetailExtractor;->c(Ljava/lang/Class;)Lorg/simpleframework/xml/core/ContactList;

    move-result-object p1

    return-object p1
.end method
