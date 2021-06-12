.class Lorg/simpleframework/xml/stream/OutputAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/OutputNode;


# instance fields
.field private a:Lorg/simpleframework/xml/stream/NamespaceMap;

.field private b:Lorg/simpleframework/xml/stream/OutputNode;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/OutputNode;->d()Lorg/simpleframework/xml/stream/NamespaceMap;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->a:Lorg/simpleframework/xml/stream/NamespaceMap;

    .line 67
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->b:Lorg/simpleframework/xml/stream/OutputNode;

    .line 68
    iput-object p3, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->e:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 229
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->a:Lorg/simpleframework/xml/stream/NamespaceMap;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/simpleframework/xml/stream/NamespaceMap;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Lorg/simpleframework/xml/stream/NamespaceMap;
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->a:Lorg/simpleframework/xml/stream/NamespaceMap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "attribute %s=\'%s\'"

    const/4 v1, 0x2

    .line 351
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->d:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/stream/OutputAttribute;->e:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
