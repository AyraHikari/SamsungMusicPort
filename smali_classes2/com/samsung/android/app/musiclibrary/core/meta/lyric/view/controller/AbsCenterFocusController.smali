.class public abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/AbsCenterFocusController;
.super Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
.source "SourceFile"


# static fields
.field private static final FOCUSABLE_RANGE:I = 0x14


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
            "*>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V

    return-void
.end method


# virtual methods
.method protected chooseFocusPosition(Landroid/support/v7/widget/LinearLayoutManager;III)I
    .locals 6

    .line 21
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 v0, p2, -0x14

    add-int/lit8 p2, p2, 0x14

    add-int v1, p3, p4

    .line 27
    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-gt p3, p4, :cond_5

    .line 30
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 34
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v5

    if-gt v5, v0, :cond_1

    if-gt p2, v4, :cond_1

    goto :goto_3

    :cond_1
    if-gt v0, v5, :cond_2

    if-gt v5, p2, :cond_2

    sub-int v4, p2, v5

    goto :goto_1

    :cond_2
    if-gt v0, v4, :cond_3

    if-gt v4, p2, :cond_3

    sub-int/2addr v4, v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-ge v3, v4, :cond_4

    move v1, p3

    move v3, v4

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    move p3, v1

    :goto_3
    return p3
.end method
