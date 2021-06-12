.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomItemSpaceDecoration"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 368
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 369
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;->a:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;)V
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    .line 375
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 376
    iget p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;->a:I

    if-lez p2, :cond_0

    .line 377
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$BottomItemSpaceDecoration;->a:I

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void
.end method
