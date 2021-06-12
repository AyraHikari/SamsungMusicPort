.class public final Lcom/samsung/android/app/musiclibrary/ui/util/GraphicsUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final varargs a(I[Landroid/graphics/Paint;)Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I[",
            "Landroid/graphics/Paint;",
            ")",
            "Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "paints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 114
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/graphics/Paint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 362
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/util/GraphicsUtilsKt$paintAlpha$$inlined$paintFieldUpdater$1;

    invoke-direct {v0, p1, p0, p0}, Lcom/samsung/android/app/musiclibrary/ui/util/GraphicsUtilsKt$paintAlpha$$inlined$paintFieldUpdater$1;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/util/PaintFieldUpdater;

    return-object v0
.end method
