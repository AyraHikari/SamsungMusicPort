.class public Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
.super Lcom/samsung/android/app/musiclibrary/ui/list/FragmentLifeCycleItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DefaultDividerChecker;,
        Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;,
        Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private final b:I

.field private final c:I

.field private final d:I

.field private e:I

.field private f:I

.field private final g:Landroid/graphics/Rect;

.field private final h:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field private final i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

.field private final j:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

.field private k:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

.field private l:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private final m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

.field private final n:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)V
    .locals 5

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/FragmentLifeCycleItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->e:I

    .line 46
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->f:I

    .line 165
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 188
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;

    .line 110
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 112
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 113
    instance-of v4, v2, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v4, :cond_0

    .line 114
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 116
    :cond_0
    instance-of v2, v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    if-eqz v2, :cond_1

    .line 117
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->k:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    .line 119
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;

    .line 120
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    .line 122
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b:I

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->j:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->g:Landroid/graphics/Rect;

    .line 126
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    .line 127
    new-array v1, v1, [I

    const v4, 0x1010214

    aput v4, v1, v0

    .line 128
    invoke-virtual {v3, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 135
    :cond_2
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a:I

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    .line 137
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->d(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->c:I

    .line 138
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->e(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->d:I

    .line 140
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckBoxAnimatableList;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->h:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->e:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->h:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingStart()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    .line 219
    iget v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->c:I

    iget v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->e:I

    add-int/2addr v4, v5

    .line 220
    iget v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->d:I

    iget v6, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->f:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v6

    if-nez v6, :cond_0

    add-int/2addr v4, v2

    sub-int/2addr v3, v5

    .line 224
    iget v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->c:I

    add-int/2addr v2, v5

    move v5, v3

    move v15, v4

    move v4, v2

    move v2, v15

    goto :goto_0

    :cond_0
    add-int/2addr v2, v5

    sub-int v4, v3, v4

    .line 230
    iget v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->c:I

    sub-int/2addr v3, v5

    move v5, v3

    move v3, v4

    move v4, v2

    :goto_0
    const/4 v6, 0x1

    .line 236
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_2

    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 237
    :cond_2
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v7

    :goto_2
    if-ge v8, v7, :cond_8

    if-eqz v6, :cond_3

    add-int/lit8 v9, v7, -0x1

    if-ne v8, v9, :cond_3

    goto :goto_6

    .line 243
    :cond_3
    invoke-virtual {v1, v8}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 244
    invoke-virtual {v1, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    add-int/lit8 v11, v7, -0x1

    const/4 v12, 0x0

    if-ge v8, v11, :cond_4

    add-int/lit8 v11, v8, 0x1

    .line 245
    invoke-virtual {v1, v11}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    goto :goto_3

    :cond_4
    move-object v11, v12

    :goto_3
    if-eqz v11, :cond_5

    .line 247
    invoke-virtual {v1, v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    .line 249
    :cond_5
    iget-object v11, v10, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v2

    move v13, v3

    goto :goto_4

    :cond_6
    move v11, v4

    move v13, v5

    .line 257
    :goto_4
    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->j:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    invoke-interface {v14, v10, v12}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 259
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 260
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, v10, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    .line 261
    iget-object v10, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v10, v9

    .line 262
    iget-object v12, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v11, v9, v13, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v9, v0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_5

    :cond_7
    move-object/from16 v10, p1

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->f:I

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->i:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 7

    .line 269
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    .line 270
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 272
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 274
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 276
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 278
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v5, v4

    .line 279
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v4, v0, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 280
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 286
    iget p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 287
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->j:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;

    .line 288
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-interface {p4, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 289
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_0

    .line 290
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->f:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 292
    :cond_0
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->f:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 294
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 297
    :cond_1
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result p2

    if-nez p2, :cond_2

    .line 298
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 300
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_3
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 206
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->b(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    :goto_0
    return-void
.end method

.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->k:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    if-eqz p1, :cond_1

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->k:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;

    .line 150
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;)V

    :cond_1
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->l:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->m:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->k:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    if-eqz p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->k:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->n:Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;

    .line 161
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable;->b(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewObservable$OnIndexViewVisibleChangedListener;)V

    :cond_1
    return-void
.end method
