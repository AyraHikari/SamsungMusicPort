.class public Landroid/support/v7/app/MediaRouteButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;,
        Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final CHECKABLE_STATE_SET:[I

.field private static final CHECKED_STATE_SET:[I

.field private static final CHOOSER_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

.field private static final CONTROLLER_FRAGMENT_TAG:Ljava/lang/String; = "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

.field private static final TAG:Ljava/lang/String; = "MediaRouteButton"

.field static final sRemoteIndicatorCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttachedToWindow:Z

.field private mButtonTint:Landroid/content/res/ColorStateList;

.field private final mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

.field private mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

.field private mIsConnecting:Z

.field private mMinHeight:I

.field private mMinWidth:I

.field private mRemoteActive:Z

.field private mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

.field private final mRouter:Landroid/support/v7/media/MediaRouter;

.field private mSelector:Landroid/support/v7/media/MediaRouteSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 107
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    .line 112
    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 121
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/app/MediaRouteButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 125
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedButtonContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    sget-object p1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 91
    invoke-static {}, Landroid/support/v7/app/MediaRouteDialogFactory;->getDefault()Landroid/support/v7/app/MediaRouteDialogFactory;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 126
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 128
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 129
    new-instance v0, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteButton;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    .line 131
    sget-object v0, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 133
    sget p2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_mediaRouteButtonTint:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    .line 134
    sget p2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minWidth:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    .line 136
    sget p2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_android_minHeight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    .line 138
    sget p2, Landroid/support/v7/mediarouter/R$styleable;->MediaRouteButton_externalRouteEnabledDrawable:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 140
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    .line 143
    sget-object p1, Landroid/support/v7/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    .line 144
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton;->setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 148
    :cond_0
    new-instance p1, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    invoke-direct {p1, p0, p2}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroid/support/v7/app/MediaRouteButton;I)V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    .line 149
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p3, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    const/4 p1, 0x1

    .line 154
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteButton;->setClickable(Z)V

    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 2

    .line 279
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 280
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    .line 281
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 282
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 284
    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .line 270
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 271
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 272
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private updateContentDescription()V
    .locals 2

    .line 530
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v0, :cond_0

    .line 531
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connecting:I

    goto :goto_0

    .line 532
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v0, :cond_1

    .line 533
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_connected:I

    goto :goto_0

    .line 535
    :cond_1
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_cast_button_disconnected:I

    .line 537
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 326
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 328
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v0

    .line 330
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 331
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->invalidate()V

    :cond_0
    return-void
.end method

.method public getDialogFactory()Landroid/support/v7/app/MediaRouteDialogFactory;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-object v0
.end method

.method public getRouteSelector()Landroid/support/v7/media/MediaRouteSelector;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    return-object v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 405
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 408
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 411
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 310
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 316
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    goto :goto_0

    .line 318
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v0, :cond_1

    .line 319
    sget-object v0, Landroid/support/v7/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Landroid/support/v7/app/MediaRouteButton;->mergeDrawableStates([I[I)[I

    :cond_1
    :goto_0
    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 416
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    .line 417
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 421
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 469
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 471
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v0

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 474
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v2

    .line 475
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 477
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 478
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    .line 479
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    .line 480
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 482
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v0

    add-int/2addr v5, v2

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 426
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 427
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 429
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 431
    iget v2, p0, Landroid/support/v7/app/MediaRouteButton;->mMinWidth:I

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 432
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingLeft()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 431
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 433
    iget v3, p0, Landroid/support/v7/app/MediaRouteButton;->mMinHeight:I

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 434
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 433
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, v2

    goto :goto_1

    .line 442
    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_5

    move v1, v3

    goto :goto_2

    .line 456
    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 464
    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/MediaRouteButton;->setMeasuredDimension(II)V

    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 301
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteButton;->playSoundEffect(I)V

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->showDialog()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method refreshRoute()V
    .locals 6

    .line 489
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 493
    :goto_1
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eq v4, v1, :cond_2

    .line 494
    iput-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    const/4 v2, 0x1

    .line 497
    :cond_2
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eq v4, v0, :cond_3

    .line 498
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    .line 503
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->updateContentDescription()V

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 506
    :cond_4
    iget-boolean v4, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v4, :cond_5

    .line 507
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v4, v5, v3}, Landroid/support/v7/media/MediaRouter;->isRouteAvailable(Landroid/support/v7/media/MediaRouteSelector;I)Z

    move-result v4

    invoke-virtual {p0, v4}, Landroid/support/v7/app/MediaRouteButton;->setEnabled(Z)V

    .line 510
    :cond_5
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_9

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 511
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v4, :cond_9

    .line 512
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    .line 513
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v5, :cond_7

    if-nez v2, :cond_6

    if-eqz v0, :cond_9

    .line 514
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 515
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    .line 520
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 521
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 523
    :cond_8
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_9
    :goto_2
    return-void
.end method

.method setCheatSheetEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_button_content_description:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    :goto_0
    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogFactory(Landroid/support/v7/app/MediaRouteDialogFactory;)V
    .locals 1
    .param p1    # Landroid/support/v7/app/MediaRouteDialogFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    return-void

    .line 212
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRemoteIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 339
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteButton$RemoteIndicatorLoader;->cancel(Z)Z

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 345
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 348
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 349
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 350
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-static {p1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 352
    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 353
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 354
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 356
    :cond_4
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 358
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshDrawableState()V

    .line 359
    iget-boolean p1, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    .line 360
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_7

    .line 361
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 362
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mIsConnecting:Z

    if-eqz v1, :cond_5

    .line 363
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 364
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 366
    :cond_5
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteActive:Z

    if-eqz v1, :cond_7

    .line 367
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 368
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 370
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 179
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 180
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 184
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mCallback:Landroid/support/v7/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;)V

    .line 188
    :cond_1
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    .line 189
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->refreshRoute()V

    :cond_2
    return-void

    .line 176
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "selector must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setVisibility(I)V
    .locals 2

    .line 396
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 399
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public showDialog()Z
    .locals 4

    .line 237
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 241
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteButton;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 246
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 257
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v0, "MediaRouteButton"

    const-string v2, "showDialog(): Route controller dialog already showing!"

    .line 258
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 261
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 262
    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateControllerDialogFragment()Landroid/support/v7/app/MediaRouteControllerDialogFragment;

    move-result-object v1

    .line 263
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    const-string v2, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    .line 264
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/MediaRouteControllerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 248
    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v0, "MediaRouteButton"

    const-string v2, "showDialog(): Route chooser dialog already showing!"

    .line 249
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 252
    :cond_4
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteButton;->mDialogFactory:Landroid/support/v7/app/MediaRouteDialogFactory;

    .line 253
    invoke-virtual {v1}, Landroid/support/v7/app/MediaRouteDialogFactory;->onCreateChooserDialogFragment()Landroid/support/v7/app/MediaRouteChooserDialogFragment;

    move-result-object v1

    .line 254
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteButton;->mSelector:Landroid/support/v7/media/MediaRouteSelector;

    invoke-virtual {v1, v2}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->setRouteSelector(Landroid/support/v7/media/MediaRouteSelector;)V

    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    .line 255
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/app/MediaRouteChooserDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    .line 243
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity must be a subclass of FragmentActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 377
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
