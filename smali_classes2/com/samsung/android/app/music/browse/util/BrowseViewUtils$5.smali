.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/view/ViewTreeObserver;Landroid/view/View;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$5;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
