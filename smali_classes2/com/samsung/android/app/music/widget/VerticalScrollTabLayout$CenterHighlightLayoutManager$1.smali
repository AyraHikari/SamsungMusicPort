.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/content/Context;F)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$1;->b:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$1;->a:F

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    .line 448
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$1;->a:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method
