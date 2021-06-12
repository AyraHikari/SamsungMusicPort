.class public Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "ContentsLayoutBehavior"


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->c:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->a:I

    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->c:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->a(I)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->c(I)V

    goto :goto_0

    .line 71
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->a:I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 85
    instance-of p1, p3, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    return p1
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 4

    .line 37
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    .line 38
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;

    if-eqz v0, :cond_1

    .line 39
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a()I

    move-result v0

    .line 41
    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 42
    instance-of v0, p2, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz v0, :cond_1

    .line 43
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->c:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->c:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;)V

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    .line 46
    instance-of v0, p3, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->c:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/Expandable;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->a(Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V

    .line 48
    check-cast p3, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result p3

    if-eq p1, p3, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDependentViewChanged. paddingTop changed from - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", to - "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 53
    invoke-virtual {p2, p1, p3, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->b()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDependentViewChanged. content offset - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/ContentsLayoutBehavior;->a(I)Z

    :cond_1
    const/4 p1, 0x0

    return p1
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

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
