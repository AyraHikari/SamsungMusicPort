.class public final Lkotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/text/DelimitedRangesSequence;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ranges/IntRange;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/text/DelimitedRangesSequence;

.field private b:I

.field private c:I

.field private d:I

.field private e:Lkotlin/ranges/IntRange;

.field private f:I


# direct methods
.method constructor <init>(Lkotlin/text/DelimitedRangesSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1069
    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1070
    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    .line 1071
    invoke-static {p1}, Lkotlin/text/DelimitedRangesSequence;->d(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v0

    invoke-static {p1}, Lkotlin/text/DelimitedRangesSequence;->b(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lkotlin/ranges/RangesKt;->a(III)I

    move-result p1

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    .line 1072
    iget p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    return-void
.end method

.method private final b()V
    .locals 6

    .line 1077
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1078
    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v0, 0x0

    .line 1079
    check-cast v0, Lkotlin/ranges/IntRange;

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    goto/16 :goto_1

    .line 1081
    :cond_0
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->a(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:I

    add-int/2addr v0, v3

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:I

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:I

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->a(Lkotlin/text/DelimitedRangesSequence;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->b(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1082
    :cond_2
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    new-instance v1, Lkotlin/ranges/IntRange;

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->b(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->e(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    .line 1083
    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    goto :goto_0

    .line 1085
    :cond_3
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lkotlin/text/DelimitedRangesSequence;->c(Lkotlin/text/DelimitedRangesSequence;)Lkotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->b(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    .line 1087
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    new-instance v1, Lkotlin/ranges/IntRange;

    iget-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a:Lkotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lkotlin/text/DelimitedRangesSequence;->b(Lkotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt;->e(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    .line 1088
    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    goto :goto_0

    .line 1090
    :cond_4
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1091
    iget v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    invoke-static {v4, v2}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    iput-object v4, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    add-int/2addr v2, v0

    .line 1092
    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    .line 1093
    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    iput v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    .line 1096
    :goto_0
    iput v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lkotlin/ranges/IntRange;
    .locals 3

    .line 1101
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1102
    invoke-direct {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b()V

    .line 1103
    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1107
    check-cast v2, Lkotlin/ranges/IntRange;

    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    .line 1108
    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    return-object v0

    .line 1105
    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1113
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1114
    invoke-direct {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b()V

    .line 1115
    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1069
    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a()Lkotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
