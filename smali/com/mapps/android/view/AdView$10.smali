.class Lcom/mapps/android/view/AdView$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    .line 2384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2387
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2388
    iget-object v2, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 2390
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$33(Lcom/mapps/android/view/AdView;)Z

    move-result v1

    const/4 v3, 0x0

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 2391
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2392
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    iget-object v7, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V

    .line 2393
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$24(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView$SDKView;->bringToFront()V

    .line 2395
    :cond_0
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2396
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2397
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 2398
    new-instance v1, Lcom/mz/common/Flip3dAnimation;

    invoke-direct {v1, v4, v3, v0, v2}, Lcom/mz/common/Flip3dAnimation;-><init>(FFFF)V

    goto :goto_0

    .line 2401
    :cond_1
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2402
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    iget-object v7, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v7}, Lcom/mapps/android/view/AdView;->access$30(Lcom/mapps/android/view/AdView;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mapps/android/view/AdView$SDKView;->setSDKImageDraw(Landroid/graphics/drawable/Drawable;)V

    .line 2403
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$19(Lcom/mapps/android/view/AdView;)Lcom/mapps/android/view/AdView$SDKView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapps/android/view/AdView$SDKView;->bringToFront()V

    .line 2405
    :cond_2
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2406
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2407
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->bringToFront()V

    .line 2408
    new-instance v1, Lcom/mz/common/Flip3dAnimation;

    invoke-direct {v1, v4, v3, v0, v2}, Lcom/mz/common/Flip3dAnimation;-><init>(FFFF)V

    :goto_0
    const-wide/16 v2, 0x1f4

    .line 2411
    invoke-virtual {v1, v2, v3}, Lcom/mz/common/Flip3dAnimation;->setDuration(J)V

    const/4 v0, 0x1

    .line 2412
    invoke-virtual {v1, v0}, Lcom/mz/common/Flip3dAnimation;->setFillAfter(Z)V

    .line 2413
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/mz/common/Flip3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2414
    iget-object v2, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$35(Lcom/mapps/android/view/AdView;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mz/common/Flip3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2415
    iget-object v2, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2, v6}, Lcom/mapps/android/view/AdView;->access$36(Lcom/mapps/android/view/AdView;Z)V

    .line 2417
    iget-object v2, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$33(Lcom/mapps/android/view/AdView;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2418
    iget-object v2, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v2}, Lcom/mapps/android/view/AdView;->access$37(Lcom/mapps/android/view/AdView;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2419
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$25(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 2422
    :cond_3
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v6}, Lcom/mapps/android/view/AdView;->access$38(Lcom/mapps/android/view/AdView;Z)V

    .line 2423
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$33(Lcom/mapps/android/view/AdView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2424
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0, v6}, Lcom/mapps/android/view/AdView;->access$34(Lcom/mapps/android/view/AdView;Z)V

    goto :goto_1

    .line 2426
    :cond_4
    iget-object v1, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1, v0}, Lcom/mapps/android/view/AdView;->access$34(Lcom/mapps/android/view/AdView;Z)V

    .line 2428
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    goto :goto_2

    .line 2431
    :cond_5
    iget-object v0, p0, Lcom/mapps/android/view/AdView$10;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    return-void
.end method
