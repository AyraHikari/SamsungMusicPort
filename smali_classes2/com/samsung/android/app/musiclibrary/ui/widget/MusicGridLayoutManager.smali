.class public Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 19
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 20
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;)V

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicGridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method
