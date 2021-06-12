.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/GridLayoutManager;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IIII)V
    .locals 7

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 21
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_7

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->k:Ljava/util/ArrayList;

    const/4 p1, 0x3

    .line 37
    new-array p1, p1, [Ljava/lang/Boolean;

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v2

    if-ne p3, v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p1, v1

    if-ne p4, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Iterable;

    .line 177
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    .line 179
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_4

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()V

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v2, v1, :cond_6

    const-string p1, "Ui"

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridItemDecoration | init() - itemWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", outerSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", innerSpace: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    new-instance v0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->k:Ljava/util/ArrayList;

    check-cast v3, Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$SpanSizeLookup;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/GridLayoutManager;Ljava/util/List;)V

    check-cast v0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 48
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    new-instance v6, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$2;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration$2;-><init>(Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;IIII)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;

    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/OnMeasureListener;)V

    return-void

    .line 38
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least two or more dimension should be specific."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 21
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.GridLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, -0x1

    if-eqz p7, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    move v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    move v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 v5, -0x1

    goto :goto_2

    :cond_2
    move v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v6, -0x1

    goto :goto_3

    :cond_3
    move v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    .line 18
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;IIII)V

    return-void
.end method

.method private final a(IIII)V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq p4, v3, :cond_0

    if-ne p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    if-eq p3, v3, :cond_0

    mul-int/lit8 p1, p2, 0x2

    add-int/lit8 v3, p4, -0x1

    mul-int v3, v3, p3

    add-int/2addr p1, v3

    sub-int p1, v0, p1

    .line 97
    div-int/2addr p1, p4

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    .line 98
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    .line 99
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    .line 100
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto/16 :goto_2

    :cond_0
    if-eq p4, v3, :cond_1

    if-eq p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    if-eq p3, v3, :cond_1

    .line 103
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    mul-int p1, p1, p4

    add-int/lit8 p2, p4, -0x1

    mul-int p2, p2, p3

    add-int/2addr p1, p2

    sub-int p1, v0, p1

    .line 104
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    .line 105
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto/16 :goto_2

    :cond_1
    if-eq p4, v3, :cond_3

    if-eq p1, v3, :cond_3

    if-eq p2, v3, :cond_3

    if-ne p3, v3, :cond_3

    if-ne p4, v2, :cond_2

    return-void

    .line 110
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    .line 111
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    mul-int p1, p1, p4

    sub-int p1, v0, p1

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    add-int/lit8 p2, p4, -0x1

    .line 112
    div-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1, p4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_2

    :cond_3
    if-ne p4, v3, :cond_c

    if-ne p1, v3, :cond_c

    if-eq p2, v3, :cond_c

    if-eq p3, v3, :cond_c

    .line 116
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    .line 117
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    .line 119
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    mul-int/lit8 p2, p2, 0x2

    sub-int p2, v0, p2

    add-int p4, p2, p3

    .line 120
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->h:I

    add-int/2addr v3, p3

    div-int/2addr p4, v3

    if-lez p4, :cond_b

    .line 121
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v3, p4}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    if-eq p1, p4, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 124
    :goto_0
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->g:I

    if-eq v4, v0, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    .line 125
    :goto_1
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->g:I

    if-eqz v4, :cond_6

    add-int/lit8 v5, p4, -0x1

    mul-int p3, p3, v5

    sub-int/2addr p2, p3

    .line 129
    div-int/2addr p2, p4

    iput p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    :cond_6
    if-nez v4, :cond_7

    if-eqz v3, :cond_8

    .line 131
    :cond_7
    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    const-string p2, "Ui"

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GridItemDecoration | calculate() - spanCount: ["

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], changedWidth: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :goto_2
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    div-int/lit8 p1, p1, 0x2

    .line 142
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    if-le p2, p1, :cond_9

    .line 143
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    sub-int/2addr p2, p1

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setClipToPadding(Z)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 146
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingTop()I

    move-result p3

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getPaddingBottom()I

    move-result p4

    .line 145
    invoke-virtual {p1, p2, p3, p2, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setPaddingRelative(IIII)V

    const-string p1, "Ui"

    .line 148
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GridItemDecoration | calculate() - horizontalPadding: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 150
    :cond_9
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    if-ge p2, p1, :cond_a

    .line 151
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->f:Z

    const-string p1, "Ui"

    const-string p2, "GridItemDecoration | calculate() - outerSpace is less than halfInnerSpace."

    .line 152
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_a
    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->e:Z

    const-string p1, "Ui"

    .line 159
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "GridItemDecoration | calculate() - measuredWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", itemWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", spanCount: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", outerSpace: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", innerSpace: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    return-void

    .line 137
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Should be extended this class."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;IIII)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a(IIII)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->k:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->h:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->i:I

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->j:I

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    .line 58
    iget-boolean p4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->e:Z

    if-eqz p4, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 59
    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p4

    .line 60
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->k:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 63
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p3}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->a:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    invoke-virtual {v0, p4, p3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p4

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getMeasuredWidth()I

    move-result v0

    div-int/2addr v0, p3

    .line 68
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->f:Z

    if-eqz v1, :cond_2

    if-nez p4, :cond_2

    .line 69
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 70
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    sub-int/2addr v0, p3

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 72
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->f:Z

    if-eqz v1, :cond_3

    add-int/lit8 p3, p3, -0x1

    if-ne p4, p3, :cond_3

    .line 73
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    sub-int/2addr v0, p3

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 74
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->c:I

    iput p3, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 76
    :cond_3
    iget-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->f:Z

    if-eqz p3, :cond_4

    .line 77
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    .line 78
    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 79
    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 82
    :cond_4
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->d:I

    div-int/lit8 p3, p3, 0x2

    .line 83
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 84
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 87
    :goto_0
    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->j:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    iput p3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->b:I

    iget p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/GridItemDecoration;->i:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_5
    :goto_1
    return-void
.end method
