.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/lang/Runnable;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Landroid/view/ViewTreeObserver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->d:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->a:Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$Condition;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->d:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$4;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
