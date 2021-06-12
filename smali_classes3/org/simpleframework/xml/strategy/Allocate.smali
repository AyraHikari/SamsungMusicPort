.class Lorg/simpleframework/xml/strategy/Allocate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private a:Lorg/simpleframework/xml/strategy/Value;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/Allocate;->a:Lorg/simpleframework/xml/strategy/Value;

    .line 60
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/Allocate;->c:Ljava/util/Map;

    .line 61
    iput-object p3, p0, Lorg/simpleframework/xml/strategy/Allocate;->b:Ljava/lang/String;

    return-void
.end method
