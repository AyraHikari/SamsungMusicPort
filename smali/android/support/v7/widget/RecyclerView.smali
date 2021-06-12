.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild2;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;,
        Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;,
        Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;,
        Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$OnFlingListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;,
        Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$SimpleOnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;,
        Landroid/support/v7/widget/RecyclerView$Orientation;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final ALLOW_THREAD_GAP_WORK:Z

.field private static final CLIP_TO_PADDING_ATTR:[I

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FOCUS_MOVE_DOWN:I = 0x1

.field private static final FOCUS_MOVE_FULL_DOWN:I = 0x3

.field private static final FOCUS_MOVE_FULL_UP:I = 0x2

.field private static final FOCUS_MOVE_UP:I = 0x0

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field public static final HORIZONTAL:I = 0x0

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final MOTION_EVENT_ACTION_PEN_DOWN:I = 0xd3

.field private static final MOTION_EVENT_ACTION_PEN_MOVE:I = 0xd5

.field private static final MOTION_EVENT_ACTION_PEN_UP:I = 0xd4

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslRecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mAlwaysDisableHoverHighlight:Z

.field mAnimatedBlackTop:I

.field private final mAutoHide:Ljava/lang/Runnable;

.field mBlackTop:I

.field private mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field mChildBound:Landroid/graphics/Rect;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field public mChildHelper:Landroid/support/v7/widget/ChildHelper;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mClipToPadding:Z

.field private mCloseChildByBottom:Landroid/view/View;

.field private mCloseChildByTop:Landroid/view/View;

.field private mCloseChildPositionByBottom:I

.field private mCloseChildPositionByTop:I

.field private mContext:Landroid/content/Context;

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mDistanceFromCloseChildBottom:I

.field private mDistanceFromCloseChildTop:I

.field mDrawLastItemOutlineStoke:Z

.field mDrawLastOutLineStroke:Z

.field mDrawOutlineStroke:Z

.field mDrawRect:Z

.field mDrawReverse:Z

.field mDrawWhiteTheme:Z

.field private mEatenAccessibilityChangeFlags:I

.field mEnableFastScroller:Z

.field private mEnableGoToTop:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

.field private mFastScrollerEnabled:Z

.field private mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

.field mFirstLayoutComplete:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mGapWorker:Landroid/support/v7/widget/GapWorker;

.field private mGlowByDragging:Z

.field private final mGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mGoToTopBottomPadding:I

.field private mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mGoToTopFadeOutStart:Z

.field private mGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

.field private mGoToTopLastState:I

.field private mGoToTopMoved:Z

.field private mGoToTopRect:Landroid/graphics/Rect;

.field private mGoToTopSize:I

.field private mGoToTopState:I

.field private mGoToToping:Z

.field mHasFixedSize:Z

.field private mHasNestedScrollRange:Z

.field public mHoverAreaEnter:Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/os/Handler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateChanged:Z

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveringEnabled:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTopOffsetOfScreen:I

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mIsArrowKeyPressed:Z

.field mIsAttached:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlKeyPressed:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenMoveEvent:Z

.field private mIsGoToTopShown:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsMouseWheel:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenDragBlockEnabled:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsPenSelectionEnabled:Z

.field private mIsSendHoverScrollState:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field mLastBlackTop:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private mNavigationBarHeight:I

.field private mNeedsHoverScroll:Z

.field private final mNestedOffsets:[I

.field private mNestedScrollRange:I

.field private mNewTextViewHoverState:Z

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOldHoverScrollDirection:I

.field private mOldTextViewHoverState:Z

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

.field private mPenDistanceFromTrackedChildTop:I

.field private mPenDragBlockBottom:I

.field private mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mPenDragBlockLeft:I

.field private mPenDragBlockRect:Landroid/graphics/Rect;

.field private mPenDragBlockRight:I

.field private mPenDragBlockTop:I

.field private mPenDragEndX:I

.field private mPenDragEndY:I

.field private mPenDragScrollTimeInterval:J

.field private mPenDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPenDragSelectedViewPosition:I

.field private mPenDragStartX:I

.field private mPenDragStartY:I

.field private mPenTrackedChild:Landroid/view/View;

.field private mPenTrackedChildPosition:I

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field private mRectColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mRectPaint:Landroid/graphics/Paint;

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRemainNestedScrollRange:I

.field private mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field private mRootViewCheckForDialog:Landroid/view/View;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private final mScrollConsumed:[I

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

.field private mSeslPagingTouchSlop:I

.field private mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

.field private mSeslTouchSlop:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSizeChnage:Z

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field private mStrokeColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mStrokeHeight:I

.field private mStrokePaint:Landroid/graphics/Paint;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mUsePagingTouchSlopForStylus:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

.field private final mWindowOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 196
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010436

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 199
    new-array v1, v0, [I

    const v3, 0x10100eb

    aput v3, v1, v2

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    .line 208
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 215
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 217
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 223
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 229
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-gt v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    sput-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    const/4 v1, 0x4

    .line 349
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 999
    new-instance v0, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$4;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1047
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1051
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1055
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mSeslTouchSlop:I

    .line 280
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mSeslPagingTouchSlop:I

    .line 281
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    .line 352
    new-instance v1, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 354
    new-instance v1, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 378
    new-instance v1, Landroid/support/v7/widget/ViewInfoStore;

    invoke-direct {v1}, Landroid/support/v7/widget/ViewInfoStore;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    .line 392
    new-instance v1, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 412
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 413
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 414
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 428
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    .line 437
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 467
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 476
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 486
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 495
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 499
    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 526
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v2, -0x1

    .line 527
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    const/4 v3, 0x1

    .line 539
    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 540
    iput v3, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    const/4 v3, 0x1

    .line 542
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 544
    new-instance v4, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 547
    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v4, :cond_0

    new-instance v4, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v4}, Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mPrefetchRegistry:Landroid/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 550
    new-instance v4, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v4}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 556
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 557
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 558
    new-instance v4, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 560
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    const/4 v4, 0x2

    .line 566
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 569
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    .line 570
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    .line 571
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    .line 572
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    .line 575
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    .line 576
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    .line 577
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    .line 578
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    .line 580
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 589
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    .line 590
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    .line 591
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    .line 592
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    .line 593
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 595
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 596
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    .line 597
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    .line 598
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 600
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 601
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 602
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 605
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    .line 607
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 608
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 609
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    .line 610
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    .line 614
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    .line 616
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 617
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 618
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    .line 624
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    .line 625
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mGlowByDragging:Z

    .line 626
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    .line 636
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    .line 637
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    .line 638
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToping:Z

    .line 639
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    .line 641
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 645
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    .line 646
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    .line 647
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mShowGTPAtFirstTime:Z

    .line 648
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    const/16 v5, 0x9c4

    .line 649
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    .line 652
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutStart:Z

    .line 653
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsGoToTopShown:Z

    .line 664
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    .line 665
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    .line 666
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    .line 667
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    .line 668
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    .line 669
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    .line 671
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastBlackTop:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 672
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    .line 673
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 v5, 0x41200000    # 10.0f

    .line 681
    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    .line 696
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoveringEnabled:Z

    .line 698
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    .line 700
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAlwaysDisableHoverHighlight:Z

    .line 702
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 704
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    .line 705
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 706
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mOldTextViewHoverState:Z

    .line 707
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    .line 709
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollSpeed:I

    const-wide/16 v5, 0x0

    .line 714
    iput-wide v5, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    .line 715
    iput-wide v5, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    .line 716
    iput-wide v5, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const-wide/16 v7, 0x12c

    .line 717
    iput-wide v7, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollTimeInterval:J

    const-wide/16 v7, 0x1f4

    .line 718
    iput-wide v7, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    .line 720
    iput-wide v5, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 721
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 726
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 727
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 732
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_DELAY:I

    .line 734
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 736
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    .line 743
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 754
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    .line 759
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollEnable:Z

    .line 760
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    .line 762
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 764
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    .line 765
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    .line 770
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 775
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    .line 776
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    .line 777
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInBottomHoverArea:I

    .line 779
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCloseChildSetted:Z

    .line 780
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mOldHoverScrollDirection:I

    .line 781
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    .line 782
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByTop:I

    .line 783
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    .line 784
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    .line 785
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByBottom:I

    .line 786
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    .line 794
    new-instance v1, Landroid/support/v7/widget/RecyclerView$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 989
    new-instance v1, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$3;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 1010
    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    .line 3564
    new-instance v1, Landroid/support/v7/widget/RecyclerView$11;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$11;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    .line 3571
    new-instance v1, Landroid/support/v7/widget/RecyclerView$12;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$12;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    .line 3578
    new-instance v1, Landroid/support/v7/widget/RecyclerView$13;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$13;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    .line 1056
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    const-string v1, "SeslRecyclerView"

    .line 1059
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "-sesl_recyclerview_version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "10.0.52"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 1063
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->CLIP_TO_PADDING_ATTR:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1064
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 1065
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 1067
    :cond_1
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 1069
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollContainer(Z)V

    .line 1070
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 1072
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->seslInitConfigurations(Landroid/content/Context;)V

    .line 1074
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1076
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 1077
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 1078
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 1080
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1082
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1085
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "accessibility"

    .line 1086
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1087
    new-instance v1, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    const/high16 v1, 0x40000

    if-eqz p2, :cond_5

    .line 1094
    sget-object v4, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1096
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_layoutManager:I

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1097
    sget v5, Landroid/support/v7/recyclerview/R$styleable;->RecyclerView_android_descendantFocusability:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-ne v5, v2, :cond_4

    .line 1100
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 1116
    :cond_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move v10, p3

    .line 1117
    invoke-direct/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 1119
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_6

    .line 1120
    sget-object v1, Landroid/support/v7/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1122
    invoke-virtual {p2, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 1123
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 1126
    :cond_5
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setDescendantFocusability(I)V

    :cond_6
    const/4 p3, 0x1

    .line 1129
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1130
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1131
    sget v1, Landroid/support/v7/recyclerview/R$drawable;->sesl_pen_block_selection:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1132
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/recyclerview/R$attr;->goToTopStyle:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1135
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    .line 1141
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/recyclerview/R$attr;->roundedCornerColor:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1142
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez v1, :cond_8

    .line 1143
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mRectColor:I

    .line 1145
    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mRectColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1146
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1148
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget v1, Landroid/support/v7/recyclerview/R$attr;->roundedCornerStrokeColor:I

    invoke-virtual {p1, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1149
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-lez p1, :cond_9

    .line 1150
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeColor:I

    .line 1153
    :cond_9
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    iget p2, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1154
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1155
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setHostView(Landroid/view/View;)V

    .line 1156
    new-instance p1, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    .line 1157
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    .line 1162
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    .line 188
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$002(Landroid/support/v7/widget/RecyclerView;J)J
    .locals 0

    .line 188
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    .line 188
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide v0
.end method

.method static synthetic access$1002(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    .line 188
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    return p1
.end method

.method static synthetic access$102(Landroid/support/v7/widget/RecyclerView;J)J
    .locals 0

    .line 188
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionDurationTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollSpeed:I

    return p0
.end method

.method static synthetic access$1202(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    .line 188
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$1300(Landroid/support/v7/widget/RecyclerView;)F
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_SPEED:F

    return p0
.end method

.method static synthetic access$1400(Landroid/support/v7/widget/RecyclerView;)Landroid/content/Context;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    return p0
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1602(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 188
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildByBottom:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p0
.end method

.method static synthetic access$1802(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    .line 188
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mOldHoverScrollDirection:I

    return p1
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p0
.end method

.method static synthetic access$1902(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 188
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsCloseChildSetted:Z

    return p1
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    .line 188
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    .line 188
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    return p1
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildBottom:I

    return p0
.end method

.method static synthetic access$2202(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    .line 188
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    return p1
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByBottom:I

    return p0
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/RecyclerView;)Landroid/view/View;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildByTop:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2500(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mDistanceFromCloseChildTop:I

    return p0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mCloseChildPositionByTop:I

    return p0
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return p0
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    return p0
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    return p0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    return p0
.end method

.method static synthetic access$3000(Landroid/support/v7/widget/RecyclerView;IIZ)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return-void
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->HOVERSCROLL_DELAY:I

    return p0
.end method

.method static synthetic access$3300(Landroid/support/v7/widget/RecyclerView;)Landroid/os/Handler;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3400(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->contentFits()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p0
.end method

.method static synthetic access$3502(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 188
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$3600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-object p0
.end method

.method static synthetic access$3700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-object p0
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-object p0
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v4/widget/SeslEdgeEffect;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-object p0
.end method

.method static synthetic access$400(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    .line 188
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    return-wide v0
.end method

.method static synthetic access$4000(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    return-void
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    return-void
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return p0
.end method

.method static synthetic access$4300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$4802(Landroid/support/v7/widget/RecyclerView;I)I
    .locals 0

    .line 188
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic access$4900(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->playGotoToFadeOut()V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    .line 188
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$5000(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->playGotoToFadeIn()V

    return-void
.end method

.method static synthetic access$5200(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    return-object p0
.end method

.method static synthetic access$5300(Landroid/support/v7/widget/RecyclerView;)I
    .locals 0

    .line 188
    iget p0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    return p0
.end method

.method static synthetic access$5500(Landroid/support/v7/widget/RecyclerView;)[I
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    return-object p0
.end method

.method static synthetic access$5600(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mGlowByDragging:Z

    return p0
.end method

.method static synthetic access$5800()Z
    .locals 1

    .line 188
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    return v0
.end method

.method static synthetic access$5900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/SeslRecyclerViewFastScroller;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    return-object p0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    return p0
.end method

.method static synthetic access$6300(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 188
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;)J
    .locals 2

    .line 188
    iget-wide v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragScrollTimeInterval:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    .line 188
    iget-boolean p0, p0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p0
.end method

.method static synthetic access$802(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0

    .line 188
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    return p1
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 188
    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 1886
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1887
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1888
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1889
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1891
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    const/4 v1, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 1893
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1895
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private adjustNestedScrollRange()V
    .locals 4

    .line 3383
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getLocationInWindow([I)V

    .line 3384
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 3385
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget v1, v1, v3

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 3386
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    .line 3387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget v0, v0, v3

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    :cond_0
    return-void
.end method

.method private adjustNestedScrollRangeBy(I)V
    .locals 1

    .line 3392
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-eqz v0, :cond_2

    .line 3393
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 3394
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 3395
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    goto :goto_0

    .line 3396
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    if-le p1, v0, :cond_2

    .line 3397
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5756
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    if-eqz p5, :cond_0

    .line 5758
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-eq p1, p2, :cond_2

    if-eqz p6, :cond_1

    .line 5762
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5764
    :cond_1
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5766
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5767
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p5, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5768
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5769
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 5771
    :cond_2
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5772
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_3
    return-void
.end method

.method private autoHide(I)V
    .locals 2

    .line 3608
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 3613
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslIsFastScrollerEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3614
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3615
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3618
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3619
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->GO_TO_TOP_HIDE:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private canScrollDown()Z
    .locals 5

    .line 15223
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 15225
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping canScrollDown"

    .line 15226
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 15230
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    if-lez v0, :cond_3

    sub-int/2addr v0, v4

    .line 15234
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 15235
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method private canScrollUp()Z
    .locals 4

    .line 15208
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 15212
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 15213
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 15214
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method private cancelTouch()V
    .locals 1

    .line 4770
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    const/4 v0, 0x0

    .line 4771
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p0    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 7401
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 7402
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7404
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v2, :cond_0

    return-void

    .line 7408
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 7409
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 7410
    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 7415
    :cond_2
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    :cond_3
    return-void
.end method

.method private contentFits()Z
    .locals 5

    .line 15174
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 15176
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    .line 15178
    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v4, :cond_2

    sub-int/2addr v0, v1

    .line 15179
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    if-gt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 6

    if-eqz p2, :cond_1

    .line 1232
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1233
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1237
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 1241
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1244
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1248
    :try_start_1
    sget-object v4, Landroid/support/v7/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 1249
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x4

    .line 1250
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    aput-object p3, v5, v2

    const/4 p1, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1

    const/4 p1, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, v5, p1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1253
    :try_start_2
    new-array p4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1260
    :goto_1
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1261
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception p4

    .line 1255
    invoke-virtual {p4, p1}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1256
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": Error creating LayoutManager "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p1, p5, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 1275
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Class is not a LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_3
    move-exception p1

    .line 1272
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Cannot access non-public constructor "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_4
    move-exception p1

    .line 1269
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_5
    move-exception p1

    .line 1266
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Could not instantiate the LayoutManager: "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :catch_6
    move-exception p1

    .line 1263
    new-instance p4, Ljava/lang/IllegalStateException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Unable to find LayoutManager "

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p4, p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    :cond_1
    :goto_2
    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 3

    .line 5702
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 5703
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget p1, p1, v2

    if-eq p1, p2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .line 5025
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    .line 5026
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    .line 5027
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5028
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    .line 5029
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 5030
    invoke-static {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 5031
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 8

    .line 5376
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 5377
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 5378
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 5379
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5380
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 5381
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5382
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 5383
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->saveFocusInfo()V

    .line 5384
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 5385
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 5386
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 5387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 5388
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 5390
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_3

    .line 5392
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 5394
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5395
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    .line 5398
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5400
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 5401
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 5399
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 5402
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5403
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5404
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5405
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 5413
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v4, v5, v3}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5417
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    .line 5424
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 5425
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5426
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5428
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 5429
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v0, 0x0

    .line 5431
    :goto_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 5432
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5433
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 5434
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 5437
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/ViewInfoStore;->isInPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5438
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    const/16 v4, 0x2000

    .line 5440
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v4

    if-nez v4, :cond_5

    or-int/lit16 v3, v3, 0x1000

    .line 5444
    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5445
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 5444
    invoke-virtual {v5, v6, v1, v3, v7}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    if-eqz v4, :cond_6

    .line 5447
    invoke-virtual {p0, v1, v3}, Landroid/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 5449
    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v1, v3}, Landroid/support/v7/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 5454
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5

    .line 5456
    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 5458
    :goto_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 5459
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 5460
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    return-void
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .line 5468
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5469
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5470
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 5471
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 5472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 5473
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 5476
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 5477
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 5479
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    const/4 v0, 0x0

    .line 5480
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 5483
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 5484
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 5485
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 5486
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return-void
.end method

.method private dispatchLayoutStep3()V
    .locals 11

    .line 5494
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 5495
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 5496
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 5497
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 5498
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_5

    .line 5502
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 5503
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 5504
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5507
    :cond_0
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v2

    .line 5508
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 5509
    invoke-virtual {v4, v6, v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 5510
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v6, v2, v3}, Landroid/support/v7/widget/ViewInfoStore;->getFromOldChangeHolders(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 5511
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_3

    .line 5522
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    .line 5524
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/ViewInfoStore;->isDisappearing(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v9

    if-eqz v8, :cond_1

    if-ne v6, v5, :cond_1

    .line 5527
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 5529
    :cond_1
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ViewInfoStore;->popFromPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 5532
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v10, v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5533
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ViewInfoStore;->popFromPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v10

    if-nez v7, :cond_2

    .line 5535
    invoke-direct {p0, v2, v3, v5, v6}, Landroid/support/v7/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    move-object v4, v6

    move-object v6, v7

    move-object v7, v10

    .line 5537
    invoke-direct/range {v3 .. v9}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 5542
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v5, v4}, Landroid/support/v7/widget/ViewInfoStore;->addToPostLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5547
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoProcessCallback:Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/ViewInfoStore;->process(Landroid/support/v7/widget/ViewInfoStore$ProcessCallback;)V

    .line 5551
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastBlackTop:I

    const/4 v0, -0x1

    .line 5552
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    .line 5553
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 5554
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v1

    .line 5556
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v4, Landroid/support/v7/widget/LinearLayoutManager;

    .line 5557
    iget-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v5, :cond_6

    .line 5558
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    const/4 v2, 0x0

    goto :goto_2

    .line 5560
    :cond_6
    iget-boolean v5, v4, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-nez v5, :cond_7

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz v4, :cond_8

    .line 5561
    :cond_7
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, -0x1

    :cond_8
    :goto_2
    if-ltz v2, :cond_a

    .line 5565
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result v4

    if-gt v2, v4, :cond_a

    .line 5566
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 5568
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    .line 5569
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 5572
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    :cond_9
    const-string v4, "SeslRecyclerView"

    .line 5574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchLayoutStep3, lastPosition : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBlackTop : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tempView bottom : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mDrawReverse : "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 5582
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 5583
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 5584
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 5585
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 5587
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 5588
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 5589
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 5590
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5592
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v0, :cond_c

    .line 5595
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 5596
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 5597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 5600
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 5601
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 5602
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 5603
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->clear()V

    .line 5604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v3

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v1, v2, v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5605
    invoke-virtual {p0, v3, v3}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 5607
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->recoverFocusFromState()V

    .line 5608
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3831
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3832
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3835
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    goto :goto_0

    .line 3837
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v3, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    if-ne v0, v2, :cond_2

    .line 3840
    :cond_1
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_2
    return v2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3849
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_5

    .line 3851
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 3852
    invoke-interface {v4, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3853
    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 3814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 3816
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 3819
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 3821
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 3822
    invoke-interface {v5, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v0, v1, :cond_2

    .line 3823
    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 3

    .line 3738
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v0

    .line 3739
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v0, v0

    const/4 v2, 0x0

    .line 3741
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3743
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3744
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    .line 3747
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3748
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private findFirstChildPosition()I
    .locals 4

    .line 15243
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 15244
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    goto :goto_1

    .line 15245
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 15246
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 15247
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15248
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v3, 0x0

    .line 15249
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    const/4 v0, 0x0

    :cond_3
    return v0
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    .line 5676
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 5678
    aput v0, p1, v2

    .line 5679
    aput v0, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    :goto_0
    if-ge v3, v0, :cond_4

    .line 5685
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 5686
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 5689
    :cond_1
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ge v6, v4, :cond_2

    move v4, v6

    :cond_2
    if-le v6, v5, :cond_3

    move v5, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5697
    :cond_4
    aput v4, p1, v2

    .line 5698
    aput v5, p1, v1

    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;
    .locals 4
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 7379
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 7382
    :cond_0
    instance-of v0, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 7383
    check-cast p0, Landroid/support/v7/widget/RecyclerView;

    return-object p0

    .line 7385
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 7386
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 7388
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7389
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 5245
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5248
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 5250
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 5254
    :cond_1
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5255
    iget-object v0, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5258
    :cond_3
    :goto_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    const/4 v1, 0x0

    if-ltz v0, :cond_6

    .line 5260
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 5264
    :cond_4
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5265
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_6
    return-object v1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 6309
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    .line 6668
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 6669
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 6670
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 6671
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 6672
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 6673
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p0, v0

    .line 6670
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .locals 3

    .line 5346
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 5347
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5348
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 5349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5351
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1283
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "."

    .line 1286
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    .line 1289
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    .line 15066
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 15067
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 15069
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLandroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 5630
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5632
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5633
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p3, :cond_0

    goto :goto_1

    .line 5637
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    .line 5639
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5640
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n View Holder 2:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5643
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5645
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " \n View Holder 2:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5649
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "SeslRecyclerView"

    .line 5654
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " cannot be found but it is necessary for "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5656
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5654
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hasUpdatedView()Z
    .locals 5

    .line 2327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2329
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2330
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 2333
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initChildrenHelper()V
    .locals 2

    .line 1293
    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$6;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    return-void
.end method

.method private isInDialog()Z
    .locals 4

    .line 15184
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 15185
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    .line 15186
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    if-nez v0, :cond_0

    return v2

    .line 15189
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRootViewCheckForDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15190
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/app/Activity;

    .line 15191
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2
.end method

.method private isNavigationBarHide(Landroid/content/Context;)Z
    .locals 3

    .line 3624
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->isSupportSoftNavigationBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3625
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "navigationbar_hide_bar_enabled"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_19

    if-eq p2, p0, :cond_19

    if-ne p1, p2, :cond_0

    goto/16 :goto_3

    .line 3149
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 3156
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 3160
    :cond_3
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3161
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3162
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3163
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3164
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, v1, :cond_4

    const/4 p1, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    .line 3166
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_6

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    .line 3170
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v2, v3, :cond_7

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v3, :cond_8

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_8

    const/4 v2, -0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 3176
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gt v3, v4, :cond_a

    :cond_9
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v4, :cond_a

    const/4 p2, 0x1

    goto :goto_2

    .line 3180
    :cond_a
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_b

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_c

    :cond_b
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-le v3, v4, :cond_c

    goto :goto_2

    :cond_c
    const/4 p2, 0x0

    :goto_2
    const/16 v3, 0x11

    if-eq p3, v3, :cond_17

    const/16 v3, 0x21

    if-eq p3, v3, :cond_15

    const/16 v3, 0x42

    if-eq p3, v3, :cond_13

    const/16 v3, 0x82

    if-eq p3, v3, :cond_11

    packed-switch p3, :pswitch_data_0

    .line 3199
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-gtz p2, :cond_d

    if-nez p2, :cond_e

    mul-int v2, v2, p1

    if-ltz v2, :cond_e

    :cond_d
    const/4 v0, 0x1

    :cond_e
    return v0

    :pswitch_1
    if-ltz p2, :cond_f

    if-nez p2, :cond_10

    mul-int v2, v2, p1

    if-gtz v2, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0

    :cond_11
    if-lez p2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :cond_13
    if-lez v2, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0

    :cond_15
    if-gez p2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0

    :cond_17
    if-gez v2, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    :goto_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSupportGotoTop()Z
    .locals 1

    .line 3561
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupportSoftNavigationBar(Landroid/content/Context;)Z
    .locals 4

    .line 3632
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_showNavigationBar"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 3633
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isTalkBackIsRunning()Z
    .locals 2

    .line 3546
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    .line 3547
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3548
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*"

    .line 3550
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    .line 3551
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"

    .line 3552
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private multiSelection(IIIIZ)V
    .locals 4

    .line 4045
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 4048
    iget-boolean p5, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    if-eqz p5, :cond_2

    .line 4049
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    .line 4050
    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    .line 4051
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    int-to-float p5, p1

    int-to-float v0, p2

    .line 4053
    invoke-virtual {p0, p5, v0}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 4054
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v3, :cond_0

    .line 4055
    invoke-virtual {p0, p5, v0}, Landroid/support/v7/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object p5

    iput-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 4056
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez p5, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "multiSelection, mPenTrackedChild is NULL"

    .line 4057
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4058
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    .line 4059
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    return-void

    .line 4064
    :cond_0
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    if-eqz p5, :cond_1

    .line 4065
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-interface {p5, p1, p2}, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 4068
    :cond_1
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {p0, p5}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p5

    iput p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 4069
    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p5, v0

    iput p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 4070
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    .line 4073
    :cond_2
    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    if-nez p5, :cond_4

    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-nez p5, :cond_4

    .line 4074
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    .line 4075
    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    .line 4076
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    if-eqz p5, :cond_3

    .line 4077
    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-interface {p5, p1, p2}, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStart(II)V

    .line 4079
    :cond_3
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    .line 4082
    :cond_4
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    .line 4083
    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 4085
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-gez p1, :cond_5

    .line 4086
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_0

    .line 4087
    :cond_5
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-le p1, p4, :cond_6

    .line 4088
    iput p4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 4091
    :cond_6
    :goto_0
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    if-ge p1, p5, :cond_7

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    goto :goto_1

    :cond_7
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    :goto_1
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 4092
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-ge p1, p5, :cond_8

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    goto :goto_2

    :cond_8
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :goto_2
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    .line 4093
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    if-le p1, p5, :cond_9

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    goto :goto_3

    :cond_9
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    :goto_3
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    .line 4094
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-le p1, p5, :cond_a

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_4

    :cond_a
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :goto_4
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 p5, 0x1

    :cond_b
    if-eqz p5, :cond_13

    .line 4098
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr p3, p1

    if-gt p2, p3, :cond_d

    .line 4099
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_c

    .line 4100
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 4101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 4103
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_c

    .line 4104
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0, v1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4108
    :cond_c
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 4109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 p1, 0x2

    .line 4110
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 4111
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4113
    :cond_d
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr p4, p1

    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr p4, p1

    if-lt p2, p4, :cond_f

    .line 4114
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez p1, :cond_e

    .line 4115
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 4116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 4118
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_e

    .line 4119
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0, v1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4123
    :cond_e
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_12

    .line 4124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 4125
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 4126
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 4129
    :cond_f
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz p1, :cond_10

    .line 4130
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_10
    const-wide/16 p1, 0x0

    .line 4133
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 4134
    iput-wide p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 4135
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 4138
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4139
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 4140
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v1, :cond_11

    .line 4141
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4145
    :cond_11
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 4148
    :cond_12
    :goto_5
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p1, :cond_13

    .line 4149
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    :cond_13
    return-void
.end method

.method private multiSelectionEnd(II)V
    .locals 1

    .line 4155
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    if-eqz v0, :cond_0

    .line 4156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;->onMultiSelectStop(II)V

    :cond_0
    const/4 p1, 0x0

    .line 4158
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenPressed:Z

    const/4 p2, 0x1

    .line 4159
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstPenMoveEvent:Z

    const/4 p2, -0x1

    .line 4160
    iput p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 4161
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 4163
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    .line 4164
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    .line 4165
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    .line 4166
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 4168
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 4169
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    .line 4170
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    .line 4171
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 p2, 0x0

    .line 4173
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 4174
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 4176
    iget-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz p2, :cond_1

    .line 4177
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4181
    :cond_1
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 4182
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 4776
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4779
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4780
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 4781
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v2

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pageScroll(I)Z
    .locals 3

    .line 15314
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string v0, "No adapter attached; skipping pageScroll"

    .line 15315
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 15318
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x0

    goto :goto_0

    .line 15329
    :pswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findLastVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    add-int/2addr p1, v2

    goto :goto_0

    .line 15326
    :pswitch_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    sub-int/2addr p1, v2

    :goto_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 15347
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 15348
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$15;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/RecyclerView$15;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private playGotoToFadeIn()V
    .locals 4

    .line 3597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3600
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3601
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3603
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0xff

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3604
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playGotoToFadeOut()V
    .locals 4

    .line 3586
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3589
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3590
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3592
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 3593
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .line 5114
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .line 5124
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 5127
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 5128
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_0

    .line 5129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 5135
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    goto :goto_0

    .line 5138
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 5140
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 5141
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_6

    :cond_4
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 5147
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 5148
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_7

    .line 5151
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, v3, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v3, p2, v2

    if-gez v3, :cond_0

    .line 2842
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2843
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    sub-float p3, v0, p3

    invoke-virtual {v3, v4, p3}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    :cond_0
    cmpl-float v3, p2, v2

    if-lez v3, :cond_1

    .line 2846
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2847
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr p3, v5

    invoke-virtual {v3, v4, p3}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_1
    cmpg-float v3, p4, v2

    if-gez v3, :cond_2

    .line 2852
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2853
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-float v0, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v0, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    goto :goto_2

    :cond_2
    cmpl-float v3, p4, v2

    if-lez v3, :cond_3

    .line 2856
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2857
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p4, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v0, p1

    invoke-virtual {p3, v3, v0}, Landroid/support/v4/widget/SeslEdgeEffect;->onPull(FF)V

    goto :goto_2

    :cond_3
    move v1, p3

    .line 2862
    :goto_2
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mGlowByDragging:Z

    if-nez v1, :cond_4

    cmpl-float p1, p2, v2

    if-nez p1, :cond_4

    cmpl-float p1, p4, v2

    if-eqz p1, :cond_5

    .line 2866
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private recoverFocusFromState()V
    .locals 6

    .line 5272
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5273
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_a

    .line 5274
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 5282
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5283
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 5284
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_2

    .line 5285
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5297
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 5300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestFocus()Z

    return-void

    .line 5303
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5313
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5314
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-wide v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_6

    .line 5317
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v5, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5318
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 5331
    :cond_5
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_2

    .line 5319
    :cond_6
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 5326
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v4

    :cond_7
    :goto_2
    if-eqz v4, :cond_9

    .line 5335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v0, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 5336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 5337
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    move-object v0, v4

    .line 5341
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .line 2872
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2874
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2876
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_1

    .line 2877
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2878
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2880
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_2

    .line 2881
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2882
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2884
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_3

    .line 2885
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2886
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 2889
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 3221
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3226
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3227
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v1, :cond_1

    .line 3229
    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 3230
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_1

    .line 3231
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3232
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 3233
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 3234
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 3235
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    if-eqz p2, :cond_2

    .line 3240
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v0}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3241
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3243
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v1, 0x1

    xor-int/lit8 v9, v0, 0x1

    if-nez p2, :cond_3

    const/4 v10, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    :goto_1
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    return-void
.end method

.method private resetFocusInfo()V
    .locals 3

    .line 5230
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 5231
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 5232
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 4762
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 4763
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 4765
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    .line 4766
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    return-void
.end method

.method private saveFocusInfo()V
    .locals 4

    .line 5210
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 5211
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 5214
    :cond_1
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 5216
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_4

    .line 5218
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    const-wide/16 v2, -0x1

    :goto_2
    iput-wide v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemId:J

    .line 5222
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    goto :goto_3

    .line 5223
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_3

    .line 5224
    :cond_5
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    :goto_3
    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 5225
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mFocusedSubChildId:I

    :goto_4
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 2

    .line 1649
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1650
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1651
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_2

    .line 1654
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1656
    :cond_2
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {p3}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 1657
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1658
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    .line 1660
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 1661
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1663
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    .line 1664
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 1666
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p3, v0, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 1667
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return-void
.end method

.method private setupGoToTop(I)V
    .locals 9

    .line 3638
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    .line 3642
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3644
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 3648
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 p1, 0x0

    :cond_1
    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    .line 3652
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    if-eqz v3, :cond_3

    .line 3653
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollDown()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 3654
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_5

    .line 3655
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollDown()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    const/4 p1, 0x1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    .line 3660
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    if-eq p1, v0, :cond_7

    .line 3662
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3665
    :cond_7
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    if-nez v2, :cond_8

    if-nez p1, :cond_8

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz v2, :cond_8

    .line 3666
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v2, 0x2

    if-eq p1, v2, :cond_9

    .line 3670
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3673
    :cond_9
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    .line 3675
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    .line 3676
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    .line 3677
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v3, v5

    .line 3678
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    div-int/2addr v3, v2

    add-int/2addr v5, v3

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 3716
    :pswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3718
    new-instance v3, Landroid/graphics/Rect;

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    div-int/2addr v6, v2

    sub-int v6, v5, v6

    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    sub-int v7, v4, v7

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    div-int/2addr v8, v2

    add-int/2addr v5, v8

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    sub-int/2addr v4, v8

    invoke-direct {v3, v6, v7, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    goto :goto_2

    .line 3711
    :pswitch_1
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v3, v2, :cond_a

    .line 3712
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    .line 3724
    :cond_a
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    if-ne v3, v2, :cond_b

    .line 3725
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mShowFadeOutGTP:I

    .line 3727
    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-ne p1, v0, :cond_d

    .line 3729
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    if-eqz p1, :cond_d

    .line 3730
    :cond_c
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 3733
    :cond_d
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    .line 3734
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopLastState:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)Z
    .locals 0

    .line 15201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/support/v4/view/SeslInputDeviceReflector;->setPointerType(Landroid/view/InputDevice;I)V

    const/4 p1, 0x1

    return p1
.end method

.method private stopScrollersInternal()V
    .locals 1

    .line 2811
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2812
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2813
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 16

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v7, p2

    .line 3876
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v8

    .line 3877
    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    .line 3878
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    .line 3879
    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    int-to-float v1, v0

    int-to-float v2, v7

    .line 3880
    invoke-virtual {v6, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v3

    iput-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3881
    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v3, :cond_0

    .line 3882
    invoke-virtual {v6, v1, v2}, Landroid/support/v7/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 3883
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-nez v1, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "updateLongPressMultiSelection, mPenTrackedChild is NULL"

    .line 3884
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    iput-boolean v9, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    return-void

    .line 3890
    :cond_0
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v1, :cond_1

    .line 3891
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    invoke-interface {v1, v0, v7}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionStarted(II)V

    .line 3894
    :cond_1
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 3895
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3896
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget-object v2, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 3898
    iput-boolean v9, v6, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    .line 3904
    :cond_2
    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v1, :cond_3

    .line 3905
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 3906
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iget-object v3, v6, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    move v11, v1

    move v10, v2

    goto :goto_0

    .line 3909
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    move v10, v2

    const/4 v11, 0x0

    .line 3912
    :goto_0
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    .line 3913
    iput v7, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 3915
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-gez v0, :cond_4

    .line 3916
    iput v9, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_1

    .line 3917
    :cond_4
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-le v0, v10, :cond_5

    .line 3918
    iput v10, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 3921
    :cond_5
    :goto_1
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v0, v0

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    .line 3923
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    int-to-float v0, v0

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "SeslRecyclerView"

    const-string v1, "updateLongPressMultiSelection, touchedView is NULL"

    .line 3925
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3929
    :cond_6
    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    const/4 v12, -0x1

    if-eq v0, v12, :cond_17

    .line 3931
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3940
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-ge v0, v1, :cond_7

    .line 3941
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    .line 3942
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    :goto_2
    move v13, v0

    move v14, v1

    goto :goto_3

    .line 3944
    :cond_7
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3945
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    goto :goto_2

    .line 3948
    :goto_3
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    if-ge v0, v1, :cond_8

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    goto :goto_4

    :cond_8
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    :goto_4
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 3949
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_9

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    goto :goto_5

    :cond_9
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :goto_5
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    .line 3950
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    if-le v0, v1, :cond_a

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    goto :goto_6

    :cond_a
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    :goto_6
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    .line 3951
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-le v0, v1, :cond_b

    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_7

    :cond_b
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :goto_7
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    const/4 v15, 0x0

    :goto_8
    const/4 v0, 0x1

    if-ge v15, v8, :cond_f

    .line 3954
    invoke-virtual {v6, v15}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 3956
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iput v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3958
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 3960
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v13, v1, :cond_c

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-gt v1, v14, :cond_c

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-eq v1, v3, :cond_c

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_d

    .line 3966
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-eq v0, v12, :cond_e

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3967
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3968
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3969
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_e

    .line 3970
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3971
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 3970
    invoke-interface/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V

    goto :goto_a

    .line 3975
    :cond_d
    iget v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    if-eq v0, v12, :cond_e

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3976
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3977
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3978
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_e

    .line 3979
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    iget v3, v6, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 3980
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v4

    move-object/from16 v1, p0

    .line 3979
    invoke-interface/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onItemSelected(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V

    :cond_e
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    :cond_f
    if-eqz p3, :cond_16

    .line 3988
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v11, v1

    if-gt v7, v11, :cond_11

    .line 3989
    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_10

    .line 3990
    iput-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 3991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 3993
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_10

    .line 3994
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v6, v0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3999
    :cond_10
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 4000
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    const/4 v0, 0x2

    .line 4001
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 4002
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 4004
    :cond_11
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v10, v1

    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v10, v1

    if-lt v7, v10, :cond_13

    .line 4005
    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v1, :cond_12

    .line 4006
    iput-boolean v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 4007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 4009
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_12

    .line 4010
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v6, v0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4014
    :cond_12
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 4015
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 4016
    iput v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 4017
    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_b

    .line 4020
    :cond_13
    iget-boolean v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-eqz v1, :cond_14

    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_14

    .line 4021
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v6, v9}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    :cond_14
    const-wide/16 v1, 0x0

    .line 4024
    iput-wide v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 4025
    iput-wide v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 4026
    iput-boolean v9, v6, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 4029
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4030
    iget-object v1, v6, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4031
    iget v1, v6, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v1, v0, :cond_15

    .line 4032
    invoke-virtual {v6, v9}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4036
    :cond_15
    iput-boolean v9, v6, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 4039
    :cond_16
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void

    :cond_17
    const-string v0, "SeslRecyclerView"

    const-string v1, "touchedPosition is NO_POSITION"

    .line 3933
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    .line 2918
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 2919
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 2921
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 2922
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 2926
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 2927
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    .line 2929
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 2930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SeslEdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2934
    :cond_4
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 3254
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3255
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    .line 2059
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 2

    .line 2030
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2031
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2034
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2035
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    .line 2038
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2040
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2042
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2043
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 1723
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1726
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    .line 3798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 2165
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 2168
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5738
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5739
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5740
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 5746
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    .line 5747
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 5748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5749
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    :cond_0
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    .line 3347
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 3349
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3350
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3352
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 4

    .line 3365
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 3367
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3368
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3370
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3372
    :cond_1
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez p1, :cond_2

    const-string p1, "SeslRecyclerView"

    const-string v0, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    .line 3373
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3378
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3373
    invoke-static {p1, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 6164
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 6165
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 6164
    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 5990
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method clearOldPositions()V
    .locals 4

    .line 6044
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6046
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6047
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6048
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6051
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .line 1746
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .line 2186
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2187
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .line 2477
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2480
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .line 2452
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2455
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .line 2500
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2503
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .line 2549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2552
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .line 2525
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2528
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .line 2572
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2575
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v1

    :cond_1
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    .line 2895
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-lez p1, :cond_0

    .line 2896
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2897
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2899
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 2900
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2901
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2903
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 2904
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2905
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 2907
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    if-gez p2, :cond_3

    .line 2908
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->onRelease()V

    .line 2909
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p1}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_3
    if-eqz v0, :cond_4

    .line 2912
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method consumePendingUpdateOperations()V
    .locals 2

    .line 2286
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2292
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 2298
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    const/16 v1, 0xb

    .line 2299
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RV PartialInvalidate"

    .line 2301
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2303
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 2305
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_3

    .line 2306
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2307
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    goto :goto_0

    .line 2310
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 2313
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2314
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2315
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_1

    .line 2316
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "RV FullInvalidate"

    .line 2317
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 2319
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string v0, "RV FullInvalidate"

    .line 2287
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 2289
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    return-void
.end method

.method defaultOnMeasure(II)V
    .locals 2

    .line 4952
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 4953
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 4951
    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 4955
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 4956
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    .line 4954
    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 4958
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .locals 2

    .line 9077
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9078
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 9079
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9080
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9082
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9085
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .locals 2

    .line 9063
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 9064
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 9065
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 9066
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 9068
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 9069
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 9071
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 5955
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5958
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5960
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5963
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastBlackTop:I

    if-eq v0, v3, :cond_7

    :cond_1
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5964
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 5965
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5967
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawReverse:Z

    if-eqz v0, :cond_3

    .line 5968
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 5970
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 5973
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    .line 5976
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mBlackTop:I

    if-eq v0, v1, :cond_8

    :cond_6
    const/4 v3, 0x0

    .line 5977
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5978
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v0, :cond_8

    .line 5979
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mAnimatedBlackTop:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v5

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    goto :goto_2

    .line 5982
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 5983
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {v5}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->getRoundedCornerRadius()I

    move-result v5

    add-int/2addr v5, v0

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->drawRoundedCorner(IIIILandroid/graphics/Canvas;)V

    :cond_8
    :goto_2
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 15362
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v2, :cond_0

    const-string v2, "SeslRecyclerView"

    const-string v3, "No adapter attached; skipping hover scroll"

    .line 15363
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15364
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 15367
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    .line 15368
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 15371
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    const/16 v5, 0x9

    const/4 v6, 0x7

    const/16 v7, 0xa

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_2

    :cond_1
    if-ne v4, v8, :cond_2

    .line 15376
    iput-boolean v9, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    goto :goto_0

    :cond_2
    if-ne v2, v7, :cond_3

    .line 15378
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenHovered:Z

    .line 15381
    :cond_3
    :goto_0
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->isTextViewHovered()Z

    move-result v10

    iput-boolean v10, v0, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    .line 15382
    iget-boolean v10, v0, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    const/16 v11, 0x20

    if-nez v10, :cond_5

    iget-boolean v10, v0, Landroid/support/v7/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eqz v10, :cond_5

    iget-boolean v10, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v10, :cond_5

    .line 15383
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-eq v10, v11, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    if-ne v10, v8, :cond_5

    .line 15384
    :cond_4
    iput-boolean v9, v0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    goto :goto_1

    .line 15386
    :cond_5
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    .line 15389
    :goto_1
    iget-boolean v10, v0, Landroid/support/v7/widget/RecyclerView;->mNewTextViewHoverState:Z

    iput-boolean v10, v0, Landroid/support/v7/widget/RecyclerView;->mOldTextViewHoverState:Z

    if-eq v2, v5, :cond_b

    .line 15392
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    if-ne v2, v6, :cond_a

    .line 15434
    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v4, :cond_7

    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v4, :cond_7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-ne v4, v8, :cond_7

    .line 15435
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v11, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v8, :cond_8

    :cond_7
    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelectIconSet:Z

    if-eqz v4, :cond_9

    .line 15436
    :cond_8
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15437
    iput-boolean v9, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 15438
    :cond_9
    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v4, :cond_15

    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v4, :cond_15

    .line 15439
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v11, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    if-eq v4, v8, :cond_15

    .line 15440
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15441
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    :cond_a
    if-ne v2, v7, :cond_15

    .line 15444
    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-eqz v4, :cond_15

    .line 15445
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15446
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 15394
    :cond_b
    :goto_2
    iput-boolean v9, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 15395
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    .line 15397
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v5, :cond_c

    .line 15398
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 15402
    :cond_c
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollEnable:Z

    if-nez v5, :cond_e

    .line 15403
    :cond_d
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 15407
    :cond_e
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v5, :cond_14

    if-ne v4, v8, :cond_14

    .line 15408
    invoke-static {}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_PEN_HOVERING()Ljava/lang/String;

    move-result-object v5

    .line 15409
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_f

    const/4 v5, 0x1

    goto :goto_3

    :cond_f
    const/4 v5, 0x0

    .line 15413
    :goto_3
    :try_start_0
    iget-object v10, v0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "car_mode_on"

    invoke-static {v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v10, v9, :cond_10

    const/4 v10, 0x1

    goto :goto_4

    :catch_0
    const-string v10, "SeslRecyclerView"

    const-string v12, "dispatchHoverEvent car_mode_on SettingNotFoundException"

    .line 15415
    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v10, 0x0

    :goto_4
    if-eqz v5, :cond_11

    if-eqz v10, :cond_12

    .line 15419
    :cond_11
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    :cond_12
    if-eqz v5, :cond_14

    .line 15422
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v5, :cond_14

    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    if-nez v5, :cond_14

    .line 15423
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    if-eq v5, v11, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    if-ne v5, v8, :cond_14

    .line 15424
    :cond_13
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v5

    invoke-direct {v0, v1, v5}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15425
    iput-boolean v9, v0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectPointerSetted:Z

    .line 15430
    :cond_14
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-eqz v5, :cond_15

    const/4 v5, 0x3

    if-ne v4, v5, :cond_15

    .line 15431
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    .line 15451
    :cond_15
    :goto_5
    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mNeedsHoverScroll:Z

    if-nez v4, :cond_16

    .line 15452
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 15456
    :cond_16
    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 15458
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    :goto_6
    float-to-int v5, v5

    goto :goto_7

    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    goto :goto_6

    :goto_7
    if-eqz v4, :cond_18

    .line 15459
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    :goto_8
    float-to-int v10, v10

    goto :goto_9

    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    goto :goto_8

    .line 15460
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v12

    .line 15466
    iget-boolean v13, v0, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v13, :cond_19

    .line 15467
    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    .line 15468
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v14

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    goto :goto_a

    .line 15470
    :cond_19
    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mExtraPaddingInTopHoverArea:I

    if-eqz v4, :cond_1a

    .line 15471
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v14

    goto :goto_a

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v14

    .line 15475
    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v15

    add-int/2addr v15, v12

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v15, v7, :cond_1b

    const/4 v7, 0x1

    goto :goto_b

    :cond_1b
    const/4 v7, 0x0

    :goto_b
    if-nez v7, :cond_1f

    if-lez v12, :cond_1f

    add-int/lit8 v7, v12, -0x1

    .line 15478
    invoke-virtual {v0, v7}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v7, v15}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v4, :cond_1e

    .line 15479
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 15480
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v15

    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v15, v9

    if-gt v7, v15, :cond_1d

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 15481
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v9

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v15

    if-le v7, v9, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v7, 0x0

    goto :goto_d

    :cond_1d
    :goto_c
    const/4 v7, 0x1

    goto :goto_d

    :cond_1e
    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 15482
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v9

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v15

    if-gt v7, v9, :cond_1d

    iget-object v7, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 15483
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    iget-object v15, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v15

    if-le v7, v9, :cond_1c

    goto :goto_c

    .line 15487
    :cond_1f
    :goto_d
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->findFirstChildPosition()I

    move-result v9

    if-lez v9, :cond_20

    const/4 v9, 0x1

    goto :goto_e

    :cond_20
    const/4 v9, 0x0

    :goto_e
    if-nez v9, :cond_23

    if-lez v12, :cond_23

    .line 15491
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v12}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz v4, :cond_22

    .line 15492
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    if-ge v9, v12, :cond_21

    :goto_f
    const/4 v9, 0x1

    goto :goto_10

    :cond_21
    const/4 v9, 0x0

    goto :goto_10

    :cond_22
    iget-object v9, v0, Landroid/support/v7/widget/RecyclerView;->mChildBound:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-ge v9, v12, :cond_21

    goto :goto_f

    .line 15497
    :cond_23
    :goto_10
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    if-ne v12, v8, :cond_24

    const/4 v12, 0x1

    goto :goto_11

    :cond_24
    const/4 v12, 0x0

    .line 15499
    :goto_11
    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v15, v13

    move/from16 v16, v12

    if-le v10, v15, :cond_25

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v15, v14, v15

    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v15, v11

    if-lt v10, v15, :cond_40

    :cond_25
    if-lez v5, :cond_40

    if-eqz v4, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v11

    goto :goto_12

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v11

    :goto_12
    if-gt v5, v11, :cond_40

    if-nez v9, :cond_27

    if-eqz v7, :cond_40

    :cond_27
    if-lt v10, v13, :cond_28

    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v11, v13

    if-gt v10, v11, :cond_28

    if-nez v9, :cond_28

    iget-boolean v9, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v9, :cond_40

    :cond_28
    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v9, v14, v9

    iget v11, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v9, v11

    if-lt v10, v9, :cond_29

    iget v9, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int v9, v14, v9

    if-gt v10, v9, :cond_29

    if-nez v7, :cond_29

    iget-boolean v7, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_40

    :cond_29
    if-eqz v16, :cond_2a

    .line 15503
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    const/16 v9, 0x20

    if-eq v7, v9, :cond_40

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    if-eq v7, v8, :cond_40

    :cond_2a
    if-eqz v16, :cond_40

    .line 15504
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->isLockScreenMode()Z

    move-result v7

    if-eqz v7, :cond_2b

    goto/16 :goto_1c

    .line 15541
    :cond_2b
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v5, :cond_2c

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v5, :cond_2c

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v7, v0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v5, v7, :cond_2c

    .line 15542
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 15545
    :cond_2c
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v5, :cond_2d

    .line 15546
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    :cond_2d
    if-eq v2, v6, :cond_35

    packed-switch v2, :pswitch_data_0

    :cond_2e
    :goto_13
    const/4 v1, 0x1

    goto/16 :goto_1b

    .line 15626
    :pswitch_0
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 15627
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15630
    :cond_2f
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    .line 15631
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 15635
    :cond_30
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const-wide/16 v4, 0x0

    .line 15637
    iput-wide v4, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 15638
    iput-wide v4, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 15639
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 15640
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 15641
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    .line 15643
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_31

    .line 15644
    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 15645
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_31

    .line 15646
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 15649
    :cond_31
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    const/4 v2, 0x1

    .line 15551
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-lt v10, v13, :cond_33

    .line 15553
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v2

    if-gt v10, v13, :cond_33

    .line 15555
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 15556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    if-eqz v4, :cond_32

    .line 15557
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_LEFT()I

    move-result v2

    goto :goto_14

    :cond_32
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v2

    :goto_14
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15559
    iput v8, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 15560
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_13

    .line 15562
    :cond_33
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v14, v2

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v5

    if-lt v10, v2, :cond_2e

    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v14, v2

    if-gt v10, v14, :cond_2e

    .line 15564
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 15565
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    if-eqz v4, :cond_34

    .line 15566
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_RIGHT()I

    move-result v2

    goto :goto_15

    :cond_34
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v2

    :goto_15
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const/4 v2, 0x1

    .line 15568
    iput v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 15569
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    :cond_35
    const/4 v2, 0x1

    .line 15575
    iget-boolean v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v5, :cond_36

    .line 15576
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    const/16 v2, 0xa

    .line 15577
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 15578
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_36
    if-lt v10, v13, :cond_3a

    .line 15581
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v2

    if-gt v10, v13, :cond_3a

    .line 15583
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 15584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 15587
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_37

    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_39

    :cond_37
    if-eqz v4, :cond_38

    .line 15588
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_LEFT()I

    move-result v2

    goto :goto_16

    :cond_38
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v2

    :goto_16
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15590
    :cond_39
    iput v8, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 15591
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 15593
    :cond_3a
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int v2, v14, v2

    iget v5, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v2, v5

    if-lt v10, v2, :cond_3e

    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v14, v2

    if-gt v10, v14, :cond_3e

    .line 15595
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 15596
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 15599
    iget-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    if-eqz v2, :cond_3c

    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    if-ne v2, v8, :cond_3b

    goto :goto_18

    :cond_3b
    :goto_17
    const/4 v1, 0x1

    goto :goto_1a

    :cond_3c
    :goto_18
    if-eqz v4, :cond_3d

    .line 15600
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_RIGHT()I

    move-result v2

    goto :goto_19

    :cond_3d
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v2

    :goto_19
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    goto :goto_17

    .line 15603
    :goto_1a
    iput v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollDirection:I

    .line 15604
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    .line 15608
    :cond_3e
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 15609
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15610
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3f

    .line 15611
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 15614
    :cond_3f
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    const-wide/16 v1, 0x0

    .line 15616
    iput-wide v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 15617
    iput-wide v1, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 15618
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 15619
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 15620
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    goto/16 :goto_13

    :goto_1b
    return v1

    .line 15506
    :cond_40
    :goto_1c
    iget-boolean v6, v0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz v6, :cond_41

    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-lez v6, :cond_41

    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iget v7, v0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    if-eq v6, v7, :cond_41

    .line 15507
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    .line 15510
    :cond_41
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 15511
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 15512
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v6

    invoke-direct {v0, v1, v6}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15513
    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_42

    .line 15514
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 15518
    :cond_42
    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    add-int/2addr v13, v6

    if-le v10, v13, :cond_43

    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    sub-int/2addr v14, v6

    iget v6, v0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    sub-int/2addr v14, v6

    if-lt v10, v14, :cond_45

    :cond_43
    if-lez v5, :cond_45

    if-eqz v4, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v4

    goto :goto_1d

    :cond_44
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v4

    :goto_1d
    if-le v5, v4, :cond_46

    .line 15519
    :cond_45
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 15522
    :cond_46
    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    if-nez v4, :cond_47

    iget-wide v4, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_48

    goto :goto_1e

    :cond_47
    const-wide/16 v6, 0x0

    .line 15523
    :goto_1e
    invoke-static {}, Landroid/support/v4/view/SeslPointerIconReflector;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroid/support/v7/widget/RecyclerView;->showPointerIcon(Landroid/view/MotionEvent;I)Z

    .line 15526
    :cond_48
    iput-wide v6, v0, Landroid/support/v7/widget/RecyclerView;->mHoverRecognitionStartTime:J

    .line 15527
    iput-wide v6, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStartTime:J

    .line 15528
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mHoverAreaEnter:Z

    .line 15529
    iput-boolean v3, v0, Landroid/support/v7/widget/RecyclerView;->mIsSendHoverScrollState:Z

    const/16 v4, 0xa

    if-ne v2, v4, :cond_49

    .line 15531
    iget v2, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    if-eqz v2, :cond_49

    .line 15532
    iput v3, v0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateForListener:I

    .line 15533
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_49

    .line 15534
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 15538
    :cond_49
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 15843
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 15846
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 15847
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsArrowKeyPressed:Z

    .line 15852
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method dispatchLayout()V
    .locals 2

    .line 5180
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    const-string v0, "SeslRecyclerView"

    const-string v1, "No adapter attached; skipping layout"

    .line 5181
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5185
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "No layout manager attached; skipping layout"

    .line 5186
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5190
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 5191
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5192
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 5193
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 5194
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 5195
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 5196
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 5203
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_1

    .line 5199
    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Landroid/support/v7/widget/RecyclerView;)V

    .line 5200
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 5205
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep3()V

    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    .line 13133
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    .line 13138
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    .line 13121
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 6

    .line 13127
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    .line 13108
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 7

    .line 13115
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    .line 6772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 6773
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 6778
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 6781
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 6782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 6784
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6785
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6786
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4

    .line 6726
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 6729
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 6730
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 6731
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 6734
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->onScrolled(II)V

    .line 6737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 6738
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 6744
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 6745
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 6747
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 6748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 6749
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6752
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchScrollCounter:I

    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .locals 5

    .line 13020
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 13021
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 13022
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 13025
    :cond_0
    iget v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 13028
    iget-object v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 13029
    iput v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 13033
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1874
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1866
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 4190
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 4191
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getItemAnimationTypeInternal()I

    move-result v0

    if-ne v0, v1, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string v0, "dispatchTouchEvent : itemAnimator is running, return.."

    .line 4192
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4196
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "SeslRecyclerView"

    const-string v1, "No layout manager attached; skipping gototop & multiselection"

    .line 4197
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 4204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v6, v3

    .line 4205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v7, v3

    const/4 v10, 0x0

    .line 4212
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    .line 4213
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    .line 4216
    :cond_2
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mIsEnabledPaddingInHoverScroll:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 4217
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 4218
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v8

    move v8, v3

    move v9, v5

    goto :goto_0

    .line 4221
    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    move v9, v3

    const/4 v8, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    const/4 v10, 0x0

    move-object v5, p0

    .line 4290
    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->multiSelection(IIIIZ)V

    goto/16 :goto_7

    .line 4251
    :pswitch_1
    invoke-static {}, Landroid/support/v4/widget/SeslTextViewReflector;->isTextSelectionProgressing()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    if-nez v0, :cond_4

    goto :goto_1

    .line 4255
    :cond_4
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    goto :goto_2

    .line 4252
    :cond_5
    :goto_1
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    .line 4258
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    .line 4259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 4295
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-eqz v0, :cond_a

    .line 4296
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v1, :cond_6

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    .line 4298
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_3

    .line 4267
    :pswitch_3
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_7

    const/4 v10, 0x0

    move-object v5, p0

    .line 4268
    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v2

    .line 4271
    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_8

    .line 4273
    invoke-direct {p0, v6, v7, v2}, Landroid/support/v7/widget/RecyclerView;->updateLongPressMultiSelection(IIZ)V

    return v2

    .line 4277
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v1, :cond_1a

    .line 4278
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_9

    .line 4279
    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    .line 4280
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v0, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 4281
    invoke-direct {p0, v2}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    .line 4282
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    :cond_9
    return v2

    .line 4304
    :cond_a
    :goto_3
    :pswitch_4
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_b

    .line 4305
    invoke-direct {p0, v6, v7}, Landroid/support/v7/widget/RecyclerView;->multiSelectionEnd(II)V

    .line 4306
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    return v2

    .line 4309
    :cond_b
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_e

    .line 4310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    if-eqz v0, :cond_c

    .line 4311
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    invoke-interface {v0, v6, v7}, Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;->onLongPressMultiSelectionEnded(II)V

    .line 4314
    :cond_c
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsFirstMultiSelectionMove:Z

    const/4 v0, -0x1

    .line 4315
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedViewPosition:I

    .line 4317
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartX:I

    .line 4318
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    .line 4319
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndX:I

    .line 4320
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    .line 4322
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    .line 4323
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    .line 4324
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    .line 4325
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 4327
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4328
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 4329
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    .line 4332
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4333
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4334
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v0, v2, :cond_d

    .line 4335
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4338
    :cond_d
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIsHoverOverscrolled:Z

    .line 4340
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4341
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 4347
    :cond_e
    :pswitch_5
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-ne v0, v1, :cond_15

    .line 4348
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 4349
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    invoke-interface {p1, p0}, Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;->onGoToTopClick(Landroid/support/v7/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_f

    return v2

    :cond_f
    const-string p1, "SeslRecyclerView"

    const-string v0, " can scroll top "

    .line 4352
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p1

    .line 4354
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    if-eqz v0, :cond_14

    .line 4355
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 4356
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_10

    .line 4357
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1, v4, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_5

    .line 4359
    :cond_10
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToping:Z

    if-lez p1, :cond_12

    .line 4360
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    if-ge p1, v0, :cond_12

    .line 4361
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_11

    .line 4362
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_4

    .line 4364
    :cond_11
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 4367
    :cond_12
    :goto_4
    new-instance p1, Landroid/support/v7/widget/RecyclerView$14;

    invoke-direct {p1, p0}, Landroid/support/v7/widget/RecyclerView$14;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 4374
    :goto_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz p1, :cond_13

    const/high16 p1, 0x43fa0000    # 500.0f

    .line 4375
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float v0, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/16 v1, 0x96

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslShowGoToTopEdge(FFI)V

    goto :goto_6

    :cond_13
    const-string p1, "SeslRecyclerView"

    const-string v0, " There is no mTopGlow"

    .line 4377
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    :cond_14
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->seslHideGoToTop()V

    .line 4382
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->playSoundEffect(I)V

    return v2

    .line 4385
    :cond_15
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    if-eqz v0, :cond_16

    .line 4386
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    .line 4387
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_16

    .line 4388
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4393
    :cond_16
    invoke-direct {p0, v6, v7}, Landroid/support/v7/widget/RecyclerView;->multiSelectionEnd(II)V

    goto :goto_7

    .line 4226
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4227
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    .line 4228
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mGoToToping:Z

    .line 4231
    :cond_17
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->isSupportGotoTop()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_18

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4232
    invoke-direct {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    .line 4233
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v6

    int-to-float v1, v7

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4234
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return v2

    .line 4238
    :cond_18
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    if-eqz v0, :cond_19

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v3, :cond_19

    .line 4239
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlMultiSelection:Z

    .line 4240
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsNeedPenSelection:Z

    move-object v5, p0

    .line 4241
    invoke-direct/range {v5 .. v10}, Landroid/support/v7/widget/RecyclerView;->multiSelection(IIIIZ)V

    return v2

    .line 4244
    :cond_19
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_1a

    .line 4245
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    .line 4399
    :cond_1a
    :goto_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd3
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
        0x10100a1
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 5843
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 5845
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 5847
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3, p1, p0, v4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5852
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5853
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5854
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/high16 v4, 0x43870000    # 270.0f

    .line 5855
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5856
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v4

    neg-int v4, v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5857
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 5858
    :goto_2
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    .line 5860
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5861
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5862
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_4

    .line 5863
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5865
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v3, v4

    .line 5866
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5868
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5869
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 5870
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    .line 5871
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    const/high16 v6, 0x42b40000    # 90.0f

    .line 5872
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v5, v5

    neg-int v4, v4

    int-to-float v4, v4

    .line 5873
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5874
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    or-int/2addr v3, v4

    .line 5875
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 5877
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0}, Landroid/support/v4/widget/SeslEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_c

    .line 5878
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/high16 v4, 0x43340000    # 180.0f

    .line 5879
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 5880
    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v4, :cond_a

    .line 5881
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_7

    .line 5883
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5885
    :goto_7
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/SeslEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_8

    :cond_b
    const/4 v4, 0x0

    :goto_8
    or-int/2addr v3, v4

    .line 5886
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v3, :cond_d

    .line 5892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 5893
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v3, 0x1

    :cond_d
    if-eqz v3, :cond_e

    .line 5898
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 5902
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_f

    .line 5903
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->drawGoToTop(Landroid/graphics/Canvas;)V

    .line 5908
    :cond_f
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenDragBlockEnabled:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    if-nez v0, :cond_16

    .line 5909
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    if-nez v0, :cond_10

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    if-nez v0, :cond_10

    goto :goto_b

    .line 5913
    :cond_10
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    .line 5914
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 5916
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-lt v2, v0, :cond_12

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    if-gt v2, v3, :cond_12

    .line 5918
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChildPosition:I

    sub-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    .line 5920
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 5921
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenTrackedChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 5923
    :cond_11
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDistanceFromTrackedChildTop:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    .line 5926
    :cond_12
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    if-ge v0, v1, :cond_13

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    goto :goto_9

    :cond_13
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    :goto_9
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    .line 5927
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    if-le v0, v1, :cond_14

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragEndY:I

    goto :goto_a

    :cond_14
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragStartY:I

    :goto_a
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    .line 5929
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockLeft:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockTop:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRight:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 5930
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 5931
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPenDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c

    :cond_15
    :goto_b
    return-void

    :cond_16
    :goto_c
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 6602
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 2988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2991
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    .line 2993
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 2995
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2996
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2997
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2996
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2999
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    .line 2939
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2942
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    .line 2944
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 2946
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2947
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2948
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2947
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2950
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    .line 2955
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2958
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    .line 2960
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 2962
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2963
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2964
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2963
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2966
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 2971
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    if-eqz v0, :cond_0

    return-void

    .line 2974
    :cond_0
    new-instance v0, Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    .line 2976
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p0}, Landroid/support/v4/widget/SeslEdgeEffect;->setSeslHostView(Landroid/view/View;)V

    .line 2978
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2979
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2980
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2979
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    goto :goto_0

    .line 2982
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/SeslEdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .locals 2

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 5358
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5359
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->access$5100(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/support/v7/widget/SeslOverScroller;

    move-result-object v0

    .line 5360
    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 5361
    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller;->getCurrY()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5363
    iput v0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 5364
    iput v0, p1, Landroid/support/v7/widget/RecyclerView$State;->mRemainingScrollVertical:I

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 5

    .line 6498
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 6500
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6501
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 6502
    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 6503
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_0

    .line 6504
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpg-float v2, p1, v4

    if-gtz v2, :cond_0

    .line 6505
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 6506
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 6282
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 6283
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 6284
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 6285
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 6300
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 6301
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 15290
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 15291
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0

    .line 15292
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 15293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 15304
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 15305
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    return v0

    .line 15306
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1

    .line 15307
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6411
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 6414
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6418
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6419
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6420
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 6421
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 6472
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 6475
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 6478
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6479
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    .line 6480
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    .line 6390
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 6367
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 6432
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 6435
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6436
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p2, :cond_0

    .line 6438
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 6441
    :cond_0
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_1

    goto :goto_1

    .line 6444
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    .line 2748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2749
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2753
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return v1

    .line 2757
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2758
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    .line 2760
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    if-eqz v2, :cond_4

    .line 2763
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    const/4 p2, 0x0

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    .line 2771
    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v5, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v6, 0x1

    .line 2773
    :goto_1
    invoke-virtual {p0, v3, v4, v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2775
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v3

    if-eqz v3, :cond_9

    return v5

    :cond_9
    if-eqz v6, :cond_c

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    :cond_a
    if-eqz v2, :cond_b

    or-int/lit8 v1, v1, 0x2

    .line 2787
    :cond_b
    invoke-virtual {p0, v1, v5}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2789
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2790
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2791
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    return v5

    :cond_c
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 10

    .line 3039
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3043
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3044
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3046
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    const/16 v4, 0x82

    const/4 v5, 0x0

    const/16 v6, 0x21

    if-eqz v0, :cond_e

    const/4 v7, 0x2

    if-eq p2, v7, :cond_2

    if-ne p2, v1, :cond_e

    .line 3052
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, v7, :cond_3

    const/16 v0, 0x82

    goto :goto_1

    :cond_3
    const/16 v0, 0x21

    .line 3055
    :goto_1
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    .line 3057
    :goto_2
    sget-boolean v9, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v9, :cond_6

    move p2, v0

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :cond_6
    :goto_3
    if-nez v8, :cond_b

    .line 3062
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3063
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-ne p2, v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    xor-int/2addr v0, v7

    if-eqz v0, :cond_9

    const/16 v0, 0x42

    goto :goto_6

    :cond_9
    const/16 v0, 0x11

    .line 3066
    :goto_6
    invoke-virtual {v3, p0, p1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_a

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    .line 3068
    :goto_7
    sget-boolean v1, Landroid/support/v7/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v1, :cond_b

    move p2, v0

    :cond_b
    if-eqz v8, :cond_d

    .line 3074
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 3075
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_c

    return-object v5

    .line 3080
    :cond_c
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3081
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v7}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    .line 3082
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3084
    :cond_d
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_8

    .line 3086
    :cond_e
    invoke-virtual {v3, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    if-eqz v0, :cond_10

    .line 3088
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 3089
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    return-object v5

    .line 3094
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 3096
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_8

    :cond_10
    move-object v0, v1

    :goto_8
    if-eqz v0, :cond_13

    .line 3099
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3100
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    if-ne p2, v6, :cond_11

    if-eqz p1, :cond_11

    .line 3102
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ge v1, v2, :cond_11

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_9

    .line 3111
    :cond_11
    invoke-direct {p0, v0, v5}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    return-object p1

    .line 3105
    :cond_12
    :goto_9
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3115
    :cond_13
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3116
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3120
    :cond_14
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsArrowKeyPressed:Z

    if-eqz p1, :cond_17

    if-nez v0, :cond_17

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of p1, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_17

    if-ne p2, v4, :cond_15

    .line 3124
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_a

    :cond_15
    if-ne p2, v6, :cond_16

    .line 3126
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_a

    :cond_16
    const/4 p1, 0x0

    .line 3128
    :goto_a
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {p2, p1, v1, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    .line 3129
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mIsArrowKeyPressed:Z

    :cond_17
    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .line 5995
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 5998
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 5996
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 6003
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 6006
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p1

    return-object p1

    .line 6004
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 6011
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 6014
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object p1

    return-object p1

    .line 6012
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .line 1677
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionFor(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const/16 v0, 0x20c

    .line 13037
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13039
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 13042
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    iget p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 1704
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    .line 1707
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2

    .line 5733
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, p1

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 0

    .line 6328
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6329
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 15036
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 15037
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result p1

    return p1

    .line 15039
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result p1

    return p1
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    .line 6354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6357
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6358
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_1
    return-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 0

    .line 6343
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6344
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6318
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 6259
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 6261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a direct child of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6264
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getClipToPadding()Z
    .locals 1

    .line 1547
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .line 1213
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 6664
    invoke-static {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    .line 5099
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    .line 6677
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 6678
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    .line 6679
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    .line 6682
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6684
    :cond_1
    iget-object p1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object p1

    .line 6686
    :cond_2
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 6687
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6688
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 6690
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 6691
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 6692
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 6693
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 6694
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 6695
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6697
    :cond_3
    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getItemDecorationAt(I)Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .locals 3

    .line 2069
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2074
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    return-object p1

    .line 2071
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .locals 1

    .line 2083
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 1928
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public final getLongPressMultiSelectionListener()Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;
    .locals 1

    .line 15815
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .line 2833
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .line 2823
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .locals 2

    .line 7426
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_0

    .line 7427
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Landroid/support/v7/widget/RecyclerView$OnFlingListener;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1830
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .locals 1

    .line 6231
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 1940
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1988
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .line 1518
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 13097
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1

    .line 13102
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result p1

    return p1
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .line 6805
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 6806
    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method initAdapterManager()V
    .locals 2

    .line 1416
    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$7;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$7;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    return-void
.end method

.method initFastScroller(Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 13055
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 13056
    new-instance v1, Landroid/support/v7/widget/FastScroller;

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_default_thickness:I

    .line 13058
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_minimum_range:I

    .line 13059
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v2, Landroid/support/v7/recyclerview/R$dimen;->fastscroll_margin:I

    .line 13060
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v9}, Landroid/support/v7/widget/FastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V

    return-void

    .line 13051
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Trying to set fast scroller without both required drawables."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13052
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 3004
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .line 6208
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6211
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 6212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 6215
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 6216
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .line 5021
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    .line 6026
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 3336
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .line 5055
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isInScrollingContainer()Z
    .locals 2

    .line 15127
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 15128
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 15129
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 15132
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .line 2690
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 15264
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 15266
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 13072
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .line 15120
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .locals 1

    .line 2220
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    .line 2223
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 2224
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    return-void
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 5833
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5835
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5836
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5838
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 6192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6194
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6195
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    .line 6196
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6199
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 6200
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    .line 6650
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6652
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    .line 6612
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6614
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    .line 6089
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 6091
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6092
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 6097
    invoke-virtual {v3, p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6098
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6101
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 6102
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9

    .line 6055
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, p2, :cond_0

    const/4 v2, -0x1

    move v2, p1

    move v3, p2

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    move v3, p1

    move v2, p2

    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_4

    .line 6068
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 6069
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v8, v2, :cond_3

    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v8, v3, :cond_1

    goto :goto_3

    .line 6076
    :cond_1
    iget v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v8, p1, :cond_2

    sub-int v8, p2, p1

    .line 6077
    invoke-virtual {v7, v8, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 6079
    :cond_2
    invoke-virtual {v7, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6082
    :goto_2
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v7, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 6084
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 6085
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    .line 6108
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 6110
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6111
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6112
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    .line 6118
    invoke-virtual {v3, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 6119
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v5, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_1

    .line 6120
    :cond_0
    iget v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    .line 6125
    invoke-virtual {v3, v4, v6, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 6127
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v5, v3, Landroid/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6131
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 6132
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 3271
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 3272
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    .line 3273
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 3274
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3275
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    .line 3276
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 3278
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3280
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_4

    .line 3282
    sget-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/GapWorker;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    .line 3283
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-nez v0, :cond_3

    .line 3284
    new-instance v0, Landroid/support/v7/widget/GapWorker;

    invoke-direct {v0}, Landroid/support/v7/widget/GapWorker;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    .line 3288
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    const/high16 v2, 0x42700000    # 60.0f

    .line 3290
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 3291
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v0, 0x42700000    # 60.0f

    .line 3296
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v0

    float-to-long v3, v3

    iput-wide v3, v2, Landroid/support/v7/widget/GapWorker;->mFrameIntervalNs:J

    .line 3297
    sget-object v0, Landroid/support/v7/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3299
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/GapWorker;->add(Landroid/support/v7/widget/RecyclerView;)V

    .line 3302
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_4

    .line 3303
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    :cond_4
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 3311
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 3312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 3313
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3315
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    const/4 v0, 0x0

    .line 3316
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 3317
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3318
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 3320
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3321
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0}, Landroid/support/v7/widget/ViewInfoStore;->onDetach()V

    .line 3324
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz v0, :cond_2

    .line 3326
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/GapWorker;->remove(Landroid/support/v7/widget/RecyclerView;)V

    const/4 v0, 0x0

    .line 3327
    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    :cond_2
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 5938
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 5941
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5942
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeHeight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5943
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeHeight:I

    sub-int/2addr v0, v1

    int-to-float v2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getRight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getBottom()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mStrokePaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5947
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5949
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .locals 1

    .line 4998
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    return-void
.end method

.method onExitLayoutOrScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 5002
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .locals 2

    .line 5006
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 5007
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5012
    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-eqz p1, :cond_0

    .line 5014
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 5015
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 4787
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4790
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return v1

    .line 4793
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_9

    const/4 v0, 0x1

    .line 4797
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    .line 4800
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 4801
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x9

    .line 4804
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 4808
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xa

    .line 4809
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    goto :goto_2

    .line 4813
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    const/high16 v5, 0x400000

    and-int/2addr v2, v5

    if-eqz v2, :cond_5

    const/16 v2, 0x1a

    .line 4814
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 4815
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    neg-float v2, v2

    goto :goto_1

    .line 4820
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v2

    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_1
    const/4 v5, 0x0

    :goto_2
    cmpl-float v6, v2, v4

    if-nez v6, :cond_7

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_9

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const/4 v3, 0x1

    .line 4833
    :goto_3
    invoke-virtual {p0, v3, v0}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 4834
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float v0, v0, v5

    float-to-int v7, v0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float v0, v0, v2

    float-to-int v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4836
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float v5, v5, v0

    float-to-int v0, v5

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2, p1}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_9
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 4422
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 4427
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4428
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    return v2

    .line 4432
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    .line 4436
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 4437
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz p1, :cond_3

    const/16 v4, 0x2002

    .line 4438
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 4440
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_4

    .line 4441
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4443
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 4446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 4449
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 4451
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v8, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_5

    return v2

    :cond_5
    const/high16 v8, 0x3f000000    # 0.5f

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 4564
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    .line 4500
    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4501
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 4502
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_8

    .line 4573
    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_8

    .line 4507
    :pswitch_4
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_6

    const-string p1, "SeslRecyclerView"

    .line 4509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4514
    :cond_6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    .line 4515
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v8

    float-to-int p1, p1

    .line 4518
    iget v4, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v4, v5

    .line 4519
    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v6, p1

    .line 4522
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v8, v2, :cond_b

    if-eqz v0, :cond_8

    .line 4524
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_8

    if-lez v4, :cond_7

    .line 4526
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v4, v8

    goto :goto_1

    .line 4528
    :cond_7
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v4, v8

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_8
    const/4 v8, 0x0

    :goto_2
    if-eqz v3, :cond_a

    .line 4532
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v9, v10, :cond_a

    if-lez v6, :cond_9

    .line 4534
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v6, v8

    goto :goto_3

    .line 4536
    :cond_9
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v6, v8

    :goto_3
    const/4 v8, 0x1

    :cond_a
    if-eqz v8, :cond_b

    .line 4541
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4545
    :cond_b
    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v8, v2, :cond_10

    .line 4546
    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v1

    sub-int/2addr v5, v8

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 4547
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v2

    sub-int/2addr p1, v5

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 4549
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    if-nez p1, :cond_e

    if-eqz v0, :cond_c

    move p1, v4

    goto :goto_4

    :cond_c
    const/4 p1, 0x0

    :goto_4
    if-eqz v3, :cond_d

    move v0, v6

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    invoke-virtual {p0, p1, v0, v7}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 4553
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4555
    :cond_e
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz p1, :cond_10

    if-nez v4, :cond_f

    if-eqz v6, :cond_10

    .line 4556
    :cond_f
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {p1, p0, v4, v6}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4559
    :cond_10
    invoke-direct {p0, v6}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_8

    .line 4568
    :pswitch_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 4569
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->stopNestedScroll(I)V

    goto :goto_8

    .line 4458
    :pswitch_6
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v5, :cond_11

    .line 4459
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 4461
    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4462
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 4463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 4466
    iget-boolean v5, p0, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    if-eqz v5, :cond_13

    const/16 v5, 0x4002

    .line 4467
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4468
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslPagingTouchSlop:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_6

    .line 4470
    :cond_12
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslTouchSlop:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 4477
    :cond_13
    :goto_6
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v5, 0x2

    if-ne p1, v5, :cond_14

    .line 4478
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4479
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4483
    :cond_14
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v5, v2

    aput v1, p1, v1

    .line 4485
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz p1, :cond_15

    .line 4486
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_15
    if-eqz v0, :cond_16

    const/4 p1, 0x1

    goto :goto_7

    :cond_16
    const/4 p1, 0x0

    :goto_7
    if-eqz v3, :cond_17

    or-int/lit8 p1, p1, 0x2

    .line 4496
    :cond_17
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    .line 4576
    :goto_8
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v2, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 15687
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 15688
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 15682
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 15683
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 15669
    :sswitch_2
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    goto :goto_0

    .line 15677
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15678
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    goto :goto_0

    .line 15672
    :sswitch_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 15673
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->pageScroll(I)Z

    .line 15692
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5c -> :sswitch_4
        0x5d -> :sswitch_3
        0x71 -> :sswitch_2
        0x72 -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    .line 15705
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    .line 15708
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    const-string p2, "RV OnLayout"

    .line 5778
    invoke-static {p2}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 5779
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 5780
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    const/4 p2, 0x1

    .line 5781
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 5783
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p3, :cond_0

    .line 5784
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result p4

    iget-object p5, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p5

    invoke-virtual {p3, p4, p5}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onItemCountChanged(II)V

    :cond_0
    if-eqz p1, :cond_4

    .line 5788
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mSizeChnage:Z

    const/4 p1, -0x1

    .line 5789
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    .line 5790
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    const/4 p1, 0x0

    .line 5792
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    .line 5793
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_3

    .line 5794
    instance-of p4, p3, Landroid/view/ViewGroup;

    if-eqz p4, :cond_3

    .line 5795
    instance-of p4, p3, Landroid/support/v4/view/NestedScrollingParent2;

    if-eqz p4, :cond_2

    .line 5797
    check-cast p3, Landroid/view/ViewGroup;

    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 5798
    iget-object p4, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget p4, p4, p2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    add-int/2addr p4, p3

    .line 5801
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView;->getLocationInWindow([I)V

    .line 5802
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mWindowOffsets:[I

    aget p3, p3, p2

    iput p3, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 5803
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p3

    iget p5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    sub-int/2addr p4, p5

    sub-int/2addr p3, p4

    iput p3, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 5805
    iget p3, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    if-gez p3, :cond_1

    .line 5806
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 5808
    :cond_1
    iget p3, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    iput p3, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    .line 5809
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    goto :goto_1

    .line 5812
    :cond_2
    invoke-interface {p3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    goto :goto_0

    .line 5815
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-nez p2, :cond_4

    .line 5816
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTopOffsetOfScreen:I

    .line 5817
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mRemainNestedScrollRange:I

    .line 5818
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mNestedScrollRange:I

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 4846
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 4847
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    .line 4852
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    .line 4853
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4854
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 4855
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 4856
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 4859
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 4860
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4861
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4870
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_4

    .line 4874
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_2

    goto :goto_0

    .line 4878
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v0, v1, :cond_3

    .line 4879
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 4883
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 4884
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4885
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 4888
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 4892
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 4893
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 4894
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 4895
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 4893
    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 4896
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4897
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 4899
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_4

    :cond_4
    :goto_0
    return-void

    .line 4902
    :cond_5
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_6

    .line 4903
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    return-void

    .line 4907
    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_8

    .line 4908
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4909
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4910
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 4911
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4913
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_7

    .line 4914
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_1

    .line 4917
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 4918
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 4920
    :goto_1
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 4921
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_2

    .line 4922
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_9

    .line 4928
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void

    .line 4932
    :cond_9
    :goto_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_a

    .line 4933
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_3

    .line 4935
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v2, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 4937
    :goto_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4938
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 4939
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4940
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput-boolean v2, p1, Landroid/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    :cond_b
    :goto_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 3261
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3266
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1849
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    if-nez v0, :cond_0

    .line 1850
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1854
    :cond_0
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1855
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1856
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz p1, :cond_1

    .line 1857
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1835
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1836
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1837
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->copyFrom(Landroid/support/v7/widget/RecyclerView$SavedState;)V

    goto :goto_0

    .line 1838
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1839
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1841
    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 4963
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 4965
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 4969
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_2

    .line 4970
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onSizeChanged(IIII)V

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 4591
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_0

    goto/16 :goto_b

    .line 4594
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4595
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    return v2

    .line 4599
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_2

    return v1

    .line 4604
    :cond_2
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    .line 4607
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 4608
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 4610
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_3

    .line 4611
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4615
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 4616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    .line 4617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    if-nez v5, :cond_4

    .line 4620
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v8, v2

    aput v1, v7, v1

    .line 4622
    :cond_4
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4625
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v7, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4626
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    if-eqz v0, :cond_7

    .line 4627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    .line 4628
    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-ne v0, v2, :cond_6

    .line 4629
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;->onPressed(F)V

    goto :goto_0

    .line 4630
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_7

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    .line 4631
    invoke-virtual {p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getEffectState()I

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-nez p1, :cond_7

    .line 4632
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getScrollY()F

    move-result v0

    invoke-interface {p1, v0}, Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;->onReleased(F)V

    .line 4635
    :cond_7
    :goto_0
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_8
    const/high16 v7, 0x3f000000    # 0.5f

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_a

    .line 4730
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 4660
    :pswitch_2
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4661
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 4662
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_a

    .line 4749
    :pswitch_3
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_a

    .line 4666
    :pswitch_4
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_9

    const-string p1, "SeslRecyclerView"

    .line 4668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4673
    :cond_9
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 4674
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    .line 4675
    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v5, v6

    .line 4676
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v13, v7, p1

    .line 4678
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    iget-object v11, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    const/4 v12, 0x0

    move-object v7, p0

    move v8, v5

    move v9, v13

    invoke-virtual/range {v7 .. v12}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4679
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v7, v7, v1

    sub-int/2addr v5, v7

    .line 4680
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v7, v7, v2

    sub-int/2addr v13, v7

    .line 4681
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v1

    int-to-float v7, v7

    iget-object v8, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v2

    int-to-float v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4683
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v1

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v9, v1

    add-int/2addr v8, v9

    aput v8, v7, v1

    .line 4684
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v8, v7, v2

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v9, v9, v2

    add-int/2addr v8, v9

    aput v8, v7, v2

    .line 4685
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollConsumed:[I

    aget v7, v7, v2

    invoke-direct {p0, v7}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    goto :goto_1

    .line 4687
    :cond_a
    invoke-direct {p0, v13}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRangeBy(I)V

    .line 4690
    :goto_1
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-eq v7, v2, :cond_f

    if-eqz v0, :cond_c

    .line 4692
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v7, v8, :cond_c

    if-lez v5, :cond_b

    .line 4694
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v5, v7

    goto :goto_2

    .line 4696
    :cond_b
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v5, v7

    :goto_2
    const/4 v7, 0x1

    goto :goto_3

    :cond_c
    const/4 v7, 0x0

    :goto_3
    if-eqz v3, :cond_e

    .line 4700
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v8, v9, :cond_e

    if-lez v13, :cond_d

    .line 4702
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    sub-int/2addr v13, v7

    goto :goto_4

    .line 4704
    :cond_d
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v13, v7

    :goto_4
    const/4 v7, 0x1

    :cond_e
    if-eqz v7, :cond_f

    .line 4709
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 4713
    :cond_f
    iget v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne v7, v2, :cond_1c

    .line 4714
    iget-object v7, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v7, v7, v1

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 4715
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v6, v6, v2

    sub-int/2addr p1, v6

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 4717
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopMoved:Z

    if-nez p1, :cond_12

    if-eqz v0, :cond_10

    move p1, v5

    goto :goto_5

    :cond_10
    const/4 p1, 0x0

    :goto_5
    if-eqz v3, :cond_11

    move v0, v13

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, p1, v0, v4}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 4721
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4723
    :cond_12
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    if-eqz p1, :cond_1c

    if-nez v5, :cond_13

    if-eqz v13, :cond_1c

    .line 4724
    :cond_13
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGapWorker:Landroid/support/v7/widget/GapWorker;

    invoke-virtual {p1, p0, v5, v13}, Landroid/support/v7/widget/GapWorker;->postFromTraversal(Landroid/support/v7/widget/RecyclerView;II)V

    goto/16 :goto_a

    .line 4734
    :pswitch_5
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4736
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 p1, 0x0

    if-eqz v0, :cond_14

    .line 4737
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4738
    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    :goto_7
    if-eqz v3, :cond_15

    .line 4739
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4740
    invoke-virtual {v3, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    goto :goto_8

    :cond_15
    const/4 v3, 0x0

    :goto_8
    cmpl-float v5, v0, p1

    if-nez v5, :cond_16

    cmpl-float p1, v3, p1

    if-eqz p1, :cond_17

    :cond_16
    float-to-int p1, v0

    float-to-int v0, v3

    .line 4741
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    if-nez p1, :cond_18

    .line 4742
    :cond_17
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    :cond_18
    const-string p1, "SeslRecyclerView"

    .line 4744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchUp() velocity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4745
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->resetTouch()V

    const/4 v1, 0x1

    goto :goto_a

    .line 4641
    :pswitch_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 4642
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v5, v7

    float-to-int v5, v5

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v5, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 4643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    add-float/2addr p1, v7

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 4645
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasNestedScrollRange:Z

    if-eqz p1, :cond_19

    .line 4646
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->adjustNestedScrollRange()V

    :cond_19
    if-eqz v0, :cond_1a

    const/4 p1, 0x1

    goto :goto_9

    :cond_1a
    const/4 p1, 0x0

    :goto_9
    if-eqz v3, :cond_1b

    or-int/lit8 p1, p1, 0x2

    .line 4656
    :cond_1b
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->startNestedScroll(II)Z

    :cond_1c
    :goto_a
    if-nez v1, :cond_1d

    .line 4754
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1, v4}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4756
    :cond_1d
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    return v2

    :cond_1e
    :goto_b
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method postAnimationRunner()V
    .locals 1

    .line 5107
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 5108
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 5109
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .locals 1

    .line 6182
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    const/4 p1, 0x1

    .line 6183
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 6184
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 5666
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5667
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5668
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5669
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 5670
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Landroid/support/v7/widget/ViewInfoStore;->addToOldChangeHolders(JLandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5672
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/ViewInfoStore;->addToPreLayout(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method removeAndRecycleViews()V
    .locals 2

    .line 1623
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1630
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1632
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1635
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .locals 2

    .line 1906
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1907
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 1910
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 1911
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    xor-int/lit8 p1, v0, 0x1

    .line 1917
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 2

    .line 5709
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5711
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5712
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    .line 5713
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5714
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5715
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5722
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 5724
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 5725
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 2

    .line 2110
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2111
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2114
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2115
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2116
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 2118
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2119
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public removeItemDecorationAt(I)V
    .locals 3

    .line 2092
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 2097
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->getItemDecorationAt(I)Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    return-void

    .line 2094
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid index for size "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    .line 1735
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1738
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1

    .line 3807
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3808
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 3809
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 2177
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method repositionShadowingViews()V
    .locals 7

    .line 7095
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7097
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 7098
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 7099
    iget-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_1

    .line 7100
    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 7101
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 7102
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 7103
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v2, v5, :cond_1

    .line 7105
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v4

    .line 7106
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 7104
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/view/View;->layout(IIII)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 3204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3205
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 3207
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    .line 3249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    .line 4581
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4583
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 4584
    invoke-interface {v2, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4586
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 5825
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 5826
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5828
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :goto_0
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .line 6030
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6032
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 6037
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6038
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 3

    .line 2262
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2263
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2267
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return-void

    .line 2270
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2271
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    const/4 v0, 0x0

    .line 2273
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    .line 2355
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2356
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    .line 2357
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2358
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->onEnterLayoutOrScroll()V

    const-string v0, "RV Scroll"

    .line 2359
    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2360
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->fillRemainingScrollValues(Landroid/support/v7/widget/RecyclerView$State;)V

    if-eqz v8, :cond_0

    .line 2362
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v8, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    sub-int v1, v8, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v9, :cond_1

    .line 2366
    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, v7, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, v9, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    sub-int v3, v9, v2

    .line 2369
    iget v4, v7, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    if-nez v4, :cond_2

    .line 2370
    invoke-direct {v7, v11}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    .line 2371
    invoke-direct {v7, v11}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2375
    :cond_2
    :goto_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 2376
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->repositionShadowingViews()V

    .line 2377
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2378
    invoke-virtual {v7, v12}, Landroid/support/v7/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    move v14, v0

    move v6, v1

    move v15, v2

    move v13, v3

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 2380
    :goto_2
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2381
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2386
    :cond_4
    iget-boolean v0, v7, Landroid/support/v7/widget/RecyclerView;->mIsMouseWheel:Z

    if-eqz v0, :cond_5

    if-gez v13, :cond_5

    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    :goto_3
    if-eqz v10, :cond_6

    const/16 v1, 0x2002

    .line 2391
    invoke-static {v10, v1}, Landroid/support/v4/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    const/16 v16, 0x0

    :goto_4
    const/4 v5, 0x2

    if-eqz v0, :cond_9

    .line 2392
    iget-object v4, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move v3, v6

    move-object/from16 v17, v4

    move v4, v13

    move-object/from16 v5, v17

    move/from16 v18, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2395
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v12

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 2396
    iget v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v11

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    if-eqz v10, :cond_7

    .line 2398
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v12

    int-to-float v0, v0

    iget-object v1, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v1, v1, v11

    int-to-float v1, v1

    invoke-virtual {v10, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2400
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v11

    if-nez v0, :cond_7

    if-nez v16, :cond_7

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 2402
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    move/from16 v2, v18

    int-to-float v1, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v13

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 2403
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 2408
    :cond_7
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v12

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v12

    add-int/2addr v1, v2

    aput v1, v0, v12

    .line 2409
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v11

    iget-object v2, v7, Landroid/support/v7/widget/RecyclerView;->mScrollOffset:[I

    aget v2, v2, v11

    add-int/2addr v1, v2

    aput v1, v0, v11

    goto :goto_6

    :cond_8
    move/from16 v2, v18

    goto :goto_5

    :cond_9
    move v2, v6

    :goto_5
    const/4 v1, 0x2

    .line 2410
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    if-eq v0, v1, :cond_b

    if-eqz v10, :cond_a

    if-nez v16, :cond_a

    .line 2412
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v1, v2

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v13

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->pullGlows(FFFF)V

    .line 2414
    :cond_a
    invoke-virtual/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    :cond_b
    :goto_6
    if-nez v14, :cond_c

    if-eqz v15, :cond_d

    .line 2417
    :cond_c
    invoke-virtual {v7, v14, v15}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 2419
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2420
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 2423
    :cond_e
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    .line 2424
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2425
    :cond_f
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_10
    if-nez v14, :cond_11

    if-eqz v15, :cond_12

    :cond_11
    const/4 v12, 0x1

    :cond_12
    return v12
.end method

.method public scrollTo(II)V
    .locals 0

    const-string p1, "SeslRecyclerView"

    const-string p2, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    .line 2256
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 3

    .line 2200
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    .line 2203
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 2204
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p1, "SeslRecyclerView"

    const-string v0, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2205
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2209
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 2210
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 2213
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    .line 2214
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    :cond_2
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 5083
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5086
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public seslFindNearChildViewUnder(FF)Landroid/view/View;
    .locals 12

    .line 6523
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float v2, p1, v1

    float-to-int v2, v2

    add-float/2addr v1, p2

    float-to-int v1, v1

    add-int/lit8 v0, v0, -0x1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move v4, v0

    move v7, v1

    const/4 v5, 0x0

    const v6, 0x7fffffff

    :goto_0
    if-ltz v4, :cond_2

    .line 6532
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 6534
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 6535
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v9, v8

    .line 6536
    div-int/lit8 v9, v9, 0x2

    if-ne v5, v9, :cond_0

    goto :goto_1

    :cond_0
    sub-int v5, v1, v9

    .line 6541
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v6, :cond_2

    move v6, v5

    move v5, v9

    move v7, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    move v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ltz v1, :cond_9

    .line 6558
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 6560
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 6561
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    .line 6562
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 6563
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-ne v1, v0, :cond_3

    sub-int v3, v2, v11

    .line 6568
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, v2, v8

    .line 6569
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v0

    move v6, v5

    :cond_3
    if-lt v7, v9, :cond_5

    if-gt v7, v10, :cond_5

    sub-int v9, v2, v11

    .line 6574
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int v8, v2, v8

    .line 6575
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v9, v3, :cond_4

    move v5, v1

    move v3, v9

    :cond_4
    if-gt v8, v4, :cond_5

    move v6, v1

    move v4, v8

    :cond_5
    if-gt v7, v10, :cond_6

    if-nez v1, :cond_8

    :cond_6
    if-ge v3, v4, :cond_7

    .line 6588
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 6590
    :cond_7
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {p1, v6}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    const-string v0, "SeslRecyclerView"

    .line 6595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNearChildViewUnder didn\'t find valid child view! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public seslGetGoToTopBottomPadding()I
    .locals 1

    .line 3768
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    return v0
.end method

.method public seslGetHoverBottomPadding()I
    .locals 1

    .line 3752
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    return v0
.end method

.method public seslGetHoverTopPadding()I
    .locals 1

    .line 3760
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    return v0
.end method

.method public final seslGetOnMultiSelectedListener()Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;
    .locals 1

    .line 15754
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    return-object v0
.end method

.method public seslHideGoToTop()V
    .locals 2

    const/4 v0, 0x0

    .line 4415
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    .line 4416
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public seslInitConfigurations(Landroid/content/Context;)V
    .locals 4

    .line 1170
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1172
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 1175
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mSeslTouchSlop:I

    .line 1176
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mSeslPagingTouchSlop:I

    .line 1179
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 1181
    invoke-static {v0, p1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 1182
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 1183
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 1187
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41c80000    # 25.0f

    const/4 v2, 0x1

    .line 1185
    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    .line 1190
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 1188
    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    add-float/2addr p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    .line 1191
    sget p1, Landroid/support/v7/recyclerview/R$dimen;->sesl_go_to_top_scrollable_view_gap:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    .line 1192
    sget p1, Landroid/support/v7/recyclerview/R$dimen;->sesl_go_to_top_scrollable_view_size:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopSize:I

    .line 1193
    sget p1, Landroid/support/v7/recyclerview/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mNavigationBarHeight:I

    .line 1194
    sget p1, Landroid/support/v7/recyclerview/R$dimen;->sesl_round_stroke_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mStrokeHeight:I

    return-void
.end method

.method public seslIsFastScrollerEnabled()Z
    .locals 1

    .line 15110
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    return v0
.end method

.method public seslIsPagingTouchSlopForStylusEnabled()Z
    .locals 1

    .line 15871
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    return v0
.end method

.method public seslSetCtrlkeyPressed(Z)V
    .locals 0

    .line 3872
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsCtrlKeyPressed:Z

    return-void
.end method

.method public seslSetFastScrollerEnabled(Z)V
    .locals 2

    .line 15088
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz v0, :cond_0

    .line 15089
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 15091
    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;-><init>(Landroid/support/v7/widget/RecyclerView;I)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    .line 15092
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setEnabled(Z)V

    .line 15093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 15096
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEnabled:Z

    .line 15098
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    if-eqz p1, :cond_2

    .line 15099
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScroller:Landroid/support/v7/widget/SeslRecyclerViewFastScroller;

    invoke-virtual {p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_2
    return-void
.end method

.method public seslSetFastScrollerEventListener(Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;)V
    .locals 0

    .line 15165
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mFastScrollerEventListener:Landroid/support/v7/widget/RecyclerView$SeslFastScrollerEventListener;

    return-void
.end method

.method public seslSetFillBottomColor(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 3533
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3534
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez v0, :cond_0

    .line 3535
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCornerColor(II)V

    :cond_0
    return-void
.end method

.method public seslSetFillBottomEnabled(Z)V
    .locals 2

    .line 3523
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 3524
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    .line 3525
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez p1, :cond_0

    .line 3526
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/recyclerview/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 3528
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seslSetGoToTopBottomPadding(I)V
    .locals 1

    .line 3772
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopBottomPadding:I

    .line 3773
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    .line 3774
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    .line 3775
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    :cond_0
    return-void
.end method

.method public seslSetGoToTopEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3409
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->seslSetGoToTopEnabled(ZZ)V

    return-void
.end method

.method public seslSetGoToTopEnabled(ZZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 3412
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImageLight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$drawable;->sesl_list_go_to_top_dark:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    .line 3413
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    .line 3414
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    .line 3416
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 p1, 0x2

    .line 3417
    new-array p2, p1, [I

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 3418
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x14d

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3419
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v6, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v6, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3421
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/support/v7/widget/RecyclerView$8;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$8;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3433
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 3434
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3435
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    invoke-direct {p2, v6, v5, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3437
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/support/v7/widget/RecyclerView$9;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/RecyclerView$9;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3449
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/support/v7/widget/RecyclerView$10;

    invoke-direct {p2, p0}, Landroid/support/v7/widget/RecyclerView$10;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public seslSetHoverBottomPadding(I)V
    .locals 0

    .line 3756
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverBottomAreaHeight:I

    return-void
.end method

.method public seslSetHoverScrollEnabled(Z)V
    .locals 0

    .line 15281
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollEnable:Z

    const/4 p1, 0x1

    .line 15282
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverScrollStateChanged:Z

    return-void
.end method

.method public seslSetHoverTopPadding(I)V
    .locals 0

    .line 3764
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mHoverTopAreaHeight:I

    return-void
.end method

.method public seslSetLastItemOutlineStrokeEnabled(Z)V
    .locals 1

    .line 3512
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 3513
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastItemOutlineStoke:Z

    .line 3514
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public seslSetLastOutlineStrokeEnabled(Z)V
    .locals 0

    .line 3519
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    return-void
.end method

.method public seslSetLongPressMultiSelectionListener(Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;)V
    .locals 0

    .line 15807
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLongPressMultiSelectionListener:Landroid/support/v7/widget/RecyclerView$SeslLongPressMultiSelectionListener;

    return-void
.end method

.method public seslSetOnGoToTopClickListener(Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;)V
    .locals 0

    .line 3780
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslOnGoToTopClickListener:Landroid/support/v7/widget/RecyclerView$SeslOnGoToTopClickListener;

    return-void
.end method

.method public seslSetOnMultiSelectedListener(Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;)V
    .locals 0

    .line 15746
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnMultiSelectedListener:Landroid/support/v7/widget/RecyclerView$SeslOnMultiSelectedListener;

    return-void
.end method

.method public seslSetOutlineStrokeEnabled(Z)V
    .locals 0

    .line 3490
    invoke-virtual {p0, p1, p1}, Landroid/support/v7/widget/RecyclerView;->seslSetOutlineStrokeEnabled(ZZ)V

    return-void
.end method

.method public seslSetOutlineStrokeEnabled(ZZ)V
    .locals 1

    .line 3494
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v0, v0, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 3495
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    .line 3496
    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    .line 3497
    new-instance p1, Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    .line 3498
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mSeslRoundedCorner:Landroid/support/v7/util/SeslSubheaderRoundedCorner;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/support/v7/util/SeslSubheaderRoundedCorner;->setRoundedCorners(I)V

    .line 3499
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawWhiteTheme:Z

    if-nez p1, :cond_0

    .line 3500
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$color;->sesl_round_and_bgcolor_dark:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3502
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public seslSetPagingTouchSlopForStylus(Z)V
    .locals 0

    .line 15862
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mUsePagingTouchSlopForStylus:Z

    return-void
.end method

.method public seslSetPenSelectionEnabled(Z)V
    .locals 0

    .line 15764
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsPenSelectionEnabled:Z

    return-void
.end method

.method public seslSetRegulationEnabled(Z)V
    .locals 1

    .line 15835
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    if-eqz v0, :cond_0

    .line 15836
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->access$5100(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/support/v7/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller;->setRegulationEnabled(Z)V

    :cond_0
    return-void
.end method

.method public seslSetSmoothScrollEnabled(Z)V
    .locals 1

    .line 15825
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    if-eqz v0, :cond_0

    .line 15826
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->access$5100(Landroid/support/v7/widget/RecyclerView$ViewFlinger;)Landroid/support/v7/widget/SeslOverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    :cond_0
    return-void
.end method

.method public seslShowGoToTopEdge(FFI)V
    .locals 1

    .line 4407
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 4408
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/SeslEdgeEffect;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/SeslEdgeEffect;->onPullCallOnRelease(FFI)V

    .line 4409
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x1f4

    invoke-virtual {p0, p2, p2, p1, p3}, Landroid/support/v7/widget/RecyclerView;->invalidate(IIII)V

    return-void
.end method

.method public seslStartLongPressMultiSelection()V
    .locals 1

    const/4 v0, 0x1

    .line 3863
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 0

    .line 1222
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 1223
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, p1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 1612
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v1, 0x1

    .line 1613
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 1614
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1615
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    .line 2135
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    .line 2138
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 2139
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method setChildImportantForAccessibilityInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 13010
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13011
    iput p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 13012
    iget-object p2, p0, Landroid/support/v7/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1

    .line 13015
    :cond_0
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setClipToPadding(Z)V
    .locals 1

    .line 1523
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 1524
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 1526
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 1527
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1528
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz p1, :cond_1

    .line 1529
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    .line 1510
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 2

    .line 4987
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 4988
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 4989
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 4991
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 4992
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz p1, :cond_1

    .line 4993
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    .line 1978
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 9

    .line 2663
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    .line 2664
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2666
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2667
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 2668
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2670
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_0

    .line 2672
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 2673
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 2675
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    .line 2676
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    .line 2677
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2678
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 4

    .line 1764
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    .line 1768
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 1769
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawRect:Z

    .line 1770
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawOutlineStroke:Z

    .line 1771
    iget-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mDrawLastOutLineStroke:Z

    .line 1773
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1776
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_6

    .line 1778
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_4

    .line 1779
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1781
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1782
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1785
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_5

    .line 1786
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1788
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1789
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    goto :goto_3

    .line 1791
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1794
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1795
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_8

    .line 1797
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_7

    .line 1802
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 1803
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz p1, :cond_8

    .line 1804
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_4

    .line 1798
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1800
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1807
    :cond_8
    :goto_4
    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1808
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    .line 13067
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnFlingListener(Landroid/support/v7/widget/RecyclerView$OnFlingListener;)V
    .locals 0
    .param p1    # Landroid/support/v7/widget/RecyclerView$OnFlingListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1820
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mOnFlingListener:Landroid/support/v7/widget/RecyclerView$OnFlingListener;

    return-void
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2152
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .locals 0

    .line 6249
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    .line 1691
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method setScrollState(I)V
    .locals 3

    .line 1992
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SeslRecyclerView"

    .line 1996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting scroll state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 2004
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 2006
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 2010
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mGlowByDragging:Z

    :cond_2
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4

    .line 1560
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const-string v1, "SeslRecyclerView"

    .line 1562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): slopConstant["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1563
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetPagingTouchSlopForStylus(Z)V

    packed-switch p1, :pswitch_data_0

    const-string v1, "SeslRecyclerView"

    .line 1567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; using default value"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1575
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_1

    .line 1571
    :goto_0
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1

    .line 1963
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 5067
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 5070
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 5075
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method showGoToTop()V
    .locals 2

    .line 3481
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3482
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setupGoToTop(I)V

    .line 3483
    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->autoHide(I)V

    :cond_0
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2700
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .locals 2

    .line 2712
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string p1, "SeslRecyclerView"

    const-string p2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2713
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2717
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return-void

    .line 2720
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 2723
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    .line 2727
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2729
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->showGoToTop()V

    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    .line 2243
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    .line 2246
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string p1, "SeslRecyclerView"

    const-string v0, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    .line 2247
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2251
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    return-void
.end method

.method startInterceptRequestLayout()V
    .locals 2

    .line 2590
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2591
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2592
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    :cond_0
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    .line 13077
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result p1

    return p1
.end method

.method public startNestedScroll(II)Z
    .locals 1

    .line 13082
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result p1

    return p1
.end method

.method stopInterceptRequestLayout(Z)V
    .locals 3

    .line 2607
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2614
    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2616
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 2625
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2627
    :cond_1
    iget v2, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_3

    if-eqz p1, :cond_2

    .line 2629
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_2

    .line 2631
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 2633
    :cond_2
    iget-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez p1, :cond_3

    .line 2634
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2637
    :cond_3
    iget p1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr p1, v1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    return-void
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 13087
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 1

    .line 13092
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    .line 2803
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 2804
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutFrozen(Z)V

    const/4 v0, 0x1

    .line 1597
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 1598
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1599
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 3542
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

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

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 6

    .line 6142
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6146
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6147
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6148
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 6151
    :cond_0
    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_1

    iget v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_1

    const/4 v5, 0x2

    .line 6154
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6155
    invoke-virtual {v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 6157
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6160
    :cond_2
    iget-object p3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p3, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
