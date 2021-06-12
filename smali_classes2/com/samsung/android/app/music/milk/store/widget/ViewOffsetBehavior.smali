.class public Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field protected a:I

.field private b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a:I

    return-void
.end method

.method protected static a(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    .line 34
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 39
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a:I

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->c(I)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a(I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a:I

    return v1
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    .line 21
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->b:Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetHelper;->a()V

    .line 26
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a:I

    if-eqz p1, :cond_1

    .line 27
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;->a(I)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
