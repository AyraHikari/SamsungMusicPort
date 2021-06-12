.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->invoke()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const-string v0, "ScrollableTabLayout"

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endScrollRunnable isTouched="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->i(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScrollByTouchEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->f(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->i(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Z)V

    const/4 v0, 0x0

    .line 74
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const v2, 0x7fffffff

    .line 76
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 612
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v5, v1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->b()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v1, v7, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FILjava/lang/Object;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v6, v4

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v6, v4

    .line 78
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v4, v4, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->getScrollX()I

    move-result v4

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_0

    move-object v5, v1

    move v2, v4

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_4

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZILjava/lang/Object;)V

    goto :goto_1

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->e()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$endScrollRunnable$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->j(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_1
    return-void
.end method
