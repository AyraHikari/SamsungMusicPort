.class Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingDividerDecoration"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;Landroid/content/Context;)V
    .locals 2

    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->a:Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 258
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f020220

    const/4 v0, 0x0

    .line 259
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->b:Landroid/graphics/drawable/Drawable;

    const p2, 0x7f1005fe

    .line 260
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const v1, 0x7f1000be

    .line 261
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f1005ea

    .line 262
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->c:I

    .line 263
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->d:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 296
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 297
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    .line 299
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p1, p4, p4, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .line 270
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result p3

    if-nez p3, :cond_0

    .line 271
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingStart()I

    move-result p3

    iget v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->c:I

    add-int/2addr p3, v0

    .line 272
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingEnd()I

    move-result p3

    iget v0, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->d:I

    add-int/2addr p3, v0

    .line 275
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->c:I

    sub-int/2addr v0, v1

    .line 277
    :goto_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 282
    :cond_1
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 285
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 286
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 288
    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 289
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment$SettingDividerDecoration;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
