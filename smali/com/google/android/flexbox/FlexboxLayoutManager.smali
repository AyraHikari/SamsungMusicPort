.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;
.implements Lcom/google/android/flexbox/FlexContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic a:Z

.field private static final b:Landroid/graphics/Rect;


# instance fields
.field private A:I

.field private B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/android/flexbox/FlexboxHelper;

.field private l:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private m:Landroid/support/v7/widget/RecyclerView$State;

.field private n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

.field private o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

.field private p:Landroid/support/v7/widget/OrientationHelper;

.field private q:Landroid/support/v7/widget/OrientationHelper;

.field private r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Landroid/content/Context;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 201
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .line 220
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:I

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 105
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    .line 125
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 147
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/high16 v1, -0x80000000

    .line 152
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    .line 157
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:I

    .line 162
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:I

    .line 176
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    .line 189
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    .line 195
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 221
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(I)V

    .line 222
    invoke-virtual {p0, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(I)V

    const/4 p2, 0x4

    .line 223
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)V

    const/4 p2, 0x1

    .line 224
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 225
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 243
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:I

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 105
    new-instance v1, Lcom/google/android/flexbox/FlexboxHelper;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/FlexboxHelper;-><init>(Lcom/google/android/flexbox/FlexContainer;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    .line 125
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 147
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/high16 v1, -0x80000000

    .line 152
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    .line 157
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:I

    .line 162
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:I

    .line 176
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    .line 189
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    .line 195
    new-instance v0, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    .line 244
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p2

    .line 245
    iget p3, p2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    const/4 p4, 0x1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 254
    :pswitch_0
    iget-boolean p2, p2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    .line 255
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 257
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(I)V

    goto :goto_0

    .line 247
    :pswitch_1
    iget-boolean p2, p2, Landroid/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    if-eqz p2, :cond_1

    .line 248
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 250
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(I)V

    .line 261
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(I)V

    const/4 p2, 0x4

    .line 262
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)V

    .line 263
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 264
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/content/Context;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 6

    .line 1947
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 1950
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g()V

    .line 1951
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1953
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    if-lez p1, :cond_2

    .line 1959
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1961
    invoke-direct {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(II)V

    .line 1963
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1964
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p2, p3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    if-le v3, v4, :cond_6

    neg-int p1, v2

    mul-int p1, p1, v4

    goto :goto_2

    :cond_5
    if-le v3, v4, :cond_6

    mul-int p1, v2, v4

    .line 1974
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1975
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method private a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 2

    .line 790
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    .line 794
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    .line 802
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    .line 810
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    .line 812
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    return p2

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 9

    .line 1274
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1275
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1276
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1278
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1280
    :cond_1
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 1281
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    const/4 v3, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v4

    :goto_0
    if-gtz v2, :cond_2

    .line 1284
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 1285
    invoke-static {p3, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Landroid/support/v7/widget/RecyclerView$State;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1286
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/FlexLine;

    .line 1287
    iget v6, v5, Lcom/google/android/flexbox/FlexLine;->o:I

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1288
    invoke-direct {p0, v5, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    add-int/2addr v3, v6

    if-nez v4, :cond_3

    .line 1290
    iget-boolean v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v6, :cond_3

    .line 1291
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->a()I

    move-result v7

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    mul-int v7, v7, v8

    sub-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1293
    :cond_3
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->a()I

    move-result v7

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    mul-int v7, v7, v8

    add-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1296
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/flexbox/FlexLine;->a()I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_0

    .line 1298
    :cond_4
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    sub-int/2addr p2, v3

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1299
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    if-eq p2, v1, :cond_6

    .line 1300
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1301
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    if-gez p2, :cond_5

    .line 1302
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p2

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    add-int/2addr p2, v1

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1304
    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    .line 1306
    :cond_6
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 3

    .line 2211
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2214
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2215
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g()V

    .line 2216
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    .line 2217
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2218
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 2222
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2223
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 2224
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private a(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 1

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    return p1

    .line 1438
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    return p0
.end method

.method private a(IIZ)Landroid/view/View;
    .locals 3

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq p1, p2, :cond_2

    .line 2508
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2509
    invoke-direct {p0, v1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    .line 2135
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    .line 2137
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->h:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 2139
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2140
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 2143
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2144
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2145
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 2149
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2150
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    move-object p1, v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private a(II)V
    .locals 10

    .line 2021
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2022
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2023
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    .line 2026
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2028
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    .line 2029
    iget-boolean v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    const/4 v6, -0x1

    if-ne p1, v4, :cond_8

    .line 2031
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2032
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v8, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2033
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 2034
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v8, v8, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget v8, v8, v7

    .line 2035
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/FlexLine;

    .line 2039
    invoke-direct {p0, p1, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p1

    .line 2040
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v8, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2041
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2042
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v7, v7, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    if-gt v7, v8, :cond_3

    .line 2043
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_2

    .line 2045
    :cond_3
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v8, v8, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2046
    invoke-static {v9}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v9

    aget v8, v8, v9

    .line 2045
    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    :goto_2
    if-eqz v5, :cond_5

    .line 2050
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2051
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2052
    invoke-virtual {v7}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    add-int/2addr p1, v7

    .line 2051
    invoke-static {v5, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2053
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    if-ltz v5, :cond_4

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2054
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    .line 2053
    :cond_4
    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_3

    .line 2056
    :cond_5
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2057
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2058
    invoke-virtual {v5}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v5

    sub-int/2addr p1, v5

    .line 2057
    invoke-static {v3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2061
    :goto_3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    if-eq p1, v6, :cond_6

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2062
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_e

    :cond_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2063
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v3

    if-gt p1, v3, :cond_e

    .line 2067
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p1

    sub-int v7, p2, p1

    .line 2068
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->a()V

    if-lez v7, :cond_e

    if-eqz v0, :cond_7

    .line 2071
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2073
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v5, v1

    move v6, v2

    .line 2071
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->a(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_4

    .line 2075
    :cond_7
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2077
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v5, v1

    move v6, v2

    .line 2075
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->c(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 2079
    :goto_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2080
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 2079
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/flexbox/FlexboxHelper;->a(III)V

    .line 2081
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->a(I)V

    goto/16 :goto_7

    .line 2085
    :cond_8
    invoke-virtual {p0, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2087
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2088
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2089
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget v1, v1, v0

    .line 2090
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/FlexLine;

    .line 2094
    invoke-direct {p0, p1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p1

    .line 2096
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2097
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_9

    const/4 v1, 0x0

    :cond_9
    if-lez v1, :cond_a

    .line 2102
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 2105
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexLine;->b()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_5

    .line 2107
    :cond_a
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2109
    :goto_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-lez v1, :cond_b

    sub-int/2addr v1, v4

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    if-eqz v5, :cond_d

    .line 2112
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2113
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2114
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr p1, v1

    .line 2113
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2115
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 2116
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    .line 2115
    :cond_c
    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_7

    .line 2118
    :cond_d
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2119
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2120
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr p1, v1

    .line 2119
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 2123
    :cond_e
    :goto_7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 0

    :goto_0
    if-lt p3, p2, :cond_0

    .line 1430
    invoke-virtual {p0, p3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 2

    .line 1310
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1313
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1315
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    goto :goto_0

    .line 1317
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1047
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1058
    :cond_1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    const/4 p1, 0x0

    .line 1059
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1060
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    return-void
.end method

.method private a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1711
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    goto :goto_0

    .line 1713
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1715
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz p3, :cond_1

    .line 1716
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1718
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1719
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 1718
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1721
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1722
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1723
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1724
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1725
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/high16 v1, -0x80000000

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1726
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    if-eqz p2, :cond_2

    .line 1728
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 1729
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 1730
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 1731
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    .line 1732
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 1733
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->i(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1734
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexLine;->b()I

    move-result p1

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)Z
    .locals 5

    .line 1065
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1066
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto/16 :goto_5

    .line 1069
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/high16 v3, -0x80000000

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v4

    if-lt v0, v4, :cond_3

    goto/16 :goto_4

    .line 1078
    :cond_3
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1079
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v4

    aget v0, v0, v4

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1080
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1081
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1082
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result p3

    add-int/2addr p1, p3

    .line 1081
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1083
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1084
    invoke-static {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    return v4

    .line 1088
    :cond_4
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    if-ne p1, v3, :cond_c

    .line 1089
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1091
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1092
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v0

    if-le p3, v0, :cond_5

    .line 1093
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    return v4

    .line 1096
    :cond_5
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1097
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p3, v0

    if-gez p3, :cond_6

    .line 1099
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1100
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    return v4

    .line 1104
    :cond_6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1105
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p3, v0

    if-gez p3, :cond_7

    .line 1107
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1108
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    return v4

    .line 1111
    :cond_7
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p3

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1112
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1113
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result p3

    add-int/2addr p1, p3

    goto :goto_1

    :cond_8
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1114
    invoke-virtual {p3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    .line 1111
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    goto :goto_2

    .line 1116
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_b

    .line 1117
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 1118
    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    if-ge p3, p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 1120
    :cond_b
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    :goto_2
    return v4

    .line 1126
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p1

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz p1, :cond_d

    .line 1127
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1128
    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result p3

    sub-int/2addr p1, p3

    .line 1127
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    goto :goto_3

    .line 1130
    :cond_d
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    :goto_3
    return v4

    .line 1070
    :cond_e
    :goto_4
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    .line 1071
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    return v1

    :cond_f
    :goto_5
    return v1
.end method

.method private a(Landroid/view/View;I)Z
    .locals 4

    .line 1363
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v0, :cond_1

    .line 1364
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1365
    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    if-gt p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 2324
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2325
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMeasurementCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2326
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2327
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Landroid/view/View;Z)Z
    .locals 10

    .line 2392
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v0

    .line 2393
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 2394
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2395
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2396
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;)I

    move-result v4

    .line 2397
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d(Landroid/view/View;)I

    move-result v5

    .line 2398
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/view/View;)I

    move-result v6

    .line 2399
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(Landroid/view/View;)I

    move-result p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v0, v4, :cond_0

    if-lt v2, v6, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    if-lt v6, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-gt v1, v5, :cond_3

    if-lt v3, p1, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-ge v5, v3, :cond_5

    if-lt p1, v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz p2, :cond_7

    if-eqz v9, :cond_6

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v7, 0x0

    :goto_6
    return v7

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_7
    return v7
.end method

.method private b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 2

    .line 828
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 833
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    goto :goto_1

    :cond_1
    return v1

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    neg-int v0, v0

    .line 840
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    add-int/2addr p1, p2

    if-eqz p4, :cond_3

    .line 850
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    .line 852
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 2246
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2249
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2250
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    .line 2251
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2252
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    if-nez v0, :cond_1

    goto :goto_2

    .line 2255
    :cond_1
    sget-boolean p1, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object p1, p1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2256
    :cond_3
    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 2257
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 2258
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2259
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 2258
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2260
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget p1, v4, p1

    if-eqz p1, :cond_5

    const/4 v4, -0x1

    if-ne p1, v4, :cond_4

    goto :goto_1

    .line 2264
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget v1, v1, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float p1, p1, v0

    .line 2268
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2269
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2270
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2268
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v1

    :cond_6
    :goto_2
    return v1
.end method

.method private b(Landroid/view/View;)I
    .locals 1

    .line 2360
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2361
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private b(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1443
    sget-boolean v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->b:[J

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1445
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingLeft()I

    move-result v1

    .line 1446
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingRight()I

    move-result v2

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v3

    .line 1449
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1450
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 1451
    iget v5, v8, Lcom/google/android/flexbox/FlexLine;->g:I

    sub-int/2addr v4, v5

    :cond_2
    move v9, v4

    .line 1453
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v10

    .line 1460
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v11, 0x1

    packed-switch v4, :pswitch_data_0

    .line 1496
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1488
    :pswitch_0
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->h:I

    if-eqz v4, :cond_3

    .line 1489
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->h:I

    add-int/2addr v6, v11

    int-to-float v6, v6

    div-float/2addr v4, v6

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v4

    goto :goto_5

    .line 1474
    :pswitch_1
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->h:I

    if-eqz v4, :cond_4

    .line 1475
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v7, v8, Lcom/google/android/flexbox/FlexLine;->h:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    int-to-float v1, v1

    div-float v6, v4, v6

    add-float/2addr v1, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    goto :goto_5

    :pswitch_2
    int-to-float v1, v1

    .line 1483
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->h:I

    if-eq v4, v11, :cond_5

    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->h:I

    sub-int/2addr v4, v11

    int-to-float v4, v4

    goto :goto_3

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1484
    :goto_3
    iget v6, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float v4, v6, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_5

    :pswitch_3
    int-to-float v1, v1

    .line 1470
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    .line 1471
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    goto :goto_4

    .line 1466
    :pswitch_4
    iget v4, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 1467
    iget v3, v8, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/4 v4, 0x0

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    goto :goto_5

    :pswitch_5
    int-to-float v1, v1

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_4
    const/4 v4, 0x0

    .line 1499
    :goto_5
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1500
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1501
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v3, 0x0

    .line 1506
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->b()I

    move-result v13

    move v14, v10

    :goto_6
    add-int v4, v10, v13

    if-ge v14, v4, :cond_a

    .line 1508
    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_6

    goto/16 :goto_a

    .line 1513
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    if-ne v4, v11, :cond_7

    .line 1514
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1515
    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    :goto_7
    move/from16 v16, v3

    goto :goto_8

    .line 1517
    :cond_7
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1518
    invoke-virtual {v0, v15, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1525
    :goto_8
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->b:[J

    aget-wide v4, v3, v14

    .line 1526
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->a(J)I

    move-result v3

    .line 1527
    iget-object v6, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v6, v4, v5}, Lcom/google/android/flexbox/FlexboxHelper;->b(J)I

    move-result v4

    .line 1528
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1529
    invoke-direct {v0, v15, v3, v4, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1530
    invoke-virtual {v15, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1533
    :cond_8
    iget v3, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v17, v1, v3

    .line 1534
    iget v1, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float v18, v2, v1

    .line 1536
    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    add-int v5, v9, v1

    .line 1537
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v1, :cond_9

    .line 1538
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    .line 1539
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v4, v2, v3

    .line 1540
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1541
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v19, v5, v2

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v11, v7

    move/from16 v7, v19

    .line 1538
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    goto :goto_9

    :cond_9
    move-object v11, v7

    .line 1543
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    .line 1544
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1545
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v2, v3

    .line 1546
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v7, v5, v2

    move-object v2, v15

    move-object/from16 v3, p1

    .line 1543
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/FlexboxHelper;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V

    .line 1548
    :goto_9
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    add-float v17, v17, v1

    .line 1550
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    sub-float v18, v18, v1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    :goto_a
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto/16 :goto_6

    .line 1553
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1554
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->a()I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    return p0
.end method

.method private b(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;
    .locals 5

    .line 2167
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    .line 2169
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->h:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    .line 2171
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 2172
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 2175
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 2178
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2179
    invoke-virtual {v4, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 2183
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2184
    invoke-virtual {v4, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_1
    move-object p1, p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 8

    .line 1323
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1326
    :cond_0
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1327
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    .line 1331
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1333
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return-void

    .line 1337
    :cond_4
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    move v3, v2

    const/4 v2, 0x0

    const/4 v5, -0x1

    :goto_1
    if-ge v2, v0, :cond_7

    .line 1340
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1341
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1342
    iget v7, v4, Lcom/google/android/flexbox/FlexLine;->p:I

    invoke-virtual {p0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ne v7, v6, :cond_6

    .line 1347
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_5

    goto :goto_2

    .line 1351
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1352
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    move v5, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    move v2, v5

    .line 1359
    :goto_2
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void
.end method

.method private b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1753
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f()V

    goto :goto_0

    .line 1755
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 1757
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz p3, :cond_1

    .line 1758
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1759
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1758
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto :goto_1

    .line 1761
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1762
    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1761
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1764
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1765
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1766
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1767
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1768
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1769
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    if-eqz p2, :cond_2

    .line 1771
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 1772
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p3

    if-le p2, p3, :cond_2

    .line 1773
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/FlexLine;

    .line 1774
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1775
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result p3

    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexLine;->b()I

    move-result p1

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    :cond_2
    return-void
.end method

.method private b(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z
    .locals 4

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1147
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1149
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 1151
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Landroid/view/View;)V

    .line 1154
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1156
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1157
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1158
    invoke-virtual {v3}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1159
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1160
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    if-ge p1, v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    .line 1162
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1163
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1164
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1162
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method private b(Landroid/view/View;I)Z
    .locals 3

    .line 1414
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    if-gt p1, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1417
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1418
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v0

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 5

    .line 2299
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2302
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    .line 2303
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h(I)Landroid/view/View;

    move-result-object v2

    .line 2304
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i(I)Landroid/view/View;

    move-result-object v0

    .line 2305
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    if-nez v0, :cond_1

    goto :goto_1

    .line 2308
    :cond_1
    sget-boolean v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 2309
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b()I

    move-result v1

    .line 2310
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c()I

    move-result v3

    .line 2311
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 2312
    invoke-virtual {v4, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2311
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 2314
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int p1, v0

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method private c(Landroid/view/View;)I
    .locals 1

    .line 2366
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2367
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method private c(Lcom/google/android/flexbox/FlexLine;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1558
    sget-boolean v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->b:[J

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1560
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingTop()I

    move-result v1

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPaddingBottom()I

    move-result v2

    .line 1562
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 1564
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    .line 1566
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v5

    .line 1567
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 1568
    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->g:I

    sub-int/2addr v4, v6

    .line 1569
    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->g:I

    add-int/2addr v5, v6

    :cond_2
    move v10, v4

    move v11, v5

    .line 1571
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v12

    .line 1578
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:I

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v13, 0x1

    packed-switch v4, :pswitch_data_0

    .line 1615
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1607
    :pswitch_0
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->h:I

    if-eqz v4, :cond_3

    .line 1608
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->h:I

    add-int/2addr v6, v13

    int-to-float v6, v6

    div-float/2addr v4, v6

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    int-to-float v1, v1

    add-float/2addr v1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v4

    goto :goto_5

    .line 1593
    :pswitch_1
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->h:I

    if-eqz v4, :cond_4

    .line 1594
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    iget v7, v9, Lcom/google/android/flexbox/FlexLine;->h:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    int-to-float v1, v1

    div-float v6, v4, v6

    add-float/2addr v1, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    goto :goto_5

    :pswitch_2
    int-to-float v1, v1

    .line 1602
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->h:I

    if-eq v4, v13, :cond_5

    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->h:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    goto :goto_3

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1603
    :goto_3
    iget v6, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float v4, v6, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_5

    :pswitch_3
    int-to-float v1, v1

    .line 1588
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int v4, v3, v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    add-float/2addr v1, v4

    sub-int v2, v3, v2

    int-to-float v2, v2

    .line 1589
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    goto :goto_4

    .line 1584
    :pswitch_4
    iget v4, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    .line 1585
    iget v3, v9, Lcom/google/android/flexbox/FlexLine;->e:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/4 v4, 0x0

    move/from16 v24, v2

    move v2, v1

    move/from16 v1, v24

    goto :goto_5

    :pswitch_5
    int-to-float v1, v1

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_4
    const/4 v4, 0x0

    .line 1618
    :goto_5
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 1619
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 1620
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/4 v3, 0x0

    .line 1625
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->b()I

    move-result v15

    move v8, v12

    :goto_6
    add-int v4, v12, v15

    if-ge v8, v4, :cond_c

    .line 1627
    invoke-virtual {v0, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_6

    move/from16 v20, v8

    const/16 v22, 0x1

    goto/16 :goto_a

    .line 1635
    :cond_6
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v4, v4, Lcom/google/android/flexbox/FlexboxHelper;->b:[J

    aget-wide v5, v4, v8

    .line 1636
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->a(J)I

    move-result v4

    .line 1637
    iget-object v13, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v13, v5, v6}, Lcom/google/android/flexbox/FlexboxHelper;->b(J)I

    move-result v5

    .line 1638
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 1639
    invoke-direct {v0, v7, v4, v5, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1640
    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    .line 1643
    :cond_7
    iget v4, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v17, v1, v4

    .line 1644
    iget v1, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v18, v2, v1

    .line 1646
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_8

    .line 1647
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1648
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;)V

    :goto_7
    move/from16 v16, v3

    goto :goto_8

    .line 1650
    :cond_8
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1651
    invoke-virtual {v0, v7, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->addView(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1655
    :goto_8
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v1

    add-int v5, v10, v1

    .line 1656
    invoke-virtual {v0, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v1

    sub-int v19, v11, v1

    .line 1657
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz v1, :cond_a

    .line 1658
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    if-eqz v1, :cond_9

    .line 1659
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1660
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v19, v2

    .line 1661
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v20, v2, v3

    .line 1662
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    move-object v2, v7

    move-object/from16 v3, p1

    const/16 v22, 0x1

    move/from16 v6, v20

    move-object/from16 v23, v7

    move/from16 v7, v19

    move/from16 v20, v8

    move/from16 v8, v21

    .line 1659
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto/16 :goto_9

    :cond_9
    move-object/from16 v23, v7

    move/from16 v20, v8

    const/16 v22, 0x1

    .line 1664
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1665
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v19, v2

    .line 1666
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1667
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    move/from16 v7, v19

    .line 1664
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_9

    :cond_a
    move-object/from16 v23, v7

    move/from16 v20, v8

    const/16 v22, 0x1

    .line 1670
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    if-eqz v1, :cond_b

    .line 1671
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1672
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v6, v2, v3

    .line 1673
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v5, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    .line 1671
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    goto :goto_9

    .line 1675
    :cond_b
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1676
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 1677
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v5, v2

    .line 1678
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    move-object/from16 v2, v23

    move-object/from16 v3, p1

    .line 1675
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V

    .line 1681
    :goto_9
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    move-object/from16 v2, v23

    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v14

    add-float v17, v17, v1

    .line 1683
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v13, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 1684
    invoke-virtual {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v14

    sub-float v18, v18, v1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    :goto_a
    add-int/lit8 v8, v20, 0x1

    const/4 v13, 0x1

    goto/16 :goto_6

    .line 1686
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    iget-object v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v2

    add-int/2addr v1, v2

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    .line 1687
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/FlexLine;->a()I

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(III)Landroid/view/View;
    .locals 7

    .line 1225
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g()V

    .line 1226
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h()V

    .line 1229
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1230
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_1
    if-eq p1, p2, :cond_5

    .line 1233
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1234
    invoke-virtual {p0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_4

    if-ge v6, p3, :cond_4

    .line 1236
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v4, :cond_4

    move-object v4, v5

    goto :goto_3

    .line 1240
    :cond_1
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_3

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1241
    invoke-virtual {v6, v5}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v1, :cond_2

    goto :goto_2

    :cond_2
    return-object v5

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    move-object v3, v5

    :cond_4
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method private c(Landroid/support/v7/widget/RecyclerView$Recycler;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)V
    .locals 7

    .line 1372
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1375
    :cond_0
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1376
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEnd()I

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 1377
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    add-int/lit8 v1, v0, -0x1

    .line 1382
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1383
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, v3, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return-void

    .line 1389
    :cond_4
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    move v4, v0

    move v0, v1

    :goto_1
    if-ltz v0, :cond_7

    .line 1391
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1392
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1393
    iget v6, v3, Lcom/google/android/flexbox/FlexLine;->o:I

    invoke-virtual {p0, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_6

    if-gtz v2, :cond_5

    goto :goto_2

    .line 1402
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1403
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    move v4, v0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    move v0, v4

    .line 1410
    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    return p0
.end method

.method private d(Landroid/view/View;)I
    .locals 1

    .line 2372
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2373
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method static synthetic d(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroid/support/v7/widget/OrientationHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v0

    .line 1011
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1035
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1036
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    goto :goto_3

    :pswitch_0
    if-ne v0, v4, :cond_0

    const/4 v3, 0x1

    .line 1028
    :cond_0
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1029
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-ne v0, v2, :cond_1

    .line 1030
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1032
    :cond_1
    iput-boolean v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    goto :goto_3

    :pswitch_1
    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1021
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1022
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-ne v0, v2, :cond_3

    .line 1023
    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    xor-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1025
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    goto :goto_3

    :pswitch_2
    if-eq v0, v4, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1017
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1018
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-ne v0, v2, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    goto :goto_3

    :pswitch_3
    if-ne v0, v4, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 1013
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    .line 1014
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-ne v0, v2, :cond_7

    const/4 v3, 0x1

    :cond_7
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->i:Z

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(III)Z
    .locals 3

    .line 2336
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private e(Landroid/view/View;)I
    .locals 1

    .line 2378
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2379
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method private e()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1255
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/FlexboxHelper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 1781
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1782
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    goto :goto_0

    .line 1784
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 1793
    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-eqz v0, :cond_2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    return-void
.end method

.method private f(I)V
    .locals 4

    .line 632
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b()I

    move-result v0

    .line 633
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c()I

    move-result v1

    if-lt p1, v1, :cond_0

    return-void

    .line 637
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v2

    .line 638
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxHelper;->c(I)V

    .line 639
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxHelper;->b(I)V

    .line 640
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v3, v2}, Lcom/google/android/flexbox/FlexboxHelper;->d(I)V

    .line 641
    sget-boolean v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 643
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    array-length v2, v2

    if-lt p1, v2, :cond_3

    return-void

    .line 647
    :cond_3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    .line 649
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    if-gt v0, p1, :cond_5

    if-gt p1, v1, :cond_5

    return-void

    .line 659
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    .line 661
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->h:Z

    if-eqz p1, :cond_6

    .line 662
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 663
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    goto :goto_1

    .line 665
    :cond_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 666
    invoke-virtual {v0}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    :goto_1
    return-void
.end method

.method private g()V
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    if-eqz v0, :cond_0

    return-void

    .line 1809
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1810
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-nez v0, :cond_1

    .line 1811
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1812
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1814
    :cond_1
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1815
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1818
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-nez v0, :cond_3

    .line 1819
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1820
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    goto :goto_0

    .line 1822
    :cond_3
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 1823
    invoke-static {p0}, Landroid/support/v7/widget/OrientationHelper;->createVerticalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    :goto_0
    return-void
.end method

.method private g(I)V
    .locals 11

    .line 861
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 863
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 864
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v2

    .line 865
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v3

    .line 871
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-eqz v4, :cond_2

    .line 872
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:I

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 879
    :goto_0
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/content/Context;

    .line 880
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 881
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    :goto_1
    move v6, v4

    goto :goto_3

    .line 883
    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:I

    if-eq v4, v7, :cond_3

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:I

    if-eq v4, v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 890
    :goto_2
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:Landroid/content/Context;

    .line 891
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    .line 892
    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v4

    goto :goto_1

    .line 895
    :goto_3
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->u:I

    .line 896
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->v:I

    .line 898
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    if-ne v2, v3, :cond_5

    if-eqz v5, :cond_a

    .line 900
    :cond_5
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 913
    :cond_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 914
    sget-boolean p1, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object p1, p1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 915
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->a()V

    .line 916
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 917
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 920
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 918
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->b(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_5

    .line 922
    :cond_9
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 925
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 923
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->d(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 927
    :goto_5
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 928
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/flexbox/FlexboxHelper;->a(II)V

    .line 929
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {p1}, Lcom/google/android/flexbox/FlexboxHelper;->a()V

    .line 930
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 931
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    aget v0, v0, v1

    .line 930
    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 932
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;I)I

    goto/16 :goto_9

    .line 938
    :cond_a
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    if-eq v2, v3, :cond_b

    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 939
    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_6
    move v10, v2

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v2

    goto :goto_6

    .line 941
    :goto_7
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->a()V

    .line 942
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 943
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 948
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/FlexboxHelper;->a(Ljava/util/List;I)V

    .line 949
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 950
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v4, v0

    move v5, v1

    move v7, v10

    .line 949
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->a(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_8

    .line 953
    :cond_c
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->d(I)V

    .line 954
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 955
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->a(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    goto :goto_8

    .line 960
    :cond_d
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 965
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/FlexboxHelper;->a(Ljava/util/List;I)V

    .line 966
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 967
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v4, v1

    move v5, v0

    move v7, v10

    .line 966
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/FlexboxHelper;->a(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIIILjava/util/List;)V

    goto :goto_8

    .line 970
    :cond_e
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/FlexboxHelper;->d(I)V

    .line 971
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 972
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/FlexboxHelper;->c(Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;IIIILjava/util/List;)V

    .line 976
    :goto_8
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;

    iget-object p1, p1, Lcom/google/android/flexbox/FlexboxHelper$FlexLinesResult;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    .line 977
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {p1, v0, v1, v10}, Lcom/google/android/flexbox/FlexboxHelper;->a(III)V

    .line 987
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {p1, v10}, Lcom/google/android/flexbox/FlexboxHelper;->a(I)V

    :goto_9
    return-void
.end method

.method private h(I)Landroid/view/View;
    .locals 3

    .line 1181
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1182
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    return-object v0

    .line 1186
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1187
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v2, v2, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    return-object v0

    .line 1191
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 1192
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private h()V
    .locals 2

    .line 1829
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    if-nez v0, :cond_0

    .line 1830
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    :cond_0
    return-void
.end method

.method private i(I)Landroid/view/View;
    .locals 2

    .line 1204
    sget-boolean v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v0, v0, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 1205
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 1209
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 1210
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    iget-object v1, v1, Lcom/google/android/flexbox/FlexboxHelper;->a:[I

    aget v0, v1, v0

    .line 1211
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/FlexLine;

    .line 1212
    invoke-direct {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private i()V
    .locals 2

    .line 2353
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2354
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 2355
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    return-void
.end method

.method private j(I)I
    .locals 5

    .line 1980
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 1983
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g()V

    .line 1984
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1985
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    .line 1986
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    .line 1988
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    .line 1990
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_4

    .line 1992
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1993
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 1992
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    .line 1996
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_8

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 1997
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    neg-int p1, p1

    goto :goto_2

    :cond_5
    if-lez p1, :cond_6

    .line 2002
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 2003
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 2002
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    .line 2005
    :cond_6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    .line 2006
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p1

    neg-int p1, p1

    :cond_8
    :goto_2
    return p1

    :cond_9
    :goto_3
    return v1
.end method


# virtual methods
.method public a(III)I
    .locals 2

    .line 482
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidthMode()I

    move-result v0

    .line 483
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 482
    invoke-static {p1, v0, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;)I
    .locals 1

    .line 395
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public a(Landroid/view/View;II)I
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    return p2

    .line 389
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/view/View;)V
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/View;IILcom/google/android/flexbox/FlexLine;)V
    .locals 0

    .line 407
    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 408
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 409
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    .line 410
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->e:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->e:I

    .line 411
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->f:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->f:I

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    .line 414
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->e:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->e:I

    .line 415
    iget p1, p4, Lcom/google/android/flexbox/FlexLine;->f:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/FlexLine;->f:I

    :goto_0
    return-void
.end method

.method public a(Lcom/google/android/flexbox/FlexLine;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 2

    .line 1692
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public b()I
    .locals 2

    .line 2440
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2441
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(III)I
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeightMode()I

    move-result v0

    .line 489
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    move-result v1

    .line 488
    invoke-static {p1, v0, p2, p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p1

    return p1
.end method

.method public b(I)Landroid/view/View;
    .locals 0

    .line 472
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 3

    .line 2474
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2475
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public c(I)V
    .locals 1

    .line 276
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    if-eq v0, p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 281
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    const/4 p1, 0x0

    .line 282
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 283
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    .line 284
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i()V

    .line 285
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .line 1900
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1905
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    .line 559
    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    return p1
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2194
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2229
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    .line 2233
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2275
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 2

    .line 535
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 540
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 541
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 543
    :cond_2
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2203
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2238
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 0

    .line 2284
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 301
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-eq v0, p1, :cond_2

    .line 302
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 304
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i()V

    .line 306
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    const/4 p1, 0x0

    .line 307
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 308
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    .line 309
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_2
    return-void

    .line 298
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(I)V
    .locals 2

    .line 335
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:I

    if-eq v0, p1, :cond_2

    .line 336
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    .line 338
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i()V

    .line 340
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:I

    .line 341
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .line 549
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 554
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAlignContent()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    .line 330
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->f:I

    return v0
.end method

.method public getFlexDirection()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->c:I

    return v0
.end method

.method public getFlexItemCount()I
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->d:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 494
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 498
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 499
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 500
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->e:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMaxLine()I
    .locals 1

    .line 360
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->g:I

    return v0
.end method

.method public getSumOfCrossSize()I
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 509
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/FlexLine;

    .line 511
    iget v3, v3, Lcom/google/android/flexbox/FlexLine;->g:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 564
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAllViews()V

    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 1882
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1883
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:Landroid/view/View;

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 1888
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1889
    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->w:Z

    if-eqz p1, :cond_0

    .line 1893
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1894
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    :cond_0
    return-void
.end method

.method public onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 602
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Landroid/support/v7/widget/RecyclerView;II)V

    .line 603
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(I)V

    return-void
.end method

.method public onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V
    .locals 0

    .line 627
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Landroid/support/v7/widget/RecyclerView;III)V

    .line 628
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(I)V

    return-void
.end method

.method public onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 621
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Landroid/support/v7/widget/RecyclerView;II)V

    .line 622
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(I)V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 615
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;II)V

    .line 616
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(I)V

    return-void
.end method

.method public onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 609
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Landroid/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    .line 610
    invoke-direct {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f(I)V

    return-void
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    .line 692
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->l:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 693
    iput-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->m:Landroid/support/v7/widget/RecyclerView$State;

    .line 694
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 695
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d()V

    .line 699
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g()V

    .line 700
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h()V

    .line 701
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->c(I)V

    .line 702
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->b(I)V

    .line 704
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->k:Lcom/google/android/flexbox/FlexboxHelper;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/FlexboxHelper;->d(I)V

    .line 706
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;Z)Z

    .line 708
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 709
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    .line 712
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v1, :cond_3

    .line 714
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 715
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 716
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;Z)Z

    .line 718
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 720
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 721
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    goto :goto_0

    .line 723
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 731
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g(I)V

    .line 743
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 744
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 748
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 749
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 750
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 754
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    goto :goto_1

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 760
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v1

    .line 761
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-direct {p0, v0, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;ZZ)V

    .line 762
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    .line 766
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->n:Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutState;)I

    move-result v0

    .line 769
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 770
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 771
    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
    invoke-direct {p0, v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    goto :goto_2

    .line 775
    :cond_6
    invoke-direct {p0, v0, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 777
    invoke-direct {p0, v1, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->b(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    :cond_7
    :goto_2
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 993
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 997
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 998
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/high16 v0, -0x80000000

    .line 999
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    .line 1000
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    .line 1001
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)V

    .line 1002
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 587
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 588
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    .line 589
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 569
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;Lcom/google/android/flexbox/FlexboxLayoutManager$1;)V

    return-object v0

    .line 572
    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;-><init>()V

    .line 573
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e()Landroid/view/View;

    move-result-object v1

    .line 576
    invoke-virtual {p0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    .line 577
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->p:Landroid/support/v7/widget/OrientationHelper;

    .line 578
    invoke-virtual {v2}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    .line 577
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;I)I

    goto :goto_0

    .line 580
    :cond_1
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    :goto_0
    return-object v0
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1911
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 1913
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    return p1

    .line 1916
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j(I)I

    move-result p1

    .line 1917
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1918
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    return p1
.end method

.method public scrollToPosition(I)V
    .locals 0

    .line 1836
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->s:I

    const/high16 p1, -0x80000000

    .line 1837
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->t:I

    .line 1838
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    if-eqz p1, :cond_0

    .line 1839
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->r:Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$SavedState;)V

    .line 1841
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1

    .line 1926
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->a(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result p1

    .line 1928
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->x:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    return p1

    .line 1931
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j(I)I

    move-result p1

    .line 1932
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->o:Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;)I

    move-result p3

    add-int/2addr p3, p1

    invoke-static {p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$AnchorInfo;I)I

    .line 1933
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->q:Landroid/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroid/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    return p1
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/FlexLine;",
            ">;)V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->j:Ljava/util/List;

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    .line 1847
    new-instance p2, Landroid/support/v7/widget/LinearSmoothScroller;

    .line 1848
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 1849
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 1850
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
