.class final Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/content/Context;Ljava/util/List;[Landroid/net/Uri;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Ljava/util/Map;Ljava/util/Map;Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->c:Ljava/util/Map;

    iput-object p3, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->d:Ljava/util/Map;

    iput-object p4, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->e:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 325
    iput-boolean p1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Landroid/graphics/Bitmap;)Lkotlin/Unit;
    .locals 7

    .line 331
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->getNextImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 332
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setFraction(F)V

    if-eqz p2, :cond_0

    .line 335
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->b:Landroid/content/Context;

    sget v2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 340
    :goto_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setNextImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 342
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 343
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setCurrentImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setFraction(F)V

    goto :goto_1

    :cond_1
    const-string v0, "fraction"

    const/4 v1, 0x2

    .line 346
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 347
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 349
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 350
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 352
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 353
    iput-boolean v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->a:Z

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->e:Ljava/lang/ref/WeakReference;

    .line 355
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;

    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$OnNImageViewLoaderCompleted;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils$3;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Landroid/graphics/Bitmap;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
