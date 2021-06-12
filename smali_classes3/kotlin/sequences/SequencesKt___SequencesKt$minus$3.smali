.class public final Lkotlin/sequences/SequencesKt___SequencesKt$minus$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/sequences/Sequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/sequences/SequencesKt___SequencesKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/sequences/Sequence<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/sequences/Sequence;

.field final synthetic b:Ljava/lang/Iterable;


# virtual methods
.method public a()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1477
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3;->b:Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 1478
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1479
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3;->a:Lkotlin/sequences/Sequence;

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1481
    :cond_0
    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3;->a:Lkotlin/sequences/Sequence;

    new-instance v2, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3$iterator$1;

    invoke-direct {v2, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$3$iterator$1;-><init>(Ljava/util/Collection;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->b(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
