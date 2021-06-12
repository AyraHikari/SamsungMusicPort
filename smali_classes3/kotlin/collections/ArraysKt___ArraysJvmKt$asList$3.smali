.class public final Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/ArraysKt___ArraysJvmKt;->a([I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/AbstractList<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final synthetic b:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 73
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    array-length v0, v0

    return v0
.end method

.method public a(I)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result p1

    return p1
.end method

.method public b(I)Ljava/lang/Integer;
    .locals 1

    .line 76
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    aget p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public c(I)I
    .locals 1

    .line 77
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->b([II)I

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 72
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)I
    .locals 1

    .line 78
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->c([II)I

    move-result p1

    return p1
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 72
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->c(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->b:[I

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 72
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlin/collections/ArraysKt___ArraysJvmKt$asList$3;->d(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
