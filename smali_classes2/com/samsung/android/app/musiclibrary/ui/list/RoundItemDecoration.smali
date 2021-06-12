.class public final Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RoundableItemDecoration;


# instance fields
.field private a:I

.field private b:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

.field private c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

.field private d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

.field private e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

.field private final f:[I


# direct methods
.method public varargs constructor <init>([I)V
    .locals 1

    const-string v0, "subHeaderViewTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;)Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez p0, :cond_0

    const-string v0, "outerRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 7

    .line 46
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 47
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    .line 158
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 159
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "getChildAt(index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v5

    .line 52
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    invoke-static {v6, v5}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 14

    move-object v0, p0

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    const-string v2, "adapter"

    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 60
    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    sub-int/2addr v2, v5

    if-ne v3, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/4 v7, -0x1

    if-eqz v6, :cond_3

    const/4 v8, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v3, -0x1

    .line 67
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    :goto_2
    if-eqz v2, :cond_4

    const/4 v1, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v3, v5

    .line 69
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v1

    .line 71
    :goto_3
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    invoke-static {v3, v8}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v3

    .line 72
    iget-object v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    invoke-static {v8, v1}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v1

    .line 74
    iget v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a:I

    const/4 v9, 0x3

    const/16 v10, 0xf

    if-eq v8, v9, :cond_6

    iget v8, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a:I

    if-ne v8, v10, :cond_5

    goto :goto_4

    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, 0x1

    .line 75
    :goto_5
    iget v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a:I

    const/16 v12, 0xc

    if-eq v11, v12, :cond_8

    iget v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a:I

    if-ne v11, v10, :cond_7

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v11, 0x1

    .line 77
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v13

    if-lez v13, :cond_9

    const/4 v13, 0x1

    goto :goto_8

    :cond_9
    const/4 v13, 0x0

    :goto_8
    if-eqz v6, :cond_a

    if-eqz v2, :cond_a

    :goto_9
    const/16 v9, 0xf

    goto :goto_b

    :cond_a
    if-eqz v6, :cond_b

    if-eqz v1, :cond_b

    if-eqz v8, :cond_b

    :goto_a
    const/16 v9, 0xc

    goto :goto_b

    :cond_b
    if-eqz v6, :cond_c

    if-eqz v1, :cond_c

    if-nez v8, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v6, :cond_d

    if-nez v1, :cond_d

    if-nez v8, :cond_d

    goto :goto_b

    :cond_d
    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    if-eqz v11, :cond_e

    goto :goto_b

    :cond_e
    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    if-nez v11, :cond_f

    if-eqz v13, :cond_f

    goto :goto_b

    :cond_f
    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    if-nez v11, :cond_10

    if-nez v13, :cond_10

    goto :goto_9

    :cond_10
    if-eqz v2, :cond_11

    if-nez v3, :cond_11

    if-nez v11, :cond_11

    if-nez v13, :cond_11

    goto :goto_a

    :cond_11
    if-eqz v3, :cond_12

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    if-eqz v3, :cond_13

    goto :goto_b

    :cond_13
    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    const/4 v9, 0x0

    :goto_b
    if-nez v9, :cond_15

    return-void

    .line 95
    :cond_15
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez v1, :cond_16

    .line 96
    new-instance v1, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "parent.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    .line 98
    :cond_16
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez v1, :cond_17

    const-string v2, "linearItemRoundHelper"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v1, v9, v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(II)V

    .line 99
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez v1, :cond_18

    const-string v2, "linearItemRoundHelper"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_18
    move-object v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v1, p1, v3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method private final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V
    .locals 2

    .line 148
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "parent.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    .line 151
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez p2, :cond_1

    const-string v0, "gridItemRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p2, p4, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(II)V

    .line 152
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez p2, :cond_2

    const-string p4, "gridItemRoundHelper"

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;)Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez p0, :cond_0

    const-string v0, "linearItemRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 11

    .line 103
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 104
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Landroid/support/v7/widget/GridLayoutManager;

    .line 105
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    .line 107
    move-object v3, p2

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_6

    .line 163
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "getChildAt(index)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2, v6}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    if-gez v7, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    if-ne v8, v2, :cond_1

    .line 113
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    .line 114
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    invoke-static {v10, v9}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-direct {p0, p1, p2, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v9, v7, -0x1

    if-gez v9, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    .line 120
    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    invoke-static {v10, v9}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/widget/RecyclerViewExtensionKt;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v9

    if-ne v9, v7, :cond_5

    if-ne v8, v2, :cond_3

    const/4 v7, 0x3

    .line 122
    invoke-direct {p0, p1, p2, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_4

    check-cast v9, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v9

    .line 125
    div-int/2addr v9, v8

    if-nez v9, :cond_5

    const/4 v9, 0x1

    .line 127
    invoke-direct {p0, p1, p2, v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    .line 129
    div-int v6, v2, v8

    add-int/2addr v7, v6

    sub-int/2addr v7, v9

    .line 131
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "lastInRowChild"

    .line 132
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-direct {p0, p1, p2, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)V

    goto :goto_1

    .line 124
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.GridLayoutManager.LayoutParams"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void

    .line 104
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.GridLayoutManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 2

    .line 140
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "parent.context"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    .line 143
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    if-nez p2, :cond_1

    const-string v0, "gridItemSubHeaderRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;->a(II)V

    .line 144
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    if-nez p2, :cond_2

    const-string v0, "gridItemSubHeaderRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;->a(Landroid/graphics/Canvas;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->c:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    return-void
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;)Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->d:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/SubHeaderRoundHelper;

    if-nez p0, :cond_0

    const-string v0, "gridItemSubHeaderRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;)Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->e:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez p0, :cond_0

    const-string v0, "gridItemRoundHelper"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a:I

    return-void
.end method

.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    const-string p3, "parent"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;

    iget-object p3, p3, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p3, :cond_0

    .line 31
    new-instance p3, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "parent.context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v3, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;-><init>(Landroid/content/Context;Z)V

    .line 32
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a:I

    invoke-static {p3, v3, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;IIILjava/lang/Object;)V

    .line 31
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    .line 35
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b:Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;

    if-nez p3, :cond_1

    const-string v3, "outerRoundHelper"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p3, p1, v1, v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/RoundHelper;Landroid/graphics/Canvas;Landroid/view/View;ILjava/lang/Object;)V

    .line 37
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->f:[I

    array-length p3, p3

    if-nez p3, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-eqz v2, :cond_3

    return-void

    .line 39
    :cond_3
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 40
    instance-of p3, p3, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz p3, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 41
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RoundItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    return-void
.end method
