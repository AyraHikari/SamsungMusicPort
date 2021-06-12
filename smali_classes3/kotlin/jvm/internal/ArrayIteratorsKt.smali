.class public final Lkotlin/jvm/internal/ArrayIteratorsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a([Z)Lkotlin/collections/BooleanIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lkotlin/jvm/internal/ArrayBooleanIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayBooleanIterator;-><init>([Z)V

    check-cast v0, Lkotlin/collections/BooleanIterator;

    return-object v0
.end method

.method public static final a([B)Lkotlin/collections/ByteIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v0, Lkotlin/jvm/internal/ArrayByteIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayByteIterator;-><init>([B)V

    check-cast v0, Lkotlin/collections/ByteIterator;

    return-object v0
.end method

.method public static final a([C)Lkotlin/collections/CharIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lkotlin/jvm/internal/ArrayCharIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayCharIterator;-><init>([C)V

    check-cast v0, Lkotlin/collections/CharIterator;

    return-object v0
.end method

.method public static final a([D)Lkotlin/collections/DoubleIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lkotlin/jvm/internal/ArrayDoubleIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayDoubleIterator;-><init>([D)V

    check-cast v0, Lkotlin/collections/DoubleIterator;

    return-object v0
.end method

.method public static final a([F)Lkotlin/collections/FloatIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    new-instance v0, Lkotlin/jvm/internal/ArrayFloatIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayFloatIterator;-><init>([F)V

    check-cast v0, Lkotlin/collections/FloatIterator;

    return-object v0
.end method

.method public static final a([I)Lkotlin/collections/IntIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lkotlin/jvm/internal/ArrayIntIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayIntIterator;-><init>([I)V

    check-cast v0, Lkotlin/collections/IntIterator;

    return-object v0
.end method

.method public static final a([J)Lkotlin/collections/LongIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Lkotlin/jvm/internal/ArrayLongIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayLongIterator;-><init>([J)V

    check-cast v0, Lkotlin/collections/LongIterator;

    return-object v0
.end method

.method public static final a([S)Lkotlin/collections/ShortIterator;
    .locals 1

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lkotlin/jvm/internal/ArrayShortIterator;

    invoke-direct {v0, p0}, Lkotlin/jvm/internal/ArrayShortIterator;-><init>([S)V

    check-cast v0, Lkotlin/collections/ShortIterator;

    return-object v0
.end method
