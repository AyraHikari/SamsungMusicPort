.class Lorg/simpleframework/xml/stream/OutputStack$Sequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/OutputStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/simpleframework/xml/stream/OutputStack;

.field private b:I


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputStack;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->a:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result p1

    iput p1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->b:I

    return-void
.end method


# virtual methods
.method public a()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->a:Lorg/simpleframework/xml/stream/OutputStack;

    iget v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->b:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 190
    iget v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->b:I

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

    .line 152
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->a()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 199
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->a:Lorg/simpleframework/xml/stream/OutputStack;

    iget v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->b:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method
