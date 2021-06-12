.class Landroid/support/v7/widget/SeslRecyclerViewFastScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DURATION_CROSS_FADE:I = 0x0

.field private static final DURATION_FADE_IN:I = 0xa7

.field private static final DURATION_FADE_OUT:I = 0xa7

.field private static final DURATION_RESIZE:I = 0x64

.field public static final EFFECT_STATE_CLOSE:I = 0x0

.field public static final EFFECT_STATE_OPEN:I = 0x1

.field private static final FADE_TIMEOUT:J = 0x9c4L

.field private static LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_PAGES:I = 0x1

.field private static final OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final PREVIEW_LEFT:I = 0x0

.field private static final PREVIEW_RIGHT:I = 0x1

.field private static RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslFastScroller"

.field private static final TAP_TIMEOUT:J

.field private static final THUMB_POSITION_INSIDE:I = 0x1

.field private static final THUMB_POSITION_MIDPOINT:I

.field private static TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalBottomPadding:I

.field private mAdditionalTouchArea:F

.field private mAlwaysShow:Z

.field private mColorPrimary:I

.field private final mContainerRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCurrentSection:I

.field private mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final mDeferHide:Ljava/lang/Runnable;

.field private mEffectState:I

.field private mEnabled:Z

.field private mFirstVisibleItem:I

.field private mHeaderCount:I

.field private mInitialTouchY:F

.field private mLayoutFromRight:Z

.field private mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOldChildCount:I

.field private mOldItemCount:I

.field private mOldThumbPosition:F

.field private mOrientation:I

.field private final mOverlay:Landroid/view/ViewGroupOverlay;

.field private mOverlayPosition:I

.field private mPendingDrag:J

.field private mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final mPreviewImage:Landroid/view/View;

.field private mPreviewMarginEnd:I

.field private mPreviewMinHeight:I

.field private mPreviewMinWidth:I

.field private mPreviewPadding:I

.field private final mPreviewResId:[I

.field private final mPrimaryText:Landroid/widget/TextView;

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mScaledTouchSlop:I

.field private mScrollBarStyle:I

.field private mScrollCompleted:Z

.field private mScrollY:F

.field private mScrollbarPosition:I

.field private final mSecondaryText:Landroid/widget/TextView;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSections:[Ljava/lang/Object;

.field private mShowingPreview:Z

.field private mShowingPrimary:Z

.field private mState:I

.field private final mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final mTempBounds:Landroid/graphics/Rect;

.field private final mTempMargins:Landroid/graphics/Rect;

.field private mTextAppearance:I

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTextSize:F

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final mThumbImage:Landroid/widget/ImageView;

.field private mThumbMarginEnd:I

.field private mThumbMinHeight:I

.field private mThumbMinWidth:I

.field private mThumbOffset:F

.field private mThumbPosition:I

.field private mThumbRange:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTrackImage:Landroid/widget/ImageView;

.field private mTrackPadding:I

.field private mUpdatingLayout:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    .line 1684
    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$3;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    .line 1700
    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$4;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    .line 1716
    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    .line 1732
    new-instance v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$6;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 123
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    const/4 v0, -0x1

    .line 178
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 181
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const-wide/16 v1, -0x1

    .line 233
    iput-wide v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 239
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    const/4 v1, 0x0

    .line 244
    iput v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 248
    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 250
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 255
    new-instance v2, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$1;-><init>(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 265
    new-instance v2, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller$2;-><init>(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 273
    iput-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 274
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 275
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    .line 277
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    .line 278
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    .line 279
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollBarStyle()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/4 v2, 0x1

    .line 281
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 282
    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 283
    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    .line 285
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 286
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 287
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 288
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 290
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 293
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setStyle(I)V

    .line 295
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p2

    .line 296
    iput-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 298
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 300
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 301
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 303
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroll_preview_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    .line 304
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroll_thumb_margin_end:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    .line 305
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroll_additional_touch_area:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    .line 306
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroller_track_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    .line 307
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroid/support/v7/recyclerview/R$dimen;->sesl_fast_scroller_additional_bottom_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    .line 309
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {p2, v0, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 310
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    invoke-virtual {p2, v0, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 312
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 313
    iget p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    invoke-direct {p0, p2, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    .line 314
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getVerticalScrollbarPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setScrollbarPosition(I)V

    .line 315
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static synthetic access$102(Landroid/support/v7/widget/SeslRecyclerViewFastScroller;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    return p1
.end method

.method private static animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1677
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x4

    .line 1748
    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->LEFT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->left:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 1749
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    aput v4, v3, v5

    .line 1750
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->RIGHT:Landroid/util/Property;

    new-array v3, v2, [I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    aput v4, v3, v5

    .line 1751
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v2, v2, [I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    aput p1, v2, v5

    .line 1752
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 1748
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private static animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3

    .line 1670
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 628
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 629
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private beginDrag()V
    .locals 2

    const-string v0, "SeslFastScroller"

    const-string v1, "beginDrag() !!!"

    .line 1413
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    .line 1414
    iput-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    .line 1416
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 1417
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    .line 1420
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1422
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelFling()V

    const/4 v0, 0x2

    .line 1423
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method private cancelFling()V
    .locals 8

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1389
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1391
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1392
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private cancelPendingDrag()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1401
    iput-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    return-void
.end method

.method private createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 2

    .line 571
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 573
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 574
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 575
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 576
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 p1, 0x11

    .line 577
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 578
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 581
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutDirection()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutDirection(I)V

    return-object v1
.end method

.method private getPosFromItemCount(III)F
    .locals 9

    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    .line 1291
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getSectionsFromIndexer()V

    :cond_1
    const/4 v1, 0x0

    if-eqz p2, :cond_10

    if-nez p3, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1299
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length v4, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_d

    .line 1300
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mMatchDragPosition:Z

    if-nez v4, :cond_4

    goto/16 :goto_7

    .line 1317
    :cond_4
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    sub-int/2addr p1, v4

    if-gez p1, :cond_5

    return v1

    .line 1321
    :cond_5
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    sub-int/2addr p3, v4

    .line 1324
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1326
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 1329
    :cond_6
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v4, v2

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v2, 0x0

    .line 1333
    :goto_2
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 1334
    invoke-interface {v0, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    .line 1335
    iget-object v7, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    array-length v7, v7

    add-int/lit8 v8, v7, -0x1

    if-ge v4, v8, :cond_9

    add-int/lit8 v8, v4, 0x1

    if-ge v8, v7, :cond_8

    .line 1340
    invoke-interface {v0, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_3

    :cond_8
    add-int/lit8 v0, p3, -0x1

    :goto_3
    sub-int/2addr v0, v6

    goto :goto_4

    :cond_9
    sub-int v0, p3, v6

    :goto_4
    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    int-to-float v1, p1

    add-float/2addr v1, v2

    int-to-float v2, v6

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    :goto_5
    int-to-float v0, v4

    add-float/2addr v0, v1

    int-to-float v1, v7

    div-float/2addr v0, v1

    if-lez p1, :cond_c

    add-int/2addr p1, p2

    if-ne p1, p3, :cond_c

    .line 1364
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1365
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result p2

    .line 1369
    iget-object p3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getClipToPadding()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 1370
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    .line 1371
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v1, p1

    goto :goto_6

    .line 1373
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p2

    .line 1374
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int v1, p2, p1

    :goto_6
    if-lez v1, :cond_c

    if-lez p3, :cond_c

    sub-float/2addr v5, v0

    int-to-float p1, v1

    int-to-float p2, p3

    div-float/2addr p1, p2

    mul-float v5, v5, p1

    add-float/2addr v0, v5

    :cond_c
    return v0

    :cond_d
    :goto_7
    if-ne p2, p3, :cond_f

    .line 1303
    iget-object p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of p2, p2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 1304
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 1305
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-virtual {p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result p1

    if-eqz p1, :cond_e

    return v5

    :cond_e
    return v1

    :cond_f
    int-to-float p1, p1

    sub-int/2addr p3, p2

    int-to-float p2, p3

    div-float/2addr p1, p2

    return p1

    :cond_10
    :goto_8
    return v1
.end method

.method private getPosFromMotionEvent(F)F
    .locals 2

    .line 1272
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v1

    .line 1276
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v0}, Landroid/support/v4/math/MathUtils;->constrain(FFF)F

    move-result p1

    return p1
.end method

.method private getSectionsFromIndexer()V
    .locals 3

    const/4 v0, 0x0

    .line 1010
    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1012
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    .line 1014
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_0

    .line 1015
    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1016
    check-cast v1, Landroid/widget/SectionIndexer;

    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1017
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 1019
    :cond_0
    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 1020
    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static varargs groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1651
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1654
    array-length v1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v1, :cond_1

    .line 1655
    aget-object v4, p2, v1

    new-array v5, v2, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    if-nez v3, :cond_0

    .line 1657
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    goto :goto_1

    .line 1659
    :cond_0
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private isPointInside(FF)Z
    .locals 0

    .line 1620
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInsideX(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInsideY(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPointInsideX(F)Z
    .locals 4

    .line 1624
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    sub-float/2addr v0, v3

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1627
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalTouchArea:F

    add-float/2addr v0, v3

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isPointInsideY(F)Z
    .locals 3

    .line 1632
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1633
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1634
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layoutThumb()V
    .locals 3

    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 798
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 799
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutTrack()V
    .locals 7

    .line 807
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 808
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 809
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 810
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 811
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v6, -0x80000000

    .line 812
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 814
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 813
    invoke-static {v5, v4}, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 815
    invoke-virtual {v0, v3, v4}, Landroid/view/View;->measure(II)V

    .line 819
    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 820
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    add-int/2addr v3, v4

    .line 821
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v2, v4

    goto :goto_0

    .line 823
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 824
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v3

    iget v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    add-int/2addr v4, v5

    .line 825
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAdditionalBottomPadding:I

    sub-int/2addr v2, v3

    move v3, v4

    .line 828
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 829
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    .line 831
    invoke-virtual {v0, v5, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_0

    .line 736
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 737
    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 738
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 741
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 742
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 743
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v1, v4, v1

    sub-int/2addr v1, p2

    .line 744
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, -0x80000000

    .line 745
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 747
    invoke-static {v5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 746
    invoke-static {v1, v0}, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v0

    .line 748
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 751
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 753
    div-int/lit8 p2, p2, 0xa

    add-int/2addr p2, v2

    iget v1, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p2

    sub-int/2addr v4, v0

    .line 755
    div-int/lit8 v4, v4, 0x2

    iget v1, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    add-int/2addr v0, v4

    .line 757
    invoke-virtual {p3, v4, p2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    .line 642
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 643
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 644
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 645
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 646
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 648
    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_0

    .line 649
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 651
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    .line 671
    iget-boolean p3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    .line 673
    iget p3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    :goto_0
    move v1, p3

    const/4 p3, 0x0

    goto :goto_2

    .line 676
    :cond_0
    iget p3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 681
    iget p3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMarginEnd:I

    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    .line 684
    :cond_2
    iget p3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMarginEnd:I

    goto :goto_1

    .line 691
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 692
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez p2, :cond_3

    goto :goto_3

    .line 696
    :cond_3
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_4

    .line 697
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_3

    .line 699
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 702
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    .line 703
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x80000000

    .line 704
    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 706
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 705
    invoke-static {v4, v0}, Landroid/support/v4/view/SeslViewReflector$SeslMeasureSpecReflector;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 707
    invoke-virtual {p1, v5, v4}, Landroid/view/View;->measure(II)V

    .line 710
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 713
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    if-eqz v4, :cond_6

    if-nez p2, :cond_5

    .line 714
    iget p2, v2, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    :goto_4
    sub-int/2addr p2, v1

    sub-int p3, p2, v3

    goto :goto_6

    :cond_6
    if-nez p2, :cond_7

    .line 717
    iget p2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result p2

    :goto_5
    add-int/2addr p3, p2

    add-int p2, p3, v3

    .line 723
    :goto_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    .line 724
    invoke-virtual {p4, p3, v0, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private onStateDependencyChanged(Z)V
    .locals 2

    .line 476
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 478
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    goto :goto_0

    .line 479
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    .line 480
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 482
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 483
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    goto :goto_0

    .line 486
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->stop()V

    .line 489
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1}, Landroid/support/v4/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private postAutoHide()V
    .locals 4

    .line 959
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 960
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshDrawablePressedState()V
    .locals 2

    .line 885
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 886
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 887
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    return-void
.end method

.method private scrollTo(F)V
    .locals 12

    const/4 v0, 0x0

    .line 1033
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 1035
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 1036
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 1037
    :cond_0
    array-length v3, v2

    :goto_0
    if-eqz v2, :cond_9

    if-lez v3, :cond_9

    int-to-float v2, v3

    mul-float v4, p1, v2

    float-to-int v4, v4

    add-int/lit8 v5, v3, -0x1

    .line 1041
    invoke-static {v4, v0, v5}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v4

    .line 1044
    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v6

    add-int/lit8 v7, v4, 0x1

    if-ge v4, v5, :cond_1

    .line 1060
    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v5, v7}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-ne v5, v6, :cond_5

    move v8, v4

    move v9, v6

    :cond_2
    if-lez v8, :cond_4

    add-int/lit8 v8, v8, -0x1

    .line 1068
    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9, v8}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    if-eq v9, v6, :cond_3

    goto :goto_2

    :cond_3
    if-nez v8, :cond_2

    move v8, v4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    move v6, v4

    move v8, v6

    goto :goto_3

    :cond_5
    move v8, v4

    move v9, v6

    :goto_2
    move v6, v8

    :goto_3
    add-int/lit8 v10, v7, 0x1

    :goto_4
    if-ge v10, v3, :cond_6

    .line 1088
    iget-object v11, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1089
    invoke-interface {v11, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    if-ne v11, v5, :cond_6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    int-to-float v3, v8

    div-float/2addr v3, v2

    int-to-float v7, v7

    div-float/2addr v7, v2

    if-nez v1, :cond_7

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_5

    :cond_7
    const/high16 v2, 0x3e000000    # 0.125f

    int-to-float v10, v1

    div-float/2addr v2, v10

    :goto_5
    if-ne v8, v4, :cond_8

    sub-float v4, p1, v3

    cmpg-float v2, v4, v2

    if-gez v2, :cond_8

    goto :goto_6

    :cond_8
    sub-int/2addr v5, v9

    int-to-float v2, v5

    sub-float v4, p1, v3

    mul-float v2, v2, v4

    sub-float/2addr v7, v3

    div-float/2addr v2, v7

    float-to-int v2, v2

    add-int/2addr v9, v2

    :goto_6
    add-int/lit8 v1, v1, -0x1

    .line 1109
    invoke-static {v9, v0, v1}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v1

    goto :goto_7

    :cond_9
    int-to-float v2, v1

    mul-float v2, v2, p1

    float-to-int v2, v2

    add-int/lit8 v1, v1, -0x1

    .line 1111
    invoke-static {v2, v0, v1}, Landroid/support/v4/math/MathUtils;->constrain(III)I

    move-result v1

    const/4 v6, -0x1

    .line 1115
    :goto_7
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    instance-of v2, v2, Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v2, :cond_a

    .line 1116
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroid/support/v7/widget/LinearLayoutManager;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_8

    .line 1119
    :cond_a
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mHeaderCount:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1122
    :goto_8
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1123
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    .line 1122
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onScroll(III)V

    .line 1125
    iput v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 1127
    invoke-direct {p0, v6}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    const-string v1, "SeslFastScroller"

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollTo() called transitionPreviewLayout() sectionIndex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-nez p1, :cond_b

    if-eqz v0, :cond_b

    .line 1131
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToDragging()V

    goto :goto_9

    .line 1132
    :cond_b
    iget-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    if-eqz p1, :cond_c

    if-nez v0, :cond_c

    .line 1133
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    :cond_c
    :goto_9
    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 857
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 859
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 863
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 875
    :pswitch_0
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionPreviewLayout(I)Z

    goto :goto_0

    .line 872
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToVisible()V

    goto :goto_0

    .line 869
    :pswitch_2
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->transitionToHidden()V

    .line 879
    :goto_0
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    .line 881
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbPos(F)V
    .locals 5

    .line 1235
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1236
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 1237
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, p1, v3

    if-lez v4, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_1

    const/4 p1, 0x0

    .line 1247
    :cond_1
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    mul-float p1, p1, v2

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    add-float/2addr p1, v2

    .line 1248
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1251
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1253
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    int-to-float v1, v1

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v0, v3

    .line 1261
    invoke-static {p1, v1, v0}, Landroid/support/v4/math/MathUtils;->constrain(FFF)F

    move-result p1

    sub-float/2addr p1, v3

    .line 1263
    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1265
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1266
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private startPendingDrag()V
    .locals 4

    .line 1409
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    return-void
.end method

.method private transitionPreviewLayout(I)Z
    .locals 12

    .line 1146
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 1148
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1149
    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    .line 1151
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1154
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1155
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1158
    iget-boolean v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPrimary:Z

    if-eqz v2, :cond_1

    .line 1159
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1160
    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    goto :goto_1

    .line 1162
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1163
    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1167
    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1170
    invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1172
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const-string v4, ""

    .line 1173
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1174
    :cond_2
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-ne v4, v6, :cond_3

    .line 1175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1

    .line 1178
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_4

    .line 1179
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1183
    invoke-static {v3, v4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v6

    const/4 v9, 0x0

    .line 1184
    invoke-static {v2, v9}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v7

    .line 1185
    iget-object v8, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1188
    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->left:I

    .line 1189
    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    sub-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 1190
    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->right:I

    .line 1191
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    add-int/2addr v8, v10

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 1192
    invoke-static {v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v10, 0x64

    .line 1193
    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1195
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1196
    iget-object v8, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    .line 1197
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1201
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v0, v7

    .line 1202
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1206
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_5

    int-to-float v0, v0

    int-to-float v7, v1

    div-float/2addr v0, v7

    .line 1208
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1209
    invoke-static {v3, v4}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1210
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 1212
    :cond_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1216
    :goto_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    if-le v0, v1, :cond_6

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1219
    invoke-static {v2, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1220
    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1222
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v9, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1223
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v5

    return p1
.end method

.method private transitionToDragging()V
    .locals 7

    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToDragging()"

    .line 942
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 947
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v5, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v5, 0xa7

    .line 949
    invoke-virtual {v0, v5, v6}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 951
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 952
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v5, v4, [Landroid/animation/Animator;

    aput-object v0, v5, v3

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 953
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v1, v3, v5, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 954
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 955
    iput-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    return-void
.end method

.method private transitionToHidden()V
    .locals 8

    const-string v0, "SeslFastScroller"

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transitionToHidden() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    const/4 v1, -0x1

    .line 900
    iput v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mCurrentSection:I

    .line 902
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v1, 0xa7

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 907
    :goto_0
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x5

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v4, v3, v0

    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v6, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    int-to-long v6, v1

    .line 908
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 910
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 911
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private transitionToVisible()V
    .locals 10

    const-string v0, "SeslFastScroller"

    const-string v1, "transitionToVisible()"

    .line 920
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 922
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 925
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/view/View;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    const-wide/16 v6, 0xa7

    .line 926
    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 927
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/view/View;

    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v9, v8, v4

    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v9, v8, v5

    iget-object v9, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v9, v8, v1

    const/4 v9, 0x0

    invoke-static {v2, v9, v8}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    .line 929
    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v2

    .line 931
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 932
    iget-object v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    invoke-virtual {v6, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 933
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v9, v5, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 934
    iput-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mShowingPreview:Z

    .line 935
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateAppearance()V
    .locals 4

    .line 321
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 322
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/recyclerview/R$attr;->colorPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 323
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    .line 326
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 331
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 336
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 338
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 339
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 340
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 344
    :cond_2
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mWidth:I

    .line 346
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 347
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 349
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 351
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 354
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_4

    .line 355
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 356
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 359
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 360
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 361
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 364
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 365
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 366
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 367
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 368
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 369
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 372
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOrientation:I

    .line 374
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->refreshDrawablePressedState()V

    return-void
.end method

.method private updateContainerRect()V
    .locals 6

    .line 764
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 765
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/SeslViewGroupReflector;->resolvePadding(Landroid/view/ViewGroup;)V

    .line 767
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    .line 768
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 769
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 770
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 771
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 773
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    .line 776
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 777
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 778
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 779
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v4, v0

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_2

    .line 783
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getWidth()I

    move-result v0

    .line 784
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 785
    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 787
    :cond_1
    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    return-void
.end method

.method private updateLongList(II)V
    .locals 1

    const/4 p2, 0x1

    if-lez p1, :cond_1

    .line 559
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 560
    :goto_0
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-eq v0, p1, :cond_2

    .line 561
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    .line 563
    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_2
    return-void
.end method

.method private updateOffsetAndRange()V
    .locals 4

    .line 839
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 840
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 843
    iget v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 844
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 845
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 846
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    goto :goto_0

    .line 848
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v2, v1

    .line 849
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    .line 852
    :goto_0
    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbOffset:F

    sub-float/2addr v0, v2

    .line 853
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbRange:F

    return-void
.end method


# virtual methods
.method public canScrollList(I)Z
    .locals 6

    .line 964
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 969
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v2

    .line 970
    iget-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mListPadding:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-lez p1, :cond_3

    .line 972
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    add-int/2addr v2, v0

    .line 974
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt v2, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 976
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gtz v2, :cond_4

    .line 977
    iget v0, v3, Landroid/graphics/Rect;->top:I

    if-ge p1, v0, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method getEffectState()I
    .locals 1

    .line 531
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    return v0
.end method

.method getScrollY()F
    .locals 1

    .line 535
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 527
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mWidth:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 448
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1476
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1480
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 1481
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-nez v0, :cond_2

    .line 1483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1484
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1485
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    :cond_2
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1427
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1431
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1452
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1453
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1454
    :cond_1
    iget-wide v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 1455
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1457
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1458
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1459
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    const-string v0, "SeslFastScroller"

    const-string v1, "onInterceptTouchEvent() ACTION_MOVE pendingdrag open()"

    .line 1460
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1468
    :pswitch_1
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    goto :goto_0

    :pswitch_2
    const-string v0, "SeslFastScroller"

    .line 1433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent() ACTION_DOWN ev.getY() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1441
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 1447
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    .line 1448
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->startPendingDrag()V

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemCountChanged(II)V
    .locals 2

    .line 543
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    if-eq v0, p1, :cond_3

    .line 544
    :cond_0
    iput p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldItemCount:I

    .line 545
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldChildCount:I

    sub-int v0, p2, p1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 548
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->findFirstVisibleItemPosition()I

    move-result v0

    .line 550
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 553
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLongList(II)V

    :cond_3
    return-void
.end method

.method public onScroll(III)V
    .locals 4

    .line 982
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 983
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 987
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq v1, v2, :cond_3

    .line 988
    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    .line 989
    iget p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 990
    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    goto :goto_0

    .line 992
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromItemCount(III)F

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 996
    :cond_3
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    .line 998
    iget p2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    if-eq p2, p1, :cond_4

    .line 999
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mFirstVisibleItem:I

    .line 1002
    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-eq p1, v2, :cond_4

    .line 1003
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1004
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    :cond_4
    return-void
.end method

.method public onSectionsChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mListAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 539
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1492
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1493
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 1494
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 1496
    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 1497
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    .line 1498
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    .line 1500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1502
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isEnabled()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 1506
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 1596
    :pswitch_0
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->cancelPendingDrag()V

    .line 1597
    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v9, :cond_1

    .line 1598
    invoke-direct {p0, v5}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1600
    :cond_1
    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1601
    iput v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto/16 :goto_2

    :pswitch_1
    const-string v4, "SeslFastScroller"

    .line 1549
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent() ACTION_MOVE.. mState= "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mInitialTouchY="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    iget-wide v11, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v4, v11, v7

    if-ltz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mInitialTouchY:F

    sub-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    .line 1551
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1552
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v6, v1

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v7, v0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    const-string v4, "SeslFastScroller"

    .line 1553
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent() ACTION_MOVE 1 mScrollY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", min="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    add-float/2addr v6, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 1556
    iput v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_0

    .line 1557
    :cond_2
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_3

    .line 1558
    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1561
    :cond_3
    :goto_0
    iput v10, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1567
    :cond_4
    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne v4, v9, :cond_a

    .line 1569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result p1

    .line 1570
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1571
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1574
    iget-boolean v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollCompleted:Z

    if-eqz v4, :cond_5

    .line 1575
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1578
    :cond_5
    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_8

    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_8

    const-string p1, "SeslFastScroller"

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEvent() ACTION_MOVE 2 mScrollY="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", min="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", max="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    add-float/2addr v1, v3

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    .line 1582
    iput v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    goto :goto_1

    .line 1583
    :cond_6
    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 1584
    iput v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    .line 1587
    :cond_7
    :goto_1
    iput v10, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    :cond_8
    return v10

    .line 1518
    :pswitch_2
    iget-wide v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPendingDrag:J

    cmp-long v0, v0, v7

    if-ltz v0, :cond_9

    .line 1520
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1523
    iput v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOldThumbPosition:F

    .line 1524
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setThumbPos(F)V

    .line 1525
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->scrollTo(F)V

    .line 1527
    iput v10, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const-string v0, "SeslFastScroller"

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() ACTION_UP.. open() called with posY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_9
    iget p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mState:I

    if-ne p1, v9, :cond_a

    .line 1536
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/RecyclerView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1538
    invoke-direct {p0, v10}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    .line 1539
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->postAutoHide()V

    .line 1540
    iput v5, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    .line 1541
    iput v6, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollY:F

    return v10

    .line 1508
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1509
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->beginDrag()V

    .line 1510
    iput v10, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEffectState:I

    const-string v0, "SeslFastScroller"

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent() ACTION_DOWN.. open() called with posY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_a
    :goto_2
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove()V
    .locals 2

    .line 423
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 426
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 427
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 428
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public setAlwaysShow(Z)V
    .locals 1

    .line 455
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 456
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mAlwaysShow:Z

    const/4 p1, 0x0

    .line 458
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    const-string v0, "SeslFastScroller"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 438
    iput-boolean p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mEnabled:Z

    const/4 p1, 0x1

    .line 440
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->onStateDependencyChanged(Z)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .line 493
    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 494
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollBarStyle:I

    .line 496
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_0
    return-void
.end method

.method public setScrollbarPosition(I)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 509
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 513
    :cond_1
    :goto_0
    iget v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq v1, p1, :cond_3

    .line 514
    iput p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mScrollbarPosition:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 515
    :goto_1
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    .line 517
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mLayoutFromRight:Z

    aget p1, p1, v0

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 519
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 520
    iget-object p1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mColorPrimary:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 522
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateLayout()V

    :cond_3
    return-void
.end method

.method public setStyle(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/recyclerview/R$styleable;->FastScroll:[I

    const/4 v2, 0x0

    const v3, 0x10103f7

    invoke-virtual {v0, v2, v1, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_e

    .line 382
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 383
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_position:I

    if-ne v3, v4, :cond_0

    .line 384
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mOverlayPosition:I

    goto/16 :goto_1

    .line 385
    :cond_0
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_backgroundLeft:I

    if-ne v3, v4, :cond_1

    .line 386
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v4, v1

    goto/16 :goto_1

    .line 387
    :cond_1
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_backgroundRight:I

    if-ne v3, v4, :cond_2

    .line 388
    iget-object v4, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewResId:[I

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v4, v5

    goto/16 :goto_1

    .line 389
    :cond_2
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbDrawable:I

    if-ne v3, v4, :cond_3

    .line 390
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 391
    :cond_3
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_trackDrawable:I

    if-ne v3, v4, :cond_4

    .line 392
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 393
    :cond_4
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_textAppearance:I

    if-ne v3, v4, :cond_5

    .line 394
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextAppearance:I

    goto :goto_1

    .line 395
    :cond_5
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_textColor:I

    if-ne v3, v4, :cond_6

    .line 396
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 397
    :cond_6
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_textSize:I

    if-ne v3, v4, :cond_7

    .line 398
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTextSize:F

    goto :goto_1

    .line 399
    :cond_7
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_minWidth:I

    if-ne v3, v4, :cond_8

    .line 400
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinWidth:I

    goto :goto_1

    .line 401
    :cond_8
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_minHeight:I

    if-ne v3, v4, :cond_9

    .line 402
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewMinHeight:I

    goto :goto_1

    .line 403
    :cond_9
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbMinWidth:I

    if-ne v3, v4, :cond_a

    .line 404
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinWidth:I

    goto :goto_1

    .line 405
    :cond_a
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbMinHeight:I

    if-ne v3, v4, :cond_b

    .line 406
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbMinHeight:I

    goto :goto_1

    .line 407
    :cond_b
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_android_padding:I

    if-ne v3, v4, :cond_c

    .line 408
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewPadding:I

    goto :goto_1

    .line 409
    :cond_c
    sget v4, Landroid/support/v7/recyclerview/R$styleable;->FastScroll_thumbPosition:I

    if-ne v3, v4, :cond_d

    .line 410
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mThumbPosition:I

    :cond_d
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 414
    :cond_e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 416
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateAppearance()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->setState(I)V

    return-void
.end method

.method public updateLayout()V
    .locals 3

    .line 592
    iget-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 596
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 598
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateContainerRect()V

    .line 600
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->layoutThumb()V

    .line 601
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->layoutTrack()V

    .line 603
    invoke-direct {p0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->updateOffsetAndRange()V

    const/4 v0, 0x0

    .line 605
    iput-boolean v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mUpdatingLayout:Z

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 607
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 608
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 609
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 610
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 613
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 614
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 615
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 616
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 617
    iget-object v1, p0, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SeslRecyclerViewFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
