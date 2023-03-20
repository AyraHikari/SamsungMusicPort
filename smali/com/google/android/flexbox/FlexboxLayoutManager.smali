.class public Lcom/google/android/flexbox/FlexboxLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "FlexboxLayoutManager.java"

# interfaces
.implements Lcom/google/android/flexbox/a;
.implements Landroidx/recyclerview/widget/RecyclerView$t0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/FlexboxLayoutManager$e;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$d;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$b;,
        Lcom/google/android/flexbox/FlexboxLayoutManager$c;
    }
.end annotation


# static fields
.field public static final Y:Landroid/graphics/Rect;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/c;",
            ">;"
        }
    .end annotation
.end field

.field public final G:Lcom/google/android/flexbox/d;

.field public H:Landroidx/recyclerview/widget/RecyclerView$j0;

.field public I:Landroidx/recyclerview/widget/RecyclerView$u0;

.field public J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

.field public K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

.field public L:Landroidx/recyclerview/widget/q;

.field public M:Landroidx/recyclerview/widget/q;

.field public N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final U:Landroid/content/Context;

.field public V:Landroid/view/View;

.field public W:I

.field public X:Lcom/google/android/flexbox/d$b;

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->C:I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    .line 4
    new-instance v1, Lcom/google/android/flexbox/d;

    invoke-direct {v1, p0}, Lcom/google/android/flexbox/d;-><init>(Lcom/google/android/flexbox/a;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 5
    new-instance v1, Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 6
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    const/high16 v1, -0x80000000

    .line 7
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    .line 8
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q:I

    .line 9
    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->R:I

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Landroid/util/SparseArray;

    .line 11
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:I

    .line 12
    new-instance v0, Lcom/google/android/flexbox/d$b;

    invoke-direct {v0}, Lcom/google/android/flexbox/d$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    .line 13
    invoke-static {p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$c0;->p0(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$c0$d;

    move-result-object p2

    .line 14
    iget p3, p2, Landroidx/recyclerview/widget/RecyclerView$c0$d;->a:I

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$c0$d;->c:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    .line 16
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->N2(I)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 17
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->N2(I)V

    goto :goto_0

    .line 18
    :cond_2
    iget-boolean p2, p2, Landroidx/recyclerview/widget/RecyclerView$c0$d;->c:Z

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->N2(I)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 20
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->N2(I)V

    .line 21
    :goto_0
    invoke-virtual {p0, p4}, Lcom/google/android/flexbox/FlexboxLayoutManager;->O2(I)V

    const/4 p2, 0x4

    .line 22
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->M2(I)V

    .line 23
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Landroid/content/Context;

    return-void
.end method

.method public static E0(III)Z
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
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

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method private O1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$d0;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->D0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->E0(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->E0(III)Z

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

.method public static synthetic V1(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    return p0
.end method

.method public static synthetic W1(Lcom/google/android/flexbox/FlexboxLayoutManager;)I
    .locals 0

    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:I

    return p0
.end method

.method public static synthetic X1(Lcom/google/android/flexbox/FlexboxLayoutManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    return p0
.end method

.method public static synthetic Y1(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/q;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    return-object p0
.end method

.method public static synthetic Z1(Lcom/google/android/flexbox/FlexboxLayoutManager;)Landroidx/recyclerview/widget/q;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    return-object p0
.end method

.method public static synthetic a2(Lcom/google/android/flexbox/FlexboxLayoutManager;)Lcom/google/android/flexbox/d;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    return-object p0
.end method

.method public static synthetic b2(Lcom/google/android/flexbox/FlexboxLayoutManager;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j2()V

    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->C(Lcom/google/android/flexbox/FlexboxLayoutManager$d;Z)Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, -0x1

    if-eqz v0, :cond_3

    if-gez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-lez p1, :cond_2

    .line 5
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 6
    invoke-virtual {p0, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->U2(II)V

    .line 7
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v4

    .line 8
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {p0, p2, p3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k2(Landroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_4

    return v1

    :cond_4
    if-eqz v0, :cond_5

    if-le v3, v4, :cond_6

    neg-int p1, v2

    mul-int/2addr p1, v4

    goto :goto_2

    :cond_5
    if-le v3, v4, :cond_6

    mul-int p1, v2, v4

    .line 9
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/q;->r(I)V

    .line 10
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->A(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    return p1

    :cond_7
    :goto_3
    return v1
.end method

.method public B(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f2(Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    return p1
.end method

.method public final B2(I)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j2()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v0

    .line 6
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->k0()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    move v1, v4

    :cond_3
    if-eqz v1, :cond_5

    .line 7
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gez p1, :cond_4

    .line 8
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 9
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    add-int/2addr v0, p1

    sub-int/2addr v0, v2

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    add-int/2addr v0, p1

    if-lez v0, :cond_8

    .line 12
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    :goto_2
    neg-int p1, p1

    goto :goto_3

    :cond_5
    if-lez p1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 14
    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 15
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    add-int/2addr v0, p1

    if-ltz v0, :cond_7

    goto :goto_3

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    goto :goto_2

    :cond_8
    :goto_3
    return p1

    :cond_9
    :goto_4
    return v1
.end method

.method public C(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g2(Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    return p1
.end method

.method public final C2(Landroid/view/View;Z)Z
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingLeft()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingTop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->x2(Landroid/view/View;)I

    move-result v4

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->z2(Landroid/view/View;)I

    move-result v5

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->y2(Landroid/view/View;)I

    move-result v6

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v2(Landroid/view/View;)I

    move-result p1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gt v0, v4, :cond_0

    if-lt v2, v6, :cond_0

    move v9, v7

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-ge v4, v2, :cond_2

    if-lt v6, v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v7

    :goto_2
    if-gt v1, v5, :cond_3

    if-lt v3, p1, :cond_3

    move v2, v7

    goto :goto_3

    :cond_3
    move v2, v8

    :goto_3
    if-ge v5, v3, :cond_5

    if-lt p1, v1, :cond_4

    goto :goto_4

    :cond_4
    move p1, v8

    goto :goto_5

    :cond_5
    :goto_4
    move p1, v7

    :goto_5
    if-eqz p2, :cond_7

    if-eqz v9, :cond_6

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move v7, v8

    :goto_6
    return v7

    :cond_7
    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    goto :goto_7

    :cond_8
    move v7, v8

    :goto_7
    return v7
.end method

.method public D(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h2(Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    return p1
.end method

.method public final D2(Lcom/google/android/flexbox/c;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->E2(Lcom/google/android/flexbox/c;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->F2(Lcom/google/android/flexbox/c;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    return p1
.end method

.method public E(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->f2(Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    return p1
.end method

.method public final E2(Lcom/google/android/flexbox/c;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingLeft()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingRight()I

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v3

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v4

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 6
    iget v5, v8, Lcom/google/android/flexbox/c;->g:I

    sub-int/2addr v4, v5

    :cond_0
    move v9, v4

    .line 7
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v10

    .line 8
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    const/4 v5, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_9

    if-eq v4, v11, :cond_8

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_7

    const/4 v6, 0x3

    if-eq v4, v6, :cond_5

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    .line 9
    iget v4, v8, Lcom/google/android/flexbox/c;->h:I

    if-eqz v4, :cond_1

    .line 10
    iget v6, v8, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    add-int/2addr v4, v11

    int-to-float v4, v4

    div-float/2addr v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    int-to-float v1, v1

    add-float/2addr v1, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    goto :goto_4

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_3
    iget v4, v8, Lcom/google/android/flexbox/c;->h:I

    if-eqz v4, :cond_4

    .line 13
    iget v6, v8, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    int-to-float v1, v1

    div-float v4, v6, v7

    add-float/2addr v1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v4

    goto :goto_4

    :cond_5
    int-to-float v1, v1

    .line 14
    iget v4, v8, Lcom/google/android/flexbox/c;->h:I

    if-eq v4, v11, :cond_6

    sub-int/2addr v4, v11

    int-to-float v4, v4

    goto :goto_2

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 15
    :goto_2
    iget v6, v8, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_4

    :cond_7
    int-to-float v1, v1

    .line 16
    iget v4, v8, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v4

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    sub-int v2, v3, v2

    int-to-float v2, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    goto :goto_3

    .line 17
    :cond_8
    iget v4, v8, Lcom/google/android/flexbox/c;->e:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    move v6, v5

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    goto :goto_4

    :cond_9
    int-to-float v1, v1

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_3
    move v6, v5

    .line 18
    :goto_4
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 19
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 20
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v3, 0x0

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/c;->b()I

    move-result v13

    move v14, v10

    :goto_5
    add-int v4, v10, v13

    if-ge v14, v4, :cond_e

    .line 22
    invoke-virtual {v0, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_a

    goto/16 :goto_8

    .line 23
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v4

    if-ne v4, v11, :cond_b

    .line 24
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Landroidx/recyclerview/widget/RecyclerView$c0;->u(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 25
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$c0;->o(Landroid/view/View;)V

    goto :goto_6

    .line 26
    :cond_b
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v4}, Landroidx/recyclerview/widget/RecyclerView$c0;->u(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 27
    invoke-virtual {v0, v15, v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->p(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    :goto_6
    move/from16 v16, v3

    .line 28
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v4, v3, Lcom/google/android/flexbox/d;->d:[J

    aget-wide v5, v4, v14

    .line 29
    invoke-virtual {v3, v5, v6}, Lcom/google/android/flexbox/d;->y(J)I

    move-result v3

    .line 30
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v4, v5, v6}, Lcom/google/android/flexbox/d;->x(J)I

    move-result v4

    .line 31
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 32
    invoke-direct {v0, v15, v3, v4, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->O1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$d0;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 33
    invoke-virtual {v15, v3, v4}, Landroid/view/View;->measure(II)V

    .line 34
    :cond_c
    iget v3, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$c0;->l0(Landroid/view/View;)I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float v17, v1, v3

    .line 35
    iget v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$c0;->q0(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float v18, v2, v1

    .line 36
    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$c0;->t0(Landroid/view/View;)I

    move-result v1

    add-int v5, v9, v1

    .line 37
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v1, :cond_d

    .line 38
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 39
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int v4, v2, v3

    .line 40
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 41
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v19, v5, v2

    move-object v2, v15

    move-object/from16 v3, p1

    move-object v11, v7

    move/from16 v7, v19

    .line 42
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/d;->Q(Landroid/view/View;Lcom/google/android/flexbox/c;IIII)V

    goto :goto_7

    :cond_d
    move-object v11, v7

    .line 43
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 44
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 45
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v6, v2, v3

    .line 46
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v7, v5, v2

    move-object v2, v15

    move-object/from16 v3, p1

    .line 47
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/flexbox/d;->Q(Landroid/view/View;Lcom/google/android/flexbox/c;IIII)V

    .line 48
    :goto_7
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$c0;->q0(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    add-float v17, v17, v1

    .line 49
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v15}, Landroidx/recyclerview/widget/RecyclerView$c0;->l0(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, v12

    sub-float v18, v18, v1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    :goto_8
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x1

    goto/16 :goto_5

    .line 50
    :cond_e
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v1

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->n(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/c;->a()I

    move-result v1

    return v1
.end method

.method public F(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->g2(Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    return p1
.end method

.method public F1(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->B2(I)I

    move-result p1

    .line 3
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->l(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 4
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/q;->r(I)V

    return p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public final F2(Lcom/google/android/flexbox/c;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingTop()I

    move-result v1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingBottom()I

    move-result v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v3

    .line 4
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v4

    .line 5
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v5

    .line 6
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 7
    iget v6, v9, Lcom/google/android/flexbox/c;->g:I

    sub-int/2addr v4, v6

    add-int/2addr v5, v6

    :cond_0
    move v10, v4

    move v11, v5

    .line 8
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v12

    .line 9
    iget v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    const/4 v5, 0x0

    const/4 v13, 0x1

    if-eqz v4, :cond_9

    if-eq v4, v13, :cond_8

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v4, v6, :cond_7

    const/4 v6, 0x3

    if-eq v4, v6, :cond_5

    const/4 v6, 0x4

    if-eq v4, v6, :cond_3

    const/4 v6, 0x5

    if-ne v4, v6, :cond_2

    .line 10
    iget v4, v9, Lcom/google/android/flexbox/c;->h:I

    if-eqz v4, :cond_1

    .line 11
    iget v6, v9, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    add-int/2addr v4, v13

    int-to-float v4, v4

    div-float/2addr v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    int-to-float v1, v1

    add-float/2addr v1, v6

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v6

    goto :goto_4

    .line 12
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid justifyContent is set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_3
    iget v4, v9, Lcom/google/android/flexbox/c;->h:I

    if-eqz v4, :cond_4

    .line 14
    iget v6, v9, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    goto :goto_1

    :cond_4
    move v6, v5

    :goto_1
    int-to-float v1, v1

    div-float v4, v6, v7

    add-float/2addr v1, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    sub-float/2addr v2, v4

    goto :goto_4

    :cond_5
    int-to-float v1, v1

    .line 15
    iget v4, v9, Lcom/google/android/flexbox/c;->h:I

    if-eq v4, v13, :cond_6

    sub-int/2addr v4, v13

    int-to-float v4, v4

    goto :goto_2

    :cond_6
    const/high16 v4, 0x3f800000    # 1.0f

    .line 16
    :goto_2
    iget v6, v9, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v6

    int-to-float v6, v6

    div-float/2addr v6, v4

    sub-int/2addr v3, v2

    int-to-float v2, v3

    goto :goto_4

    :cond_7
    int-to-float v1, v1

    .line 17
    iget v4, v9, Lcom/google/android/flexbox/c;->e:I

    sub-int v6, v3, v4

    int-to-float v6, v6

    div-float/2addr v6, v7

    add-float/2addr v1, v6

    sub-int v2, v3, v2

    int-to-float v2, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    goto :goto_3

    .line 18
    :cond_8
    iget v4, v9, Lcom/google/android/flexbox/c;->e:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    int-to-float v2, v3

    sub-int/2addr v4, v1

    int-to-float v1, v4

    move v6, v5

    move/from16 v24, v2

    move v2, v1

    move/from16 v1, v24

    goto :goto_4

    :cond_9
    int-to-float v1, v1

    sub-int/2addr v3, v2

    int-to-float v2, v3

    :goto_3
    move v6, v5

    .line 19
    :goto_4
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    .line 20
    iget-object v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 21
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v14

    const/4 v3, 0x0

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/c;->b()I

    move-result v15

    move v8, v12

    :goto_5
    add-int v4, v12, v15

    if-ge v8, v4, :cond_10

    .line 23
    invoke-virtual {v0, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_a

    move/from16 v23, v8

    move/from16 v22, v13

    move/from16 v17, v14

    goto/16 :goto_8

    .line 24
    :cond_a
    iget-object v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v5, v4, Lcom/google/android/flexbox/d;->d:[J

    move/from16 v17, v14

    aget-wide v13, v5, v8

    .line 25
    invoke-virtual {v4, v13, v14}, Lcom/google/android/flexbox/d;->y(J)I

    move-result v4

    .line 26
    iget-object v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v5, v13, v14}, Lcom/google/android/flexbox/d;->x(J)I

    move-result v5

    .line 27
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    .line 28
    invoke-direct {v0, v7, v4, v5, v13}, Lcom/google/android/flexbox/FlexboxLayoutManager;->O1(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$d0;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 29
    invoke-virtual {v7, v4, v5}, Landroid/view/View;->measure(II)V

    .line 30
    :cond_b
    iget v4, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$c0;->t0(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    add-float v14, v1, v4

    .line 31
    iget v1, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$c0;->S(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    sub-float v18, v2, v1

    .line 32
    invoke-static/range {p2 .. p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_c

    .line 33
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->u(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$c0;->o(Landroid/view/View;)V

    goto :goto_6

    .line 35
    :cond_c
    sget-object v1, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->u(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 36
    invoke-virtual {v0, v7, v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->p(Landroid/view/View;I)V

    add-int/lit8 v3, v3, 0x1

    :goto_6
    move/from16 v16, v3

    .line 37
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$c0;->l0(Landroid/view/View;)I

    move-result v1

    add-int v5, v10, v1

    .line 38
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$c0;->q0(Landroid/view/View;)I

    move-result v1

    sub-int v19, v11, v1

    .line 39
    iget-boolean v4, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v4, :cond_e

    .line 40
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    if-eqz v1, :cond_d

    .line 41
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 42
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v19, v2

    .line 43
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v20, v2, v3

    .line 44
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v21

    move-object v2, v7

    move-object/from16 v3, p1

    move/from16 v22, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v19

    move/from16 v23, v8

    move/from16 v8, v21

    .line 45
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/d;->R(Landroid/view/View;Lcom/google/android/flexbox/c;ZIIII)V

    goto/16 :goto_7

    :cond_d
    move/from16 v22, v6

    move-object/from16 v20, v7

    move/from16 v23, v8

    .line 46
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 47
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v5, v19, v2

    .line 48
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 49
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v7, v19

    .line 50
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/d;->R(Landroid/view/View;Lcom/google/android/flexbox/c;ZIIII)V

    goto :goto_7

    :cond_e
    move/from16 v22, v6

    move-object/from16 v20, v7

    move/from16 v23, v8

    .line 51
    iget-boolean v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    if-eqz v1, :cond_f

    .line 52
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 53
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v6, v2, v3

    .line 54
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v5, v2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    .line 55
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/d;->R(Landroid/view/View;Lcom/google/android/flexbox/c;ZIIII)V

    goto :goto_7

    .line 56
    :cond_f
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    .line 57
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 58
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v7, v5, v2

    .line 59
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v8, v2, v3

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    .line 60
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/flexbox/d;->R(Landroid/view/View;Lcom/google/android/flexbox/c;ZIIII)V

    .line 61
    :goto_7
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v13, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v2

    move-object/from16 v2, v20

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$c0;->S(Landroid/view/View;)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-float v1, v1, v17

    add-float/2addr v14, v1

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v3

    .line 63
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$c0;->t0(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float v1, v1, v17

    sub-float v18, v18, v1

    move v1, v14

    move/from16 v3, v16

    move/from16 v2, v18

    :goto_8
    add-int/lit8 v8, v23, 0x1

    move/from16 v14, v17

    move/from16 v13, v22

    goto/16 :goto_5

    .line 64
    :cond_10
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v1

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->n(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/flexbox/c;->a()I

    move-result v1

    return v1
.end method

.method public G(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->h2(Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    return p1
.end method

.method public G1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$e;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->C1()V

    return-void
.end method

.method public final G2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->B(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->I2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->J2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V

    :goto_0
    return-void
.end method

.method public H1(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->B2(I)I

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->l(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 5
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/q;->r(I)V

    return p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    return p1
.end method

.method public final H2(Landroidx/recyclerview/widget/RecyclerView$j0;II)V
    .locals 0

    :goto_0
    if-lt p3, p2, :cond_0

    invoke-virtual {p0, p3, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->w1(ILandroidx/recyclerview/widget/RecyclerView$j0;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final I2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V
    .locals 7

    .line 1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, v3, Lcom/google/android/flexbox/d;->c:[I

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/c;

    move v4, v1

    :goto_0
    if-ltz v4, :cond_7

    .line 6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager;->c2(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 8
    iget v6, v3, Lcom/google/android/flexbox/c;->o:I

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v5

    if-ne v6, v5, :cond_6

    if-gtz v2, :cond_5

    move v0, v4

    goto :goto_2

    .line 9
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    add-int/2addr v2, v0

    .line 10
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/c;

    move-object v3, v0

    move v0, v4

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 11
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->H2(Landroidx/recyclerview/widget/RecyclerView$j0;II)V

    return-void
.end method

.method public final J2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, v3, Lcom/google/android/flexbox/d;->c:[I

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v2

    aget v2, v3, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    return-void

    .line 5
    :cond_3
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/flexbox/c;

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_7

    .line 6
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->d2(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 8
    iget v7, v4, Lcom/google/android/flexbox/c;->p:I

    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v6

    if-ne v7, v6, :cond_6

    .line 9
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v2, v3, :cond_5

    move v3, v5

    goto :goto_2

    .line 10
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v3

    add-int/2addr v2, v3

    .line 11
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/c;

    move-object v4, v3

    move v3, v5

    :cond_6
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->H2(Landroidx/recyclerview/widget/RecyclerView$j0;II)V

    return-void
.end method

.method public final K2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->i0()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->w0()I

    move-result v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

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
    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$d;Z)Z

    return-void
.end method

.method public final L2()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->k0()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_6

    if-eq v1, v2, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    .line 3
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 4
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    goto :goto_3

    :cond_0
    if-ne v0, v4, :cond_1

    move v3, v4

    .line 5
    :cond_1
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 6
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-ne v0, v2, :cond_2

    xor-int/lit8 v0, v3, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 8
    :cond_2
    iput-boolean v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    goto :goto_3

    :cond_3
    if-ne v0, v4, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    .line 9
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 10
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-ne v1, v2, :cond_5

    xor-int/2addr v0, v4

    .line 11
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 12
    :cond_5
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    goto :goto_3

    :cond_6
    if-eq v0, v4, :cond_7

    move v0, v4

    goto :goto_1

    :cond_7
    move v0, v3

    .line 13
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 14
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-ne v0, v2, :cond_8

    move v3, v4

    :cond_8
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    goto :goto_3

    :cond_9
    if-ne v0, v4, :cond_a

    move v0, v4

    goto :goto_2

    :cond_a
    move v0, v3

    .line 15
    :goto_2
    iput-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    .line 16
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-ne v0, v2, :cond_b

    move v3, v4

    :cond_b
    iput-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->E:Z

    :goto_3
    return-void
.end method

.method public M0(Landroidx/recyclerview/widget/RecyclerView$t;Landroidx/recyclerview/widget/RecyclerView$t;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->s1()V

    return-void
.end method

.method public M2(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:I

    if-eq v0, p1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->s1()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e2()V

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:I

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->C1()V

    :cond_2
    return-void
.end method

.method public N2(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:I

    if-eq v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->s1()V

    .line 3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e2()V

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->C1()V

    :cond_0
    return-void
.end method

.method public O()Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 2

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$c;-><init>(II)V

    return-object v0
.end method

.method public O0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->O0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Landroid/view/View;

    return-void
.end method

.method public O2(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->s1()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e2()V

    .line 4
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 6
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->C1()V

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "wrap_reverse is not supported in FlexboxLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 1

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    invoke-direct {v0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final P2(Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o2(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l2(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    .line 5
    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->i(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Landroid/view/View;)V

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->e()Z

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U1()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 9
    invoke-virtual {v3}, Landroidx/recyclerview/widget/q;->i()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 10
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    if-ge p1, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    if-eqz v1, :cond_5

    .line 12
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->i()I

    move-result p1

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->m()I

    move-result p1

    .line 15
    :goto_1
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    :cond_5
    return v2

    :cond_6
    return v1
.end method

.method public Q0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$j0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->Q0(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$j0;)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->S:Z

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->t1(Landroidx/recyclerview/widget/RecyclerView$j0;)V

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$j0;->c()V

    :cond_0
    return-void
.end method

.method public final Q2(Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$b;Lcom/google/android/flexbox/FlexboxLayoutManager$e;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_c

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v4

    if-lt v0, v4, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v0, v0, Lcom/google/android/flexbox/d;->c:[I

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v4

    aget v0, v0, v4

    invoke-static {p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$e;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->m()I

    move-result p1

    .line 7
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$e;)I

    move-result p3

    add-int/2addr p1, p3

    .line 8
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 9
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 10
    invoke-static {p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    return v4

    .line 11
    :cond_2
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    if-ne p1, v3, :cond_a

    .line 12
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->N(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 13
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/q;->e(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->n()I

    move-result v0

    if-le p3, v0, :cond_3

    .line 15
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    return v4

    .line 16
    :cond_3
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    sub-int/2addr p3, v0

    if-gez p3, :cond_4

    .line 18
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->m()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 19
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->q(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    return v4

    .line 20
    :cond_4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/q;->i()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 21
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p3, v0

    if-gez p3, :cond_5

    .line 22
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->i()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 23
    invoke-static {p2, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->q(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    return v4

    .line 24
    :cond_5
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 25
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 26
    invoke-virtual {p3}, Landroidx/recyclerview/widget/q;->o()I

    move-result p3

    add-int/2addr p1, p3

    goto :goto_0

    .line 27
    :cond_6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    .line 28
    :goto_0
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_1

    .line 29
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result p1

    if-lez p1, :cond_9

    .line 30
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 31
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result p1

    .line 32
    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    if-ge p3, p1, :cond_8

    move v1, v4

    :cond_8
    invoke-static {p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->q(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 33
    :cond_9
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    :goto_1
    return v4

    .line 34
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result p1

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz p1, :cond_b

    .line 35
    iget p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 36
    invoke-virtual {p3}, Landroidx/recyclerview/widget/q;->j()I

    move-result p3

    sub-int/2addr p1, p3

    .line 37
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    goto :goto_2

    .line 38
    :cond_b
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/q;->m()I

    move-result p1

    iget p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    add-int/2addr p1, p3

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    :goto_2
    return v4

    .line 39
    :cond_c
    :goto_3
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    .line 40
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    :cond_d
    :goto_4
    return v1
.end method

.method public R1(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$u0;I)V
    .locals 0

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/n;

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Landroidx/recyclerview/widget/n;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t0;->q(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->S1(Landroidx/recyclerview/widget/RecyclerView$t0;)V

    return-void
.end method

.method public final R2(Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q2(Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$b;Lcom/google/android/flexbox/FlexboxLayoutManager$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->P2(Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    const/4 p1, 0x0

    .line 4
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    return-void
.end method

.method public final S2(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->q2()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/d;->t(I)V

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/d;->u(I)V

    .line 5
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/d;->s(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v0, v0, Lcom/google/android/flexbox/d;->c:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    return-void

    .line 7
    :cond_1
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:I

    .line 8
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w2()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 12
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->j()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    :goto_0
    return-void
.end method

.method public final T2(I)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->w0()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->i0()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    if-eqz v4, :cond_2

    .line 6
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q:I

    if-eq v4, v7, :cond_0

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_2

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v4

    goto :goto_2

    .line 10
    :cond_2
    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->R:I

    if-eq v4, v7, :cond_3

    if-eq v4, v3, :cond_3

    goto :goto_1

    :cond_3
    move v5, v6

    .line 11
    :goto_1
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->U:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_2

    .line 13
    :cond_4
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v4

    :goto_2
    move v6, v4

    .line 14
    iput v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->Q:I

    .line 15
    iput v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->R:I

    .line 16
    iget v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    iget v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    if-ne v4, v3, :cond_5

    if-eqz v5, :cond_8

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 19
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    invoke-virtual {p1}, Lcom/google/android/flexbox/d$b;->a()V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 22
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 23
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/d;->e(Lcom/google/android/flexbox/d$b;IIIILjava/util/List;)V

    goto :goto_3

    .line 24
    :cond_7
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 25
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 26
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/d;->h(Lcom/google/android/flexbox/d$b;IIIILjava/util/List;)V

    .line 27
    :goto_3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p1, Lcom/google/android/flexbox/d$b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    .line 28
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/flexbox/d;->p(II)V

    .line 29
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {p1}, Lcom/google/android/flexbox/d;->X()V

    .line 30
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v0, v0, Lcom/google/android/flexbox/d;->c:[I

    .line 31
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    aget v0, v0, v1

    .line 32
    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    .line 33
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto/16 :goto_6

    :cond_8
    if-eq v2, v3, :cond_9

    .line 34
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v2

    :goto_4
    move v10, v2

    .line 35
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    invoke-virtual {v2}, Lcom/google/android/flexbox/d$b;->a()V

    .line 36
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 37
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 38
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/d;->j(Ljava/util/List;I)V

    .line 39
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 40
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v4, v0

    move v5, v1

    move v7, v10

    .line 41
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/d;->b(Lcom/google/android/flexbox/d$b;IIIIILjava/util/List;)V

    goto :goto_5

    .line 42
    :cond_a
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/d;->s(I)V

    .line 43
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 44
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/d;->d(Lcom/google/android/flexbox/d$b;IIIILjava/util/List;)V

    goto :goto_5

    .line 45
    :cond_b
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 46
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-virtual {p1, v2, v10}, Lcom/google/android/flexbox/d;->j(Ljava/util/List;I)V

    .line 47
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    .line 48
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v4, v1

    move v5, v0

    move v7, v10

    .line 49
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/flexbox/d;->b(Lcom/google/android/flexbox/d$b;IIIIILjava/util/List;)V

    goto :goto_5

    .line 50
    :cond_c
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v2, p1}, Lcom/google/android/flexbox/d;->s(I)V

    .line 51
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v4, v0

    move v5, v1

    .line 52
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/d;->g(Lcom/google/android/flexbox/d$b;IIIILjava/util/List;)V

    .line 53
    :goto_5
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p1, Lcom/google/android/flexbox/d$b;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    .line 54
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {p1, v0, v1, v10}, Lcom/google/android/flexbox/d;->q(III)V

    .line 55
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {p1, v10}, Lcom/google/android/flexbox/d;->Y(I)V

    :goto_6
    return-void
.end method

.method public final U2(II)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->x(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->w0()I

    move-result v2

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->i0()I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 5
    iget-boolean v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, -0x1

    if-ne p1, v4, :cond_6

    .line 6
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v8, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 8
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v7

    .line 9
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v8, v8, Lcom/google/android/flexbox/d;->c:[I

    aget v8, v8, v7

    .line 10
    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/flexbox/c;

    .line 11
    invoke-virtual {p0, p1, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p2(Landroid/view/View;Lcom/google/android/flexbox/c;)Landroid/view/View;

    move-result-object p1

    .line 12
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v8, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->z(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 13
    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->y(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v9

    add-int/2addr v7, v9

    invoke-static {v8, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->t(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 14
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v7, v7, Lcom/google/android/flexbox/d;->c:[I

    array-length v7, v7

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v8

    if-gt v7, v8, :cond_2

    .line 15
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v7, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_1

    .line 16
    :cond_2
    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v8, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v8, v8, Lcom/google/android/flexbox/d;->c:[I

    .line 17
    invoke-static {v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v9

    aget v8, v8, v9

    .line 18
    invoke-static {v7, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    :goto_1
    if-eqz v5, :cond_3

    .line 19
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v7

    invoke-static {v5, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 20
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v7, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v7, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 21
    invoke-virtual {v7}, Landroidx/recyclerview/widget/q;->m()I

    move-result v7

    add-int/2addr p1, v7

    .line 22
    invoke-static {v5, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 23
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_2

    .line 24
    :cond_3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 25
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v5, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 26
    invoke-virtual {v5}, Landroidx/recyclerview/widget/q;->i()I

    move-result v5

    sub-int/2addr p1, v5

    .line 27
    invoke-static {v3, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 28
    :goto_2
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    if-eq p1, v6, :cond_4

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    .line 29
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_c

    :cond_4
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    .line 30
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemCount()I

    move-result v3

    if-gt p1, v3, :cond_c

    .line 31
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    sub-int v7, p2, p1

    .line 32
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    invoke-virtual {p1}, Lcom/google/android/flexbox/d$b;->a()V

    if-lez v7, :cond_c

    if-eqz v0, :cond_5

    .line 33
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    .line 34
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v5, v1

    move v6, v2

    .line 35
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/d;->d(Lcom/google/android/flexbox/d$b;IIIILjava/util/List;)V

    goto :goto_3

    .line 36
    :cond_5
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->X:Lcom/google/android/flexbox/d$b;

    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    .line 37
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v8

    iget-object v9, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    move v5, v1

    move v6, v2

    .line 38
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/flexbox/d;->g(Lcom/google/android/flexbox/d$b;IIIILjava/util/List;)V

    .line 39
    :goto_3
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    .line 40
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    .line 41
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/flexbox/d;->q(III)V

    .line 42
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->s(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/d;->Y(I)V

    goto/16 :goto_6

    .line 43
    :cond_6
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 44
    :cond_7
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 45
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v1, v1, Lcom/google/android/flexbox/d;->c:[I

    aget v1, v1, v0

    .line 47
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/flexbox/c;

    .line 48
    invoke-virtual {p0, p1, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m2(Landroid/view/View;Lcom/google/android/flexbox/c;)Landroid/view/View;

    move-result-object p1

    .line 49
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v1, v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->z(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 50
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v1, v1, Lcom/google/android/flexbox/d;->c:[I

    aget v1, v1, v0

    if-ne v1, v6, :cond_8

    move v1, v3

    :cond_8
    if-lez v1, :cond_9

    .line 51
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    add-int/lit8 v6, v1, -0x1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/flexbox/c;

    .line 52
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {v2}, Lcom/google/android/flexbox/c;->b()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v6, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->t(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_4

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v0, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->t(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 54
    :goto_4
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    if-lez v1, :cond_a

    sub-int/2addr v1, v4

    goto :goto_5

    :cond_a
    move v1, v3

    :goto_5
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    if-eqz v5, :cond_b

    .line 55
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 56
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 57
    invoke-virtual {v1}, Landroidx/recyclerview/widget/q;->i()I

    move-result v1

    sub-int/2addr p1, v1

    .line 58
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 59
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_6

    .line 60
    :cond_b
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 61
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 62
    invoke-virtual {v1}, Landroidx/recyclerview/widget/q;->m()I

    move-result v1

    add-int/2addr p1, v1

    .line 63
    invoke-static {v0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 64
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    return-void
.end method

.method public final V2(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->K2()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$d;Z)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->i()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 8
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->t(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 9
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->z(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 10
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->x(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 11
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 12
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/high16 v1, -0x80000000

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 13
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    if-eqz p2, :cond_2

    .line 14
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v0, :cond_2

    .line 16
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    if-ltz p2, :cond_2

    .line 17
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ge p2, p3, :cond_2

    .line 18
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/c;

    .line 19
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->l(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    .line 20
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {p1}, Lcom/google/android/flexbox/c;->b()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->u(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    :cond_2
    return-void
.end method

.method public final W2(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->K2()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$d;Z)Z

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/q;->m()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_1

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 8
    invoke-virtual {v1}, Landroidx/recyclerview/widget/q;->m()I

    move-result v1

    sub-int/2addr v0, v1

    .line 9
    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->h(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 10
    :goto_1
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->t(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 11
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->z(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 12
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v0, -0x1

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->x(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 13
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 14
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/high16 v0, -0x80000000

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 15
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    if-eqz p2, :cond_2

    .line 16
    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p3

    if-le p2, p3, :cond_2

    .line 18
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/flexbox/c;

    .line 19
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->m(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    .line 20
    iget-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {p1}, Lcom/google/android/flexbox/c;->b()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->v(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    :cond_2
    return-void
.end method

.method public Z0(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->Z0(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S2(I)V

    return-void
.end method

.method public a(I)Landroid/graphics/PointF;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    .line 6
    :cond_3
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    invoke-direct {v0, p1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public b(Landroid/view/View;IILcom/google/android/flexbox/c;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/google/android/flexbox/FlexboxLayoutManager;->Y:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->u(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->l0(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->q0(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    .line 4
    iget p1, p4, Lcom/google/android/flexbox/c;->e:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/c;->e:I

    .line 5
    iget p1, p4, Lcom/google/android/flexbox/c;->f:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/c;->f:I

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->t0(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->S(Landroid/view/View;)I

    move-result p1

    add-int/2addr p2, p1

    .line 7
    iget p1, p4, Lcom/google/android/flexbox/c;->e:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/c;->e:I

    .line 8
    iget p1, p4, Lcom/google/android/flexbox/c;->f:I

    add-int/2addr p1, p2

    iput p1, p4, Lcom/google/android/flexbox/c;->f:I

    :goto_0
    return-void
.end method

.method public b1(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$c0;->b1(Landroidx/recyclerview/widget/RecyclerView;III)V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S2(I)V

    return-void
.end method

.method public c(III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->w0()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->v()Z

    move-result v1

    .line 3
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->V(IIIIZ)I

    move-result p1

    return p1
.end method

.method public c1(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->c1(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S2(I)V

    return-void
.end method

.method public final c2(Landroid/view/View;I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    if-gt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->h()I

    move-result v0

    sub-int/2addr v0, p2

    if-lt p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public d1(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$c0;->d1(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S2(I)V

    return-void
.end method

.method public final d2(Landroid/view/View;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->h()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 3
    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    if-gt v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    if-gt p1, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:Landroidx/recyclerview/widget/RecyclerView$j0;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$j0;->o(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e1(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$c0;->e1(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->S2(I)V

    return-void
.end method

.method public final e2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->k(Lcom/google/android/flexbox/FlexboxLayoutManager$b;I)I

    return-void
.end method

.method public f(III)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->i0()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w()Z

    move-result v1

    .line 3
    invoke-static {p1, v0, p2, p3, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->V(IIIIZ)I

    move-result p1

    return p1
.end method

.method public f1(Landroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->H:Landroidx/recyclerview/widget/RecyclerView$j0;

    .line 2
    iput-object p2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:Landroidx/recyclerview/widget/RecyclerView$u0;

    .line 3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$u0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->L2()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j2()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i2()V

    .line 8
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/d;->t(I)V

    .line 9
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/d;->u(I)V

    .line 10
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    invoke-virtual {v1, v0}, Lcom/google/android/flexbox/d;->s(I)V

    .line 11
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->C(Lcom/google/android/flexbox/FlexboxLayoutManager$d;Z)Z

    .line 12
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->f(Lcom/google/android/flexbox/FlexboxLayoutManager$e;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$e;)I

    move-result v1

    iput v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->m(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    if-eqz v1, :cond_3

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {p0, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->R2(Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v1, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->n(Lcom/google/android/flexbox/FlexboxLayoutManager$b;Z)Z

    .line 18
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->H(Landroidx/recyclerview/widget/RecyclerView$j0;)V

    .line 19
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->W2(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    goto :goto_0

    .line 21
    :cond_4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->V2(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    .line 22
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->T2(I)V

    .line 23
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k2(Landroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    .line 24
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->V2(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    .line 27
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k2(Landroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    .line 28
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v1

    goto :goto_1

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v1

    .line 30
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-virtual {p0, v0, v3, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->W2(Lcom/google/android/flexbox/FlexboxLayoutManager$b;ZZ)V

    .line 31
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->k2(Landroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    .line 32
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->a(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    .line 33
    :goto_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v4

    if-lez v4, :cond_7

    .line 34
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {v4}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->p(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 36
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Z)I

    goto :goto_2

    .line 37
    :cond_6
    invoke-virtual {p0, v0, p1, p2, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->u2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 38
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->t2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Z)I

    :cond_7
    :goto_2
    return-void
.end method

.method public final f2(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j2()V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l2(I)Landroid/view/View;

    move-result-object v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o2(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 8
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->n()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public g(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->t0(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->S(Landroid/view/View;)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->l0(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->q0(Landroid/view/View;)I

    move-result p1

    goto :goto_0
.end method

.method public g1(Landroidx/recyclerview/widget/RecyclerView$u0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->g1(Landroidx/recyclerview/widget/RecyclerView$u0;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->O:I

    const/high16 v0, -0x80000000

    .line 4
    iput v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->P:I

    .line 5
    iput p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->W:I

    .line 6
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->K:Lcom/google/android/flexbox/FlexboxLayoutManager$b;

    invoke-static {p1}, Lcom/google/android/flexbox/FlexboxLayoutManager$b;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$b;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final g2(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l2(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o2(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result p1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 9
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v0, v4

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 11
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v4, v4, Lcom/google/android/flexbox/d;->c:[I

    aget p1, v4, p1

    if-eqz p1, :cond_3

    const/4 v5, -0x1

    if-ne p1, v5, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    aget v1, v4, v3

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 14
    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 15
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 16
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public getAlignContent()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getAlignItems()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->B:I

    return v0
.end method

.method public getFlexDirection()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:I

    return v0
.end method

.method public getFlexItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->I:Landroidx/recyclerview/widget/RecyclerView$u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    return v0
.end method

.method public getFlexLinesInternal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    return-object v0
.end method

.method public getFlexWrap()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    return v0
.end method

.method public getLargestMainSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/high16 v0, -0x80000000

    .line 2
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 3
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/c;

    .line 4
    iget v3, v3, Lcom/google/android/flexbox/c;->e:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMaxLine()I
    .locals 1

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->C:I

    return v0
.end method

.method public getSumOfCrossSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/flexbox/c;

    .line 3
    iget v3, v3, Lcom/google/android/flexbox/c;->g:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public h(Lcom/google/android/flexbox/c;)V
    .locals 0

    return-void
.end method

.method public final h2(Landroidx/recyclerview/widget/RecyclerView$u0;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l2(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->o2(I)Landroid/view/View;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->n2()I

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->q2()I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v0

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 9
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 10
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$u0;->b()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public i(I)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->e(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final i2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    :cond_0
    return-void
.end method

.method public j(ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final j2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-nez v0, :cond_1

    .line 4
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 5
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 7
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-nez v0, :cond_3

    .line 9
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 10
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->a(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 12
    invoke-static {p0}, Landroidx/recyclerview/widget/q;->c(Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->M:Landroidx/recyclerview/widget/q;

    :goto_0
    return-void
.end method

.method public k(Landroid/view/View;II)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->l0(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->q0(Landroid/view/View;)I

    move-result p1

    :goto_0
    add-int/2addr p2, p1

    return p2

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->t0(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->S(Landroid/view/View;)I

    move-result p1

    goto :goto_0
.end method

.method public k1(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->C1()V

    :cond_0
    return-void
.end method

.method public final k2(Landroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I
    .locals 8

    .line 1
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    invoke-static {p3, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->q(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->G2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V

    .line 5
    :cond_1
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v0

    .line 6
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v2

    const/4 v3, 0x0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v4

    :goto_0
    if-gtz v2, :cond_2

    .line 8
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->J:Lcom/google/android/flexbox/FlexboxLayoutManager$d;

    invoke-static {v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    .line 9
    invoke-static {p3, p2, v5}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->r(Lcom/google/android/flexbox/FlexboxLayoutManager$d;Landroidx/recyclerview/widget/RecyclerView$u0;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 10
    iget-object v5, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->j(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/flexbox/c;

    .line 11
    iget v6, v5, Lcom/google/android/flexbox/c;->o:I

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->t(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 12
    invoke-virtual {p0, v5, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->D2(Lcom/google/android/flexbox/c;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v6

    add-int/2addr v3, v6

    if-nez v4, :cond_3

    .line 13
    iget-boolean v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v6, :cond_3

    .line 14
    invoke-virtual {v5}, Lcom/google/android/flexbox/c;->a()I

    move-result v6

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v7

    mul-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/flexbox/c;->a()I

    move-result v6

    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->w(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result v7

    mul-int/2addr v6, v7

    invoke-static {p3, v6}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->c(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 16
    :goto_1
    invoke-virtual {v5}, Lcom/google/android/flexbox/c;->a()I

    move-result v5

    sub-int/2addr v2, v5

    goto :goto_0

    .line 17
    :cond_4
    invoke-static {p3, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->i(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 18
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->o(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p2

    if-eq p2, v1, :cond_6

    .line 19
    invoke-static {p3, v3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->q(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 20
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p2

    if-gez p2, :cond_5

    .line 21
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p2

    invoke-static {p3, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->q(Lcom/google/android/flexbox/FlexboxLayoutManager$d;I)I

    .line 22
    :cond_5
    invoke-virtual {p0, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->G2(Landroidx/recyclerview/widget/RecyclerView$j0;Lcom/google/android/flexbox/FlexboxLayoutManager$d;)V

    .line 23
    :cond_6
    invoke-static {p3}, Lcom/google/android/flexbox/FlexboxLayoutManager$d;->g(Lcom/google/android/flexbox/FlexboxLayoutManager$d;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->y:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public l1()Landroid/os/Parcelable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->N:Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;-><init>(Lcom/google/android/flexbox/FlexboxLayoutManager$e;Lcom/google/android/flexbox/FlexboxLayoutManager$a;)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager$e;

    invoke-direct {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v1

    if-lez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->w2()Landroid/view/View;

    move-result-object v1

    .line 6
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->b(Lcom/google/android/flexbox/FlexboxLayoutManager$e;I)I

    .line 7
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 8
    invoke-virtual {v2}, Landroidx/recyclerview/widget/q;->m()I

    move-result v2

    sub-int/2addr v1, v2

    .line 9
    invoke-static {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->d(Lcom/google/android/flexbox/FlexboxLayoutManager$e;I)I

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager$e;->e(Lcom/google/android/flexbox/FlexboxLayoutManager$e;)V

    :goto_0
    return-object v0
.end method

.method public final l2(I)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->s2(III)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v2, v2, Lcom/google/android/flexbox/d;->c:[I

    aget v1, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/c;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->m2(Landroid/view/View;Lcom/google/android/flexbox/c;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final m2(Landroid/view/View;Lcom/google/android/flexbox/c;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    .line 2
    iget p2, p2, Lcom/google/android/flexbox/c;->h:I

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 7
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v4

    if-ge v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 9
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

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

.method public n2()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->r2(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final o2(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->s2(III)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->G:Lcom/google/android/flexbox/d;

    iget-object v1, v1, Lcom/google/android/flexbox/d;->c:[I

    aget v0, v1, v0

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/flexbox/c;

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->p2(Landroid/view/View;Lcom/google/android/flexbox/c;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final p2(Landroid/view/View;Lcom/google/android/flexbox/c;)Landroid/view/View;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v2

    iget p2, p2, Lcom/google/android/flexbox/c;->h:I

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le v1, v2, :cond_3

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 6
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 7
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v4

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 9
    invoke-virtual {v4, p2}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

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

.method public q2()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->U()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->r2(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public final r2(IIZ)Landroid/view/View;
    .locals 3

    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eq p1, p2, :cond_2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v1

    .line 2
    invoke-virtual {p0, v1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->C2(Landroid/view/View;Z)Z

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

.method public final s2(III)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->j2()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->i2()V

    .line 3
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/q;->i()I

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
    if-eq p1, p2, :cond_6

    .line 5
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$c0;->o0(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5

    if-ge v6, p3, :cond_5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$d0;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v4, :cond_5

    move-object v4, v5

    goto :goto_3

    .line 8
    :cond_2
    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/q;->g(Landroid/view/View;)I

    move-result v6

    if-lt v6, v0, :cond_4

    iget-object v6, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    .line 9
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/q;->d(Landroid/view/View;)I

    move-result v6

    if-le v6, v1, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    move-object v3, v5

    :cond_5
    :goto_3
    add-int/2addr p1, v2

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v4

    :goto_4
    return-object v3
.end method

.method public setFlexLines(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/flexbox/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->F:Ljava/util/List;

    return-void
.end method

.method public final t2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p2

    goto :goto_1

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->i()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_4

    neg-int v0, v0

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p2

    neg-int p2, p2

    :goto_1
    add-int/2addr p1, p2

    if-eqz p4, :cond_3

    .line 6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/q;->i()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_3

    .line 7
    iget-object p1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/q;->r(I)V

    add-int/2addr p3, p2

    return p3

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method public final u2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;Z)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->D:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->i()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_0

    neg-int v0, v0

    .line 3
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p2

    goto :goto_0

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/q;->m()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_3

    .line 5
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->A2(ILandroidx/recyclerview/widget/RecyclerView$j0;Landroidx/recyclerview/widget/RecyclerView$u0;)I

    move-result p2

    neg-int p2, p2

    :goto_0
    add-int/2addr p1, p2

    if-eqz p4, :cond_2

    .line 6
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/q;->m()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_2

    .line 7
    iget-object p3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->L:Landroidx/recyclerview/widget/q;

    neg-int p4, p1

    invoke-virtual {p3, p4}, Landroidx/recyclerview/widget/q;->r(I)V

    sub-int/2addr p2, p1

    :cond_2
    return p2

    :cond_3
    return v1
.end method

.method public v()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->v0()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-le v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final v2(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->Z(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public w()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->z:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->l()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->h0()I

    move-result v0

    iget-object v3, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->V:Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-le v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public final w2()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->T(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public x(Landroidx/recyclerview/widget/RecyclerView$d0;)Z
    .locals 0

    instance-of p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$c;

    return p1
.end method

.method public final x2(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->b0(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public final y2(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->e0(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p1, v0

    return p1
.end method

.method public z0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z2(Landroid/view/View;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$d0;

    .line 2
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->f0(Landroid/view/View;)I

    move-result p1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    return p1
.end method
