.class Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/util/Resolver$Stack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TM;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/simpleframework/xml/util/Resolver$Stack;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Resolver$Stack;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->a:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-virtual {p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->size()I

    move-result p1

    iput p1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/simpleframework/xml/util/Match;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->a:Lorg/simpleframework/xml/util/Resolver$Stack;

    iget v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->b:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/util/Match;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 402
    iget v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->a()Lorg/simpleframework/xml/util/Match;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 411
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->a:Lorg/simpleframework/xml/util/Resolver$Stack;

    iget v1, p0, Lorg/simpleframework/xml/util/Resolver$Stack$Sequence;->b:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/util/Resolver$Stack;->purge(I)V

    return-void
.end method
