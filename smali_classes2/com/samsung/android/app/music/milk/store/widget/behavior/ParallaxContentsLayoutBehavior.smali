.class public Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "ParallaxContentsLayoutBehavior"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;"
        }
    .end annotation

    .line 102
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 103
    instance-of v1, v0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected c(I)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->c(I)V

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTopOffsetChanged. offset - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 91
    instance-of p1, p3, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return p1
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 65
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    .line 66
    instance-of p2, p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    if-eqz p2, :cond_0

    .line 67
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    .line 68
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a()I

    move-result p1

    .line 69
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    add-int/2addr p2, p1

    .line 70
    sget-object p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDependentViewChanged : header offset - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", content offset - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->a(I)Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3

    .line 58
    sget-object v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutChild. direction - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 8

    .line 30
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    iget p5, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p5, v1, :cond_1

    .line 31
    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object p5

    .line 32
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    const-string p2, "onMeasureChild. dependency empty"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 37
    :cond_0
    invoke-static {p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->a(Ljava/util/List;)Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    move-result-object p5

    if-eqz p5, :cond_1

    .line 39
    invoke-virtual {p5}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMinOffset()I

    move-result p5

    .line 41
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, p5

    const/high16 v1, -0x80000000

    .line 43
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 46
    sget-object p2, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onMeasureChild. parentHeight - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", minOffset - "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", final height - "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 51
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    const-string p2, "onMeasureChild. return false."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_0

    .line 82
    sget-object p1, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->b:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onStartNestedScroll : height - "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " top - "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentsLayoutBehavior;->a()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 82
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
