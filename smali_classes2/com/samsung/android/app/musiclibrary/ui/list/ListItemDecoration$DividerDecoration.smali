.class final Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DividerDecoration"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

.field private final b:Landroid/graphics/Rect;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Lcom/samsung/android/app/musiclibrary/ui/list/Divider;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/Divider;",
            ")V"
        }
    .end annotation

    const-string v0, "divider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    .line 104
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->d:Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    .line 106
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->b:Landroid/graphics/Rect;

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->d:Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 109
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 110
    :cond_2
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    new-array p2, v0, [I

    const v0, 0x1010214

    aput v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 114
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_4

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->b:Landroid/graphics/Rect;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :cond_4
    move-object p1, p2

    .line 110
    :goto_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "c"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "parent"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 122
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    .line 123
    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->c(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$CheckBoxOffsetManager;->a()I

    move-result v7

    .line 124
    move-object v8, v2

    check-cast v8, Landroid/view/ViewGroup;

    .line 250
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_11

    .line 251
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    const-string v12, "getChildAt(index)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    add-int/lit8 v12, v6, -0x1

    if-ne v10, v12, :cond_2

    goto/16 :goto_b

    .line 127
    :cond_2
    invoke-virtual {v2, v11}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v12

    if-eqz v12, :cond_10

    check-cast v12, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    add-int/lit8 v13, v6, -0x1

    if-ge v10, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    :goto_3
    const/4 v14, 0x0

    if-eqz v13, :cond_4

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object v13, v14

    :goto_4
    if-eqz v13, :cond_6

    add-int/lit8 v15, v10, 0x1

    .line 129
    invoke-virtual {v13, v15}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_6

    .line 131
    invoke-virtual {v2, v13}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v13

    if-eqz v13, :cond_5

    check-cast v13, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    goto :goto_5

    :cond_5
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter.ViewHolder"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v13, v14

    .line 133
    :goto_5
    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->d:Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    invoke-virtual {v15}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;->b()Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;

    move-result-object v15

    invoke-interface {v15, v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v13

    iget-object v15, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->b:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v15

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v15, v3

    .line 137
    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->guideline_divider:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/Guideline;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/support/constraint/Guideline;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object v3, v14

    :goto_6
    instance-of v5, v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    move-object v14, v3

    :goto_7
    check-cast v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    if-eqz v14, :cond_9

    .line 138
    iget v3, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideBegin:I

    goto :goto_8

    :cond_9
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    :goto_8
    if-eqz v14, :cond_a

    .line 139
    iget v5, v14, Landroid/support/constraint/ConstraintLayout$LayoutParams;->guideEnd:I

    goto :goto_9

    :cond_a
    invoke-virtual {v11}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    .line 140
    :goto_9
    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {v14}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a()I

    move-result v14

    if-lez v14, :cond_b

    .line 141
    iget-object v14, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-static {v14}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;->b(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$IndexViewOffsetManager;->a()I

    move-result v14

    invoke-static {v14, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 143
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    add-int/2addr v13, v5

    sub-int/2addr v15, v3

    .line 152
    iget-object v3, v12, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/2addr v15, v7

    goto :goto_a

    :pswitch_1
    add-int/2addr v13, v3

    sub-int/2addr v15, v5

    .line 147
    iget-object v3, v12, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v5, "holder.itemView"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    add-int/2addr v13, v7

    .line 155
    :cond_c
    :goto_a
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_e

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 156
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v3

    .line 157
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->c:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v5

    .line 158
    iget-object v11, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v13, v5, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration$DividerDecoration;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b

    .line 155
    :cond_e
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type android.support.v7.widget.RecyclerView.LayoutParams"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_b
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 127
    :cond_10
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.RecyclerCursorAdapter.ViewHolder"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
