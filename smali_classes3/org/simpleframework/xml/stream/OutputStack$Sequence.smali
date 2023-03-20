.class Lorg/simpleframework/xml/stream/OutputStack$Sequence;
.super Ljava/lang/Object;
.source "OutputStack.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/OutputStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.field private cursor:I

.field public final synthetic this$0:Lorg/simpleframework/xml/stream/OutputStack;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/OutputStack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->this$0:Lorg/simpleframework/xml/stream/OutputStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->next()Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->this$0:Lorg/simpleframework/xml/stream/OutputStack;

    iget v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->this$0:Lorg/simpleframework/xml/stream/OutputStack;

    iget v1, p0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;->cursor:I

    invoke-virtual {v0, v1}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    return-void
.end method
