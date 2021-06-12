.class Lorg/simpleframework/xml/stream/InputAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/stream/InputNode;


# instance fields
.field private a:Lorg/simpleframework/xml/stream/InputNode;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->a:Lorg/simpleframework/xml/stream/InputNode;

    .line 74
    iput-object p3, p0, Lorg/simpleframework/xml/stream/InputAttribute;->e:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/Attribute;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->b:Ljava/lang/String;

    .line 88
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->c:Ljava/lang/String;

    .line 89
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->e()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->f:Ljava/lang/Object;

    .line 90
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->e:Ljava/lang/String;

    .line 91
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->d:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->a:Lorg/simpleframework/xml/stream/InputNode;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->e:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "attribute %s=\'%s\'"

    const/4 v1, 0x2

    .line 276
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->d:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->e:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
