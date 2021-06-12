.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-ne p6, p2, :cond_0

    if-eq p8, p4, :cond_2

    :cond_0
    const-string p1, "ScrollableTabLayout"

    .line 110
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onLayoutChanged() left="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "->"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", right="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mIsInit="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 612
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 p3, -0x1

    .line 112
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$1;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 p3, 0x1e

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
