.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private lessModule(FF)F
    .locals 1

    .line 353
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    neg-float p1, p2

    return p1

    :cond_0
    return p2
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->unscheduleAnimation()V

    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->update()Z

    move-result v1

    .line 317
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDx()F

    move-result v2

    .line 318
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDy()F

    move-result v3

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->getGotoIndex()I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 320
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/KinematicIntepolator;->getGotoIndex()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->getChildDelta(I)F

    move-result v0

    .line 321
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_1

    .line 322
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->lessModule(FF)F

    move-result v2

    .line 323
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->lessModule(FF)F

    move-result v3

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->handleScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->stopAnimation()V

    .line 331
    :cond_2
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_3

    const-string v2, "SMUSIC-BaseScrollListLayout"

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAnimationRunnable mCurAnimation: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " dx: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    .line 333
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDx()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " dy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v5

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;->getDy()F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " more: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " limited: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 332
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/scrollinterpolator/ScrollInterpolator;)V

    goto :goto_1

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$302(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;I)I

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$402(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;Z)Z

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;)V

    .line 343
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseScrollListLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->requestRender()V

    return-void
.end method
