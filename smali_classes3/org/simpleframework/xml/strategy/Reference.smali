.class Lorg/simpleframework/xml/strategy/Reference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/Reference;->a:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/Reference;->b:Ljava/lang/Class;

    return-void
.end method
