.class Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$2;->a:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 38
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper$2;->a:Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;

    invoke-virtual {p3, p2, p1}, Lcom/samsung/android/app/music/browse/list/animation/AbsItemAnimationHelper;->a(Landroid/view/View;I)V

    return-void
.end method
