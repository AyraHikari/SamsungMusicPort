.class public Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
.super Landroid/widget/FrameLayout;
.source "VerticalScrollTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$g;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$c;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$i;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$f;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

.field public d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;

.field public e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;

.field public f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 3
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    .line 4
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Ljava/util/List;

    .line 6
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    const v0, 0x7f0600dd

    const/4 v1, 0x2

    const v2, 0x7f0600d8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 7
    sget-object v5, Lcom/samsung/android/app/music/m;->x3:[I

    .line 8
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    move v6, v4

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v5, :cond_4

    .line 10
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    if-ne v9, v3, :cond_0

    .line 11
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    goto :goto_1

    :cond_0
    if-nez v9, :cond_1

    .line 12
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    goto :goto_1

    :cond_1
    if-ne v9, v1, :cond_2

    .line 13
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    goto :goto_1

    :cond_2
    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 14
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_5
    move v7, v4

    move v8, v7

    .line 16
    :goto_2
    iget p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    if-ne p2, p3, :cond_6

    .line 17
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    .line 18
    :cond_6
    iget p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    if-ne p2, p3, :cond_7

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    .line 20
    :cond_7
    new-instance p2, Lcom/samsung/android/app/music/widget/i;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/i;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setTransformation(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const v0, 0x106000d

    .line 22
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 23
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700f0

    .line 25
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 26
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFadingEdgeLength(I)V

    .line 27
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {v0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    invoke-virtual {p0, v0, p3, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 30
    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    .line 31
    invoke-virtual {p2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 32
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-virtual {p0, p2, p3, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 33
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    new-instance p3, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$c;

    const/4 v0, 0x0

    invoke-direct {p3, v8, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$c;-><init>(ILcom/samsung/android/app/music/widget/VerticalScrollTabLayout$a;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/OneUiRecyclerView;->x0(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 34
    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;

    invoke-direct {p2, p1, v7, v8}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;

    .line 35
    new-instance p1, Lcom/samsung/android/app/music/widget/j;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/widget/j;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;->h3(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;)V

    .line 36
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;

    new-instance p2, Lcom/samsung/android/app/music/widget/h;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/h;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;->g3(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d$c;)V

    .line 37
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/OneUiRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 38
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 39
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i(Landroid/view/View;IZ)V

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;Landroid/view/View;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->j(Landroid/view/View;IZ)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g(I)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;

    return-object p0
.end method

.method public static synthetic e(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    return-object p0
.end method

.method private synthetic i(Landroid/view/View;IZ)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "VerticalScrollTabLayout"

    const-string p2, "applyTransformation. view is null."

    .line 1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const p2, 0x7f0b054d

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3
    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p2, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 7
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method private synthetic j(Landroid/view/View;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;->a(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public f(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$f;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g(I)V
    .locals 4

    const-string v0, ", listener size - "

    const-string v1, "VerticalScrollTabLayout"

    if-gez p1, :cond_0

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireTabSelectedCallback. pos under zero. pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Ljava/util/List;

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;->a()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fireTabSelectedCallback. index out of bound. pos - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adapter size - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;

    .line 6
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;->a()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    if-ne p1, v0, :cond_2

    return-void

    .line 10
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    .line 11
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Ljava/util/List;

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$f;

    .line 13
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$f;->a(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getAdapter()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;

    return-object v0
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSelectedTab()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    return v0
.end method

.method public getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$t;->s()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->l(IZ)V

    return-void
.end method

.method public l(IZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectTab. pos - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerticalScrollTabLayout"

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p1, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "selectTab. tabPos position is invalid. pos - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$d;->f3(IZ)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$g;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$g;->a:I

    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->k(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestoreInstanceState. saved pos - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VerticalScrollTabLayout"

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$g;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$g;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:I

    iput v0, v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$g;->a:I

    return-object v1
.end method

.method public setAdapter(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$b;

    .line 2
    new-instance p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$a;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$a;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$t;->N(Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$e;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/OneUiRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$t;)V

    return-void
.end method

.method public setTransformation(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$h;

    return-void
.end method
