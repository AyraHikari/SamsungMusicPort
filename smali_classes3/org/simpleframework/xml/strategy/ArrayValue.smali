.class Lorg/simpleframework/xml/strategy/ArrayValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/simpleframework/xml/strategy/Value;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->a:Ljava/lang/Class;

    .line 59
    iput p2, p0, Lorg/simpleframework/xml/strategy/ArrayValue;->b:I

    return-void
.end method
