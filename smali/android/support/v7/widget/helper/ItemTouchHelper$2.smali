.class Landroid/support/v7/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    .line 307
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 310
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 316
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 317
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 318
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 321
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$000(Landroid/support/v7/widget/helper/ItemTouchHelper;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x4002

    .line 322
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$102(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I

    goto :goto_0

    .line 325
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$102(Landroid/support/v7/widget/helper/ItemTouchHelper;I)I

    .line 331
    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    .line 332
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez p1, :cond_6

    .line 333
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 335
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    iget v4, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 336
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    iget v4, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 337
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 338
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v3, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 339
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 341
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-virtual {v2, v3, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 342
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v2, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq p1, v2, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_1

    .line 348
    :cond_4
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-eq v2, v3, :cond_6

    .line 351
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_6

    .line 356
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, p1, p2, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    goto :goto_2

    .line 346
    :cond_5
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v3, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 347
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 359
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 360
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 362
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5

    .line 367
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 372
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 375
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return-void

    .line 378
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 379
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 381
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v2, p1, p2, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z

    .line 383
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 400
    :pswitch_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 401
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :pswitch_1
    if-ltz v1, :cond_7

    .line 391
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v0, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    .line 392
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 393
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p2, p2, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 394
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 395
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object p1, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 405
    :cond_4
    :goto_0
    :pswitch_2
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 406
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iput v0, p1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    goto :goto_1

    .line 409
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 410
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 411
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v0, v1, :cond_7

    if-nez p1, :cond_6

    const/4 v4, 0x1

    .line 415
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 416
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    invoke-virtual {v0, p2, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->updateDxDy(Landroid/view/MotionEvent;II)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
