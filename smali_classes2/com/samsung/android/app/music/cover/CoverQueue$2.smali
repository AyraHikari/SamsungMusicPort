.class Lcom/samsung/android/app/music/cover/CoverQueue$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/cover/CoverQueue;

.field private final c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue;Landroid/content/Context;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->b:Lcom/samsung/android/app/music/cover/CoverQueue;

    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->a:Landroid/content/Context;

    const p2, 0x7f0200bd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 6

    .line 116
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result p3

    .line 117
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 119
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 121
    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 125
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    .line 126
    iget-object v4, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 127
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p3, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    iget-object v3, p0, Lcom/samsung/android/app/music/cover/CoverQueue$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
