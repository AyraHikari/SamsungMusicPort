.class public final Lkotlin/sequences/SequencesKt___SequencesKt$minus$4;
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

.field final synthetic b:Lkotlin/sequences/Sequence;


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

    .line 1500
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$4;->b:Lkotlin/sequences/Sequence;

    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->b(Lkotlin/sequences/Sequence;)Ljava/util/HashSet;

    move-result-object v0

    .line 1501
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$4;->a:Lkotlin/sequences/Sequence;

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 1504
    :cond_0
    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$4;->a:Lkotlin/sequences/Sequence;

    new-instance v2, Lkotlin/sequences/SequencesKt___SequencesKt$minus$4$iterator$1;

    invoke-direct {v2, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$4$iterator$1;-><init>(Ljava/util/HashSet;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->b(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
