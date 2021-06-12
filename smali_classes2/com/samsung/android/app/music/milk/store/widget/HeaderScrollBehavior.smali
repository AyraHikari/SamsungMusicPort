.class public Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior<",
        "Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "HeaderScrollBehavior"


# instance fields
.field private d:Z

.field private e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Landroid/os/Parcelable;
    .locals 2

    .line 47
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "key_offset"

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState. offset - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/os/Parcelable;)V
    .locals 1

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRestoreInstanceState. state - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    instance-of p1, p3, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 59
    check-cast p3, Landroid/os/Bundle;

    const-string p1, "key_offset"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(I)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 161
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onStopNestedScroll."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;IIII)V
    .locals 6
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-super/range {p0 .. p7}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 126
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-nez p3, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNestedScroll. scroll view is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onNestedScroll. dyUnconsumed - "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-gez p7, :cond_1

    .line 134
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->d:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->d:Z

    :goto_0
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;II[I)V
    .locals 6
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-nez p3, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNestedPreScroll. scroll view is null"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "onNestedPreScroll. dy - "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", skip - "

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p6, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->d:Z

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 152
    iget-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->d:Z

    if-nez p3, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result p3

    neg-int v4, p3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    :cond_1
    return-void
.end method

.method a(Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;)V
    .locals 3

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExpandableScrollView - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;I)Z
    .locals 4

    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p3

    .line 171
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->bringToFront()V

    const/4 v0, 0x1

    .line 172
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->setClickable(Z)V

    .line 175
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getPendingAction()I

    move-result v0

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLayoutChild. pendingAction - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v1

    neg-int v1, v1

    if-eq v0, v1, :cond_1

    .line 189
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 193
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;->a()V

    return p3
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FF)Z
    .locals 7
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedPreFling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c(Landroid/view/View;)I

    move-result v0

    neg-int v4, v0

    neg-float v6, p5

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 83
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FFZ)Z
    .locals 3
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNestedFling. velocityY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", consumed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super/range {p0 .. p6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/support/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;
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

    if-eqz p1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p1

    const-string p3, "onStartNestedScroll."

    invoke-static {p1, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    instance-of p1, p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-eqz p1, :cond_0

    .line 107
    check-cast p4, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {p4, p2}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->a(Lcom/samsung/android/app/music/milk/store/widget/Expandable;)V

    .line 108
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected bridge synthetic a(Landroid/view/View;)Z
    .locals 0

    .line 24
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Z

    move-result p1

    return p1
.end method

.method protected a(Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(I)Z
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "canScrolll. scrollView is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canScroll. dy - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-gez p1, :cond_1

    return v0

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->e:Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/ExpandableScrollView;->b(I)Z

    move-result p1

    return p1
.end method

.method public synthetic onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7
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

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public synthetic onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .locals 6
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

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public synthetic onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7
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
    .param p6    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8
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

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public synthetic onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public synthetic onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
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

    .line 24
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public synthetic onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
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

    .line 24
    check-cast p2, Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/HeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/HeaderLayout;Landroid/view/View;)V

    return-void
.end method
