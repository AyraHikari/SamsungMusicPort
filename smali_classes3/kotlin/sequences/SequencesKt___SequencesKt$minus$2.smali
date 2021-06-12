.class public final Lkotlin/sequences/SequencesKt___SequencesKt$minus$2;
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

.field final synthetic b:[Ljava/lang/Object;


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

    .line 1457
    iget-object v0, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2;->b:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->b([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 1458
    iget-object v1, p0, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2;->a:Lkotlin/sequences/Sequence;

    new-instance v2, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2$iterator$1;

    invoke-direct {v2, v0}, Lkotlin/sequences/SequencesKt___SequencesKt$minus$2$iterator$1;-><init>(Ljava/util/HashSet;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/sequences/SequencesKt;->b(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
