.class public Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$ViewHolder;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

.field private e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

.field private f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

.field private g:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 50
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    .line 53
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    .line 84
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:Ljava/util/List;

    .line 86
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i:I

    const/4 v0, 0x2

    const v1, 0x7f0f0106

    const v2, 0x7f0f0101

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_5

    .line 102
    sget-object v5, Lcom/samsung/android/app/music/R$styleable;->VerticalScrollTabLayout:[I

    .line 103
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    .line 106
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    if-ne v9, v3, :cond_0

    .line 108
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    goto :goto_1

    :cond_0
    if-ne v9, v0, :cond_1

    .line 110
    invoke-virtual {p2, v6, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    goto :goto_1

    :cond_1
    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 112
    invoke-virtual {p2, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    goto :goto_1

    :cond_2
    if-nez v9, :cond_3

    .line 114
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 117
    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 120
    :goto_2
    iget p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    if-ne p2, p3, :cond_6

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    .line 124
    :cond_6
    iget p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    if-ne p2, p3, :cond_7

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    .line 129
    :cond_7
    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setTransformation(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const v1, 0x106000d

    .line 151
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setBackgroundResource(I)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100023

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 153
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setFadingEdgeLength(I)V

    .line 156
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {p0, v1, p3, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->addView(Landroid/view/View;II)V

    .line 161
    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    .line 162
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {p2, v4}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->setClipToPadding(Z)V

    .line 163
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {p0, p2, p3, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->addView(Landroid/view/View;II)V

    .line 166
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    new-instance p3, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;

    const/4 v1, 0x0

    invoke-direct {p3, v7, v1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;-><init>(ILcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;)V

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 168
    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-direct {p2, p1, v8, v7}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;-><init>(Landroid/content/Context;II)V

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$2;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;)V

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    new-instance p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$3;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->e:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->setHasFixedSize(Z)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->setOverScrollMode(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->c:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a:I

    return p0
.end method

.method private b(I)V
    .locals 3

    if-gez p1, :cond_0

    const-string v0, "VerticalScrollTabLayout"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireTabSelectedCallback. pos under zero. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", listener size - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:Ljava/util/List;

    .line 206
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a()I

    move-result v0

    if-gt v0, p1, :cond_1

    const-string v0, "VerticalScrollTabLayout"

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireTabSelectedCallback. index out of bound. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", adapter size - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;->a()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", listener size - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:Ljava/util/List;

    .line 212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 215
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i:I

    if-ne p1, v0, :cond_2

    return-void

    .line 218
    :cond_2
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i:I

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:Ljava/util/List;

    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;

    .line 222
    invoke-interface {v1, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;->a(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    const-string v0, "VerticalScrollTabLayout"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectTab. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->scrollToPosition(I)V

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->b(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 289
    check-cast p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;

    .line 290
    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 291
    iget p1, p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;->a:I

    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i:I

    const-string p1, "VerticalScrollTabLayout"

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestoreInstanceState. saved pos - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 281
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 282
    new-instance v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 283
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->i:I

    iput v0, v1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$SavedState;->a:I

    return-object v1
.end method

.method public setAdapter(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;)V
    .locals 1

    .line 233
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    .line 234
    new-instance p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$4;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;)V

    const/4 v0, 0x1

    .line 274
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->d:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$InternalRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setTransformation(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->g:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    return-void
.end method
