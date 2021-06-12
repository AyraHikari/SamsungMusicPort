.class public Landroid/support/v7/app/MediaRouteControllerDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;,
        Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;,
        Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;,
        Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;,
        Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;,
        Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field static final BUTTON_DISCONNECT_RES_ID:I = 0x102001a

.field private static final BUTTON_NEUTRAL_RES_ID:I = 0x102001b

.field static final BUTTON_STOP_RES_ID:I = 0x1020019

.field static final CONNECTION_TIMEOUT_MILLIS:I

.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "MediaRouteCtrlDialog"

.field static final VOLUME_UPDATE_DELAY_MILLIS:I = 0x1f4


# instance fields
.field private mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mArtIconBackgroundColor:I

.field mArtIconBitmap:Landroid/graphics/Bitmap;

.field mArtIconIsLoaded:Z

.field mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

.field mArtIconUri:Landroid/net/Uri;

.field private mArtView:Landroid/widget/ImageView;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

.field private mCreated:Z

.field private mCustomControlLayout:Landroid/widget/FrameLayout;

.field private mCustomControlView:Landroid/view/View;

.field mDefaultControlLayout:Landroid/widget/FrameLayout;

.field mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private mDialogAreaLayout:Landroid/widget/LinearLayout;

.field private mDialogContentWidth:I

.field private mDisconnectButton:Landroid/widget/Button;

.field private mDividerView:Landroid/view/View;

.field private mExpandableAreaLayout:Landroid/widget/FrameLayout;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

.field private mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

.field mGroupListAnimationDurationMs:I

.field mGroupListFadeInAnimation:Ljava/lang/Runnable;

.field private mGroupListFadeInDurationMs:I

.field private mGroupListFadeOutDurationMs:I

.field private mGroupMemberRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mGroupMemberRoutesAdded:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMemberRoutesRemoved:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHasPendingUpdate:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mIsGroupExpanded:Z

.field mIsGroupListAnimating:Z

.field mIsGroupListAnimationPending:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private mMediaMainControlLayout:Landroid/widget/LinearLayout;

.field mPendingUpdateAnimationNeeded:Z

.field private mPlaybackControlButton:Landroid/widget/ImageButton;

.field private mPlaybackControlLayout:Landroid/widget/RelativeLayout;

.field final mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private mRouteNameTextView:Landroid/widget/TextView;

.field final mRouter:Landroid/support/v7/media/MediaRouter;

.field mState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mStopCastingButton:Landroid/widget/Button;

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;

.field mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

.field private mVolumeControlEnabled:Z

.field private mVolumeControlLayout:Landroid/widget/LinearLayout;

.field mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

.field mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

.field private mVolumeGroupListItemHeight:I

.field private mVolumeGroupListItemIconSize:I

.field private mVolumeGroupListMaxHeight:I

.field private final mVolumeGroupListPaddingTop:I

.field mVolumeSlider:Landroid/widget/SeekBar;

.field mVolumeSliderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MediaRouteCtrlDialog"

    const/4 v1, 0x3

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/app/MediaRouteControllerDialog;->DEBUG:Z

    .line 109
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/support/v7/app/MediaRouteControllerDialog;->CONNECTION_TIMEOUT_MILLIS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 205
    invoke-static {p1, p2, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/support/v7/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 142
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 193
    new-instance p2, Landroid/support/v7/app/MediaRouteControllerDialog$1;

    invoke-direct {p2, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$1;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInAnimation:Ljava/lang/Runnable;

    .line 207
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 209
    new-instance p2, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-direct {p2, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    .line 210
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/support/v7/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    .line 211
    new-instance p2, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-direct {p2, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 212
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 213
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    .line 214
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    .line 216
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 217
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 218
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 219
    sget p2, Landroid/support/v7/mediarouter/R$interpolator;->mr_linear_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 221
    sget p2, Landroid/support/v7/mediarouter/R$interpolator;->mr_fast_out_slow_in:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 224
    :cond_0
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->setEnabled(Z)V

    .line 784
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->requestLayout()V

    const/4 v0, 0x1

    .line 785
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 786
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 787
    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$8;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/MediaRouteControllerDialog$8;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private animateLayoutHeight(Landroid/view/View;I)V
    .locals 4

    .line 711
    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v0

    .line 713
    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$7;

    invoke-direct {v1, p0, v0, p2, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$7;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;IILandroid/view/View;)V

    .line 720
    iget p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 721
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_0

    .line 722
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 724
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private canShowPlaybackControlLayout()Z
    .locals 1

    .line 553
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private fadeInAddedRoutes()V
    .locals 8

    .line 917
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$12;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$12;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    .line 930
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 931
    :goto_0
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v4}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 932
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v4, v2}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int v5, v1, v2

    .line 934
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v6, v5}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 935
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 936
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 937
    iget v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v6, 0x1

    .line 938
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 939
    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez v3, :cond_0

    .line 942
    invoke-virtual {v5, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v3, 0x1

    .line 944
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    .line 945
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteGroup;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getLayoutHeight(Landroid/view/View;)I
    .locals 0

    .line 1067
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method

.method private getMainControllerHeight(Z)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 562
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 563
    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 564
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    if-eqz p1, :cond_1

    .line 566
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    .line 568
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 569
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    move v0, v1

    if-eqz p1, :cond_3

    .line 571
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 572
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    return v0
.end method

.method static isBitmapRecycled(Landroid/graphics/Bitmap;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 549
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIconChanged()Z
    .locals 5

    .line 1124
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1125
    :goto_0
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    .line 1126
    :goto_1
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-virtual {v2}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1127
    :goto_2
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    goto :goto_3

    :cond_3
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-virtual {v3}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->getIconUri()Landroid/net/Uri;

    move-result-object v3

    :goto_3
    const/4 v4, 0x1

    if-eq v2, v0, :cond_4

    return v4

    :cond_4
    if-nez v2, :cond_5

    .line 1130
    invoke-static {v3, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->uriEquals(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_5

    return v4

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method private rebuildVolumeGroupList(Z)V
    .locals 6

    .line 751
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 753
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 754
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 755
    :cond_1
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v2, v0}, Landroid/support/v7/app/MediaRouteDialogHelper;->listUnorderedEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 756
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {p1}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 758
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 759
    invoke-static {v2, v3}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemBoundMap(Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 761
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 762
    invoke-static {v3, v4, v5}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemBitmapMap(Landroid/content/Context;Landroid/widget/ListView;Landroid/widget/ArrayAdapter;)Ljava/util/HashMap;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v1

    .line 764
    :goto_2
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 765
    invoke-static {v4, v0}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemsAdded(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 766
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-static {v4, v0}, Landroid/support/v7/app/MediaRouteDialogHelper;->getItemsRemoved(Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    .line 768
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v0, v4, v5}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 769
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 770
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->notifyDataSetChanged()V

    if-eqz p1, :cond_5

    .line 771
    iget-boolean p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 772
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-lez p1, :cond_5

    .line 773
    invoke-direct {p0, v2, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateGroupListItems(Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_3

    .line 775
    :cond_5
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 776
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    :goto_3
    return-void
.end method

.method static setLayoutHeight(Landroid/view/View;I)V
    .locals 1

    .line 1071
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1072
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1073
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 3

    .line 293
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat;->unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 295
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 300
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    if-nez v0, :cond_2

    return-void

    .line 304
    :cond_2
    :try_start_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediaRouteCtrlDialog"

    const-string v2, "Error creating media controller in setMediaSession."

    .line 306
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    :goto_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz p1, :cond_3

    .line 309
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mControllerCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaControllerCallback;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompat;->registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    .line 311
    :cond_3
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez p1, :cond_4

    move-object p1, v1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 312
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_5

    move-object p1, v1

    goto :goto_2

    .line 313
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 314
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    :goto_3
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 315
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    const/4 p1, 0x0

    .line 316
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method private updateMediaControlVisibility(Z)V
    .locals 4

    .line 581
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private updatePlaybackControlLayout()V
    .locals 8

    .line 980
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 981
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 982
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 984
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 985
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 989
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v5}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getPresentationDisplayId()I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    .line 992
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_casting_screen:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    const/4 v0, 0x1

    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    .line 994
    :cond_3
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v5}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    if-nez v2, :cond_5

    if-nez v4, :cond_5

    .line 999
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_info_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 1003
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    if-eqz v4, :cond_2

    .line 1007
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    goto :goto_5

    .line 996
    :cond_7
    :goto_4
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    sget v1, Landroid/support/v7/mediarouter/R$string;->mr_controller_no_media_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 1011
    :goto_5
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/16 v0, 0x8

    :goto_6
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    const/16 v1, 0x8

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1014
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz v0, :cond_10

    .line 1015
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 1016
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :cond_b
    :goto_8
    const/4 v0, 0x1

    .line 1017
    :goto_9
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_c

    .line 1021
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isPauseActionSupported()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1022
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePauseDrawable:I

    .line 1023
    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_pause:I

    goto :goto_a

    :cond_c
    if-eqz v0, :cond_d

    .line 1024
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isStopActionSupported()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1025
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRouteStopDrawable:I

    .line 1026
    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_a

    :cond_d
    if-nez v0, :cond_e

    .line 1027
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isPlayActionSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1028
    sget v0, Landroid/support/v7/mediarouter/R$attr;->mediaRoutePlayDrawable:I

    .line 1029
    sget v2, Landroid/support/v7/mediarouter/R$string;->mr_controller_play:I

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1033
    :goto_a
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_f

    const/4 v4, 0x0

    :cond_f
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v3, :cond_10

    .line 1035
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 1036
    invoke-static {v1, v0}, Landroid/support/v7/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result v0

    .line 1035
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 1038
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 1039
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1040
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1038
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method private updateVolumeControlLayout()V
    .locals 4

    .line 737
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 738
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 739
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 741
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 742
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setVisibility(I)V

    goto :goto_1

    .line 746
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static uriEquals(Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    .line 1077
    invoke-virtual {p0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method animateGroupListItemsInternal(Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 799
    iget-object v2, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 802
    :cond_0
    iget-object v2, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 804
    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$9;

    invoke-direct {v3, v0}, Landroid/support/v7/app/MediaRouteControllerDialog$9;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    .line 821
    iget-object v4, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v4}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 822
    :goto_0
    iget-object v7, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v7}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    if-ge v5, v7, :cond_4

    .line 823
    iget-object v7, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v7, v5}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v9, v4, v5

    .line 825
    iget-object v10, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v10, v9}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 826
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 827
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    if-eqz v10, :cond_1

    .line 828
    iget v10, v10, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_1
    iget v10, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    mul-int v10, v10, v2

    add-int/2addr v10, v11

    .line 830
    :goto_1
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 831
    iget-object v14, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v14, :cond_2

    iget-object v14, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v14, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 833
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v8, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 834
    iget v14, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    int-to-long v14, v14

    invoke-virtual {v10, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 835
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move v10, v11

    .line 837
    :cond_2
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-direct {v14, v8, v8, v10, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 838
    iget v8, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v10, v8

    invoke-virtual {v14, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 839
    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 840
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 841
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 842
    iget-object v8, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-nez v6, :cond_3

    .line 845
    invoke-virtual {v12, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v6, 0x1

    .line 847
    :cond_3
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 848
    invoke-virtual {v7, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 849
    invoke-interface {v1, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v7, p2

    .line 850
    invoke-interface {v7, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v7, p2

    .line 857
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 858
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 859
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 860
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 862
    iget-object v7, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 863
    new-instance v5, Landroid/support/v7/app/OverlayListView$OverlayObject;

    invoke-direct {v5, v4, v6}, Landroid/support/v7/app/OverlayListView$OverlayObject;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v5, v4, v8}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setAlphaAnimation(FF)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    iget v5, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    int-to-long v5, v5

    .line 864
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setDuration(J)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    iget-object v5, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 865
    invoke-virtual {v4, v5}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    goto :goto_3

    .line 867
    :cond_5
    iget v7, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    mul-int v7, v7, v2

    .line 868
    new-instance v9, Landroid/support/v7/app/OverlayListView$OverlayObject;

    invoke-direct {v9, v4, v6}, Landroid/support/v7/app/OverlayListView$OverlayObject;-><init>(Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v7}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setTranslateYAnimation(I)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    iget v6, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    int-to-long v6, v6

    .line 869
    invoke-virtual {v4, v6, v7}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setDuration(J)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    iget-object v6, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 870
    invoke-virtual {v4, v6}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    new-instance v6, Landroid/support/v7/app/MediaRouteControllerDialog$10;

    invoke-direct {v6, v0, v5}, Landroid/support/v7/app/MediaRouteControllerDialog$10;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    .line 871
    invoke-virtual {v4, v6}, Landroid/support/v7/app/OverlayListView$OverlayObject;->setAnimationEndListener(Landroid/support/v7/app/OverlayListView$OverlayObject$OnAnimationEndListener;)Landroid/support/v7/app/OverlayListView$OverlayObject;

    move-result-object v4

    .line 878
    iget-object v6, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 880
    :goto_3
    iget-object v5, v0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v5, v4}, Landroid/support/v7/app/OverlayListView;->addOverlayObject(Landroid/support/v7/app/OverlayListView$OverlayObject;)V

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    :goto_4
    return-void
.end method

.method clearGroupListAnimation(Z)V
    .locals 10

    .line 951
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 952
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3}, Landroid/support/v7/app/OverlayListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 953
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v3, v2}, Landroid/support/v7/app/OverlayListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int v4, v0, v2

    .line 955
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v5, v4}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz p1, :cond_0

    .line 956
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 957
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 960
    :cond_0
    sget v4, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 961
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 962
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 963
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v7, 0x0

    .line 964
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 965
    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 966
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 967
    invoke-virtual {v6, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 968
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 969
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 970
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 971
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->stopAnimationAll()V

    if-nez p1, :cond_2

    .line 975
    invoke-virtual {p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    :cond_2
    return-void
.end method

.method clearLoadedBitmap()V
    .locals 2

    const/4 v0, 0x0

    .line 1113
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    const/4 v1, 0x0

    .line 1114
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    .line 1115
    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    return-void
.end method

.method finishAnimation(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 906
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    .line 907
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesRemoved:Ljava/util/Set;

    const/4 v0, 0x0

    .line 908
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimating:Z

    .line 909
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    if-eqz v1, :cond_0

    .line 910
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupListAnimationPending:Z

    .line 911
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    .line 913
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/OverlayListView;->setEnabled(Z)V

    return-void
.end method

.method getDesiredArtHeight(II)I
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    if-lt p1, p2, :cond_0

    .line 1091
    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    int-to-float v1, v1

    int-to-float p2, p2

    mul-float v1, v1, p2

    int-to-float p1, p1

    div-float/2addr v1, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    return p1

    .line 1094
    :cond_0
    iget p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    int-to-float p1, p1

    const/high16 p2, 0x41100000    # 9.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x41800000    # 16.0f

    div-float/2addr p1, p2

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getMediaControlView()Landroid/view/View;
    .locals 1

    .line 258
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    return-object v0
.end method

.method public getMediaSession()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 325
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method isPauseActionSupported()Z
    .locals 4

    .line 1053
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x202

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPlayActionSupported()Z
    .locals 4

    .line 1048
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x204

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isStopActionSupported()Z
    .locals 4

    .line 1058
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isVolumeControlAvailable(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2

    .line 1062
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    .line 282
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method loadInterpolator()V
    .locals 2

    .line 728
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 729
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 732
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAccelerateDecelerateInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 479
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 480
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 482
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    sget-object v1, Landroid/support/v7/media/MediaRouteSelector;->EMPTY:Landroid/support/v7/media/MediaRouteSelector;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->addCallback(Landroid/support/v7/media/MediaRouteSelector;Landroid/support/v7/media/MediaRouter$Callback;I)V

    .line 484
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter;->getMediaSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 330
    invoke-super {p0, p1}, Landroid/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 333
    sget v0, Landroid/support/v7/mediarouter/R$layout;->mr_controller_material_dialog_b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setContentView(I)V

    const v0, 0x102001b

    .line 336
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    .line 340
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_expandable_area:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    .line 341
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$2;

    invoke-direct {v3, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$2;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_dialog_area:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    .line 348
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/support/v7/app/MediaRouteControllerDialog$3;

    invoke-direct {v3, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$3;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->getButtonTextColor(Landroid/content/Context;)I

    move-result v2

    const v3, 0x102001a

    .line 355
    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 356
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    sget v4, Landroid/support/v7/mediarouter/R$string;->mr_controller_disconnect:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 357
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 358
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020019

    .line 360
    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    .line 361
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    sget v4, Landroid/support/v7/mediarouter/R$string;->mr_controller_stop_casting:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 362
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 363
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mStopCastingButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_name:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    .line 366
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_close:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    .line 367
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_custom_control:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    .line 369
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_default_control:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 372
    new-instance v2, Landroid/support/v7/app/MediaRouteControllerDialog$4;

    invoke-direct {v2, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$4;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    .line 388
    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_art:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    .line 389
    iget-object v3, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    sget v3, Landroid/support/v7/mediarouter/R$id;->mr_control_title_container:I

    invoke-virtual {p0, v3}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_media_main_control:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    .line 393
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_control_divider:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDividerView:Landroid/view/View;

    .line 395
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_playback_control:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 396
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_control_title:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mTitleView:Landroid/widget/TextView;

    .line 397
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_control_subtitle:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mSubtitleView:Landroid/widget/TextView;

    .line 398
    sget v2, Landroid/support/v7/mediarouter/R$id;->mr_control_playback_ctrl:I

    invoke-virtual {p0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    .line 399
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_control:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    .line 402
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_slider:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 404
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 405
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    .line 406
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeChangeListener:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 408
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_group_list:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/OverlayListView;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    .line 410
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v1}, Landroid/support/v7/app/OverlayListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    .line 412
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupAdapter:Landroid/support/v7/app/MediaRouteControllerDialog$VolumeGroupAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/OverlayListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAnimatingWithBitmap:Ljava/util/Set;

    .line 415
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    .line 416
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 415
    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/app/MediaRouterThemeHelper;->setMediaControlsBackgroundColor(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Z)V

    .line 417
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    check-cast v1, Landroid/support/v7/app/MediaRouteVolumeSlider;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/MediaRouterThemeHelper;->setVolumeSliderColor(Landroid/content/Context;Landroid/support/v7/app/MediaRouteVolumeSlider;Landroid/view/View;)V

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    .line 420
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_group_expand_collapse:I

    .line 423
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    .line 424
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupExpandCollapseButton:Landroid/support/v7/app/MediaRouteExpandCollapseButton;

    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$5;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$5;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteExpandCollapseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->loadInterpolator()V

    .line 436
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_animation_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListAnimationDurationMs:I

    .line 438
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_fade_in_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeInDurationMs:I

    .line 440
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/mediarouter/R$integer;->mr_controller_volume_group_list_fade_out_duration_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupListFadeOutDurationMs:I

    .line 443
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    .line 444
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 445
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 446
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 448
    :cond_1
    iput-boolean v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    .line 449
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayout()V

    return-void
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 489
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouter:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCallback:Landroid/support/v7/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->removeCallback(Landroid/support/v7/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    .line 490
    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    const/4 v0, 0x0

    .line 491
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mAttachedToWindow:Z

    .line 492
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 499
    :cond_1
    :goto_0
    iget-object p2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1

    .line 269
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eq v0, p1, :cond_0

    .line 270
    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 271
    iget-boolean p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 272
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    :cond_0
    return-void
.end method

.method startGroupListFadeInAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 885
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearGroupListAnimation(Z)V

    .line 886
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->requestLayout()V

    .line 887
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v0}, Landroid/support/v7/app/OverlayListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 888
    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$11;

    invoke-direct {v1, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$11;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method startGroupListFadeInAnimationInternal()V
    .locals 1

    .line 898
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutesAdded:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->fadeInAddedRoutes()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 901
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->finishAnimation(Z)V

    :goto_0
    return-void
.end method

.method update(Z)V
    .locals 3

    .line 516
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    .line 518
    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 521
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mHasPendingUpdate:Z

    .line 522
    iput-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPendingUpdateAnimationNeeded:Z

    .line 523
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 527
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCreated:Z

    if-nez v1, :cond_2

    return-void

    .line 531
    :cond_2
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRouteNameTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->canDisconnect()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconIsLoaded:Z

    if-eqz v0, :cond_5

    .line 534
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isBitmapRecycled(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MediaRouteCtrlDialog"

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set artwork image with recycled bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 537
    :cond_4
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconLoadedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 538
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 540
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->clearLoadedBitmap()V

    .line 542
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateVolumeControlLayout()V

    .line 543
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updatePlaybackControlLayout()V

    .line 544
    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateLayoutHeight(Z)V

    return-void

    .line 524
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    return-void
.end method

.method updateArtIconIfNeeded()V
    .locals 2

    .line 1098
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->isIconChanged()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    if-eqz v0, :cond_1

    .line 1102
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->cancel(Z)Z

    .line 1104
    :cond_1
    new-instance v0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    .line 1105
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mFetchArtTask:Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method updateLayout()V
    .locals 3

    .line 456
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteDialogHelper;->getDialogWidth(Landroid/content/Context;)I

    move-result v0

    .line 457
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 459
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogContentWidth:I

    .line 462
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 463
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    .line 465
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    .line 467
    sget v1, Landroid/support/v7/mediarouter/R$dimen;->mr_controller_volume_group_list_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconBitmap:Landroid/graphics/Bitmap;

    .line 472
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtIconUri:Landroid/net/Uri;

    .line 473
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateArtIconIfNeeded()V

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method updateLayoutHeight(Z)V
    .locals 2

    .line 591
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 592
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 593
    new-instance v1, Landroid/support/v7/app/MediaRouteControllerDialog$6;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$6;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method updateLayoutHeightInternal(Z)V
    .locals 9

    .line 611
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v0

    .line 612
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 613
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    .line 614
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 616
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    .line 615
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 618
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 620
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 623
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->getDesiredArtHeight(II)I

    move-result v2

    .line 624
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v5, v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 628
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    move-result v0

    .line 629
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mGroupMemberRoutes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 631
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    iget v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    .line 632
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->getGroup()Landroid/support/v7/media/MediaRouter$RouteGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/media/MediaRouter$RouteGroup;->getRoutes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int v5, v5, v6

    :goto_2
    if-lez v4, :cond_3

    .line 634
    iget v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListPaddingTop:I

    add-int/2addr v5, v4

    .line 636
    :cond_3
    iget v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListMaxHeight:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 637
    iget-boolean v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mIsGroupExpanded:Z

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 640
    :goto_3
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    .line 641
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 642
    invoke-virtual {v1, v6}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 646
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDialogAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v7, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 647
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v1, v7

    .line 649
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int/2addr v7, v1

    .line 652
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mCustomControlView:Landroid/view/View;

    const/16 v8, 0x8

    if-nez v1, :cond_5

    if-lez v2, :cond_5

    if-gt v5, v7, :cond_5

    .line 654
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    goto :goto_4

    .line 657
    :cond_5
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->getLayoutHeight(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    .line 658
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    if-lt v1, v2, :cond_6

    .line 659
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mArtView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    add-int v5, v4, v0

    const/4 v2, 0x0

    .line 665
    :goto_4
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog;->canShowPlaybackControlLayout()Z

    move-result v0

    if-eqz v0, :cond_7

    if-gt v5, v7, :cond_7

    .line 667
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_5

    .line 669
    :cond_7
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 671
    :goto_5
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->updateMediaControlVisibility(Z)V

    .line 672
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mPlaybackControlLayout:Landroid/widget/RelativeLayout;

    .line 673
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    const/4 v1, 0x0

    .line 672
    :goto_7
    invoke-direct {p0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->getMainControllerHeight(Z)I

    move-result v0

    .line 675
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-le v1, v7, :cond_a

    sub-int/2addr v1, v7

    sub-int/2addr v4, v1

    move v1, v7

    .line 683
    :cond_a
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 684
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-virtual {v2}, Landroid/support/v7/app/OverlayListView;->clearAnimation()V

    .line 685
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->clearAnimation()V

    if-eqz p1, :cond_b

    .line 687
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    .line 688
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-direct {p0, v0, v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    .line 689
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->animateLayoutHeight(Landroid/view/View;I)V

    goto :goto_8

    .line 691
    :cond_b
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mMediaMainControlLayout:Landroid/widget/LinearLayout;

    invoke-static {v2, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 692
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupList:Landroid/support/v7/app/OverlayListView;

    invoke-static {v0, v4}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 693
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mDefaultControlLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 696
    :goto_8
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mExpandableAreaLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 697
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->rebuildVolumeGroupList(Z)V

    return-void
.end method

.method updateVolumeGroupItemHeight(Landroid/view/View;)V
    .locals 2

    .line 701
    sget v0, Landroid/support/v7/mediarouter/R$id;->volume_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 702
    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemHeight:I

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->setLayoutHeight(Landroid/view/View;I)V

    .line 703
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_volume_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 704
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 705
    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 706
    iget v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog;->mVolumeGroupListItemIconSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 707
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
