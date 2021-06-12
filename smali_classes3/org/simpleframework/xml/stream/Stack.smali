.class Lorg/simpleframework/xml/stream/Stack;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bottom()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 60
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 105
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/Stack;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public top()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/Stack;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 76
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
