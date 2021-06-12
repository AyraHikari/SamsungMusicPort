.class Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager$TopSnappedSmoothScroller;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopSnappedSmoothScroller"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager$TopSnappedSmoothScroller;->a:Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;

    .line 74
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager$TopSnappedSmoothScroller;->a:Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$TopScrollLinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method protected getVerticalSnapPreference()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method
