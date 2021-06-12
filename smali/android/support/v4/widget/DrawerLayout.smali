.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$EdgeGravity;,
        Landroid/support/v4/widget/DrawerLayout$LockMode;,
        Landroid/support/v4/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x38

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final THEME_ATTRS:[I

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mContentView:Landroid/view/View;

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 103
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x1010434

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->THEME_ATTRS:[I

    .line 183
    new-array v1, v0, [I

    const v3, 0x10100b3

    aput v3, v1, v2

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 188
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 191
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 306
    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 310
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 314
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 194
    new-instance p2, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {p2}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>()V

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    const/high16 p2, -0x67000000

    .line 200
    iput p2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 202
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 210
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    const/4 p3, 0x3

    .line 212
    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 213
    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 214
    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 215
    iput p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 238
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 239
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 240
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000

    .line 315
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 316
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    mul-float v2, v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 317
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v2, v2, v1

    .line 320
    new-instance v3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v3, p0, p3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 321
    new-instance p3, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v3, 0x5

    invoke-direct {p3, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 323
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p0, v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 324
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, p2}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 325
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 326
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 328
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-static {p0, v3, p3}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p3

    iput-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 329
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x2

    invoke-virtual {p3, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 330
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v2}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 331
    iget-object p3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3, v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 334
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 336
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 339
    new-instance p2, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {p2, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    const/4 p2, 0x0

    .line 340
    invoke-static {p0, p2}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 341
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 342
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt p3, v2, :cond_0

    .line 343
    new-instance p3, Landroid/support/v4/widget/DrawerLayout$1;

    invoke-direct {p3, p0}, Landroid/support/v4/widget/DrawerLayout$1;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/16 p3, 0x500

    .line 352
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->setSystemUiVisibility(I)V

    .line 354
    sget-object p3, Landroid/support/v4/widget/DrawerLayout;->THEME_ATTRS:[I

    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 356
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 361
    :cond_0
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    const/high16 p1, 0x41200000    # 10.0f

    mul-float v1, v1, p1

    .line 365
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 367
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Landroid/support/v4/widget/DrawerLayout;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method static gravityToString(I)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "LEFT"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string p0, "RIGHT"

    return-object p0

    .line 969
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .locals 2

    .line 1282
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1284
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private hasPeekingDrawer()Z
    .locals 4

    .line 1798
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1800
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1801
    iget-boolean v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hasVisibleDrawer()Z
    .locals 1

    .line 1868
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static includeChildForAccessibility(Landroid/view/View;)Z
    .locals 2

    .line 2008
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 2010
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1165
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1123
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1126
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1128
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1129
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1132
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1134
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1135
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1138
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1142
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1146
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1147
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1150
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1152
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1153
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 1156
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private resolveShadowDrawables()V
    .locals 1

    .line 1115
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    return-void

    .line 1118
    :cond_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1119
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .locals 4

    .line 858
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 860
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez p2, :cond_0

    .line 861
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p2, :cond_2

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 v3, 0x1

    .line 864
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    .line 867
    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 528
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1834
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    return-void

    .line 1840
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1843
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1844
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1845
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1847
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v3, 0x1

    goto :goto_1

    .line 1850
    :cond_1
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    .line 1855
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_5

    .line 1857
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1858
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 1859
    invoke-virtual {v2, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1864
    :cond_5
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1980
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1982
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    .line 1983
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1991
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x4

    .line 1986
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1997
    :goto_1
    sget-boolean p2, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez p2, :cond_2

    .line 1998
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    :cond_2
    return-void
.end method

.method cancelChildViewTouch()V
    .locals 9

    .line 1884
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_1

    .line 1885
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 1886
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1888
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1890
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1892
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 1893
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :cond_1
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .locals 0

    .line 908
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result p1

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1824
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public closeDrawer(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1712
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V

    return-void
.end method

.method public closeDrawer(IZ)V
    .locals 2

    .line 1723
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void

    .line 1725
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No drawer view found with gravity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1726
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public closeDrawer(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1670
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public closeDrawer(Landroid/view/View;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1680
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1684
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1685
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1686
    iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1687
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-eqz p2, :cond_2

    .line 1689
    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/2addr p2, v1

    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 p2, 0x3

    .line 1691
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1692
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 1693
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1692
    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1695
    :cond_1
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1698
    :cond_2
    invoke-virtual {p0, p1, v3}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1699
    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p2, v2, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1700
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1702
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    .line 1681
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public closeDrawers()V
    .locals 1

    const/4 v0, 0x0

    .line 1560
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    return-void
.end method

.method closeDrawers(Z)V
    .locals 9

    .line 1565
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1567
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1568
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1570
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p1, :cond_0

    iget-boolean v6, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    if-nez v6, :cond_0

    goto :goto_2

    .line 1574
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    .line 1576
    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1577
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v6, v6

    .line 1578
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1577
    invoke-virtual {v7, v4, v6, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_1

    .line 1580
    :cond_1
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1581
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1580
    invoke-virtual {v6, v4, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 1584
    :goto_1
    iput-boolean v1, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1587
    :cond_3
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1588
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    if-eqz v3, :cond_4

    .line 1591
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 1266
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1269
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 1270
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1272
    :cond_0
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1274
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    .line 1275
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 1277
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .locals 3

    .line 808
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 809
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 810
    iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 812
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 817
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 821
    :cond_0
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 826
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 827
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    .line 829
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 836
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 837
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 838
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 839
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_0

    .line 844
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 848
    :cond_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 851
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x20

    .line 852
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .locals 2

    .line 874
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 879
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    .line 1358
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    .line 1359
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v4

    .line 1360
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v5

    .line 1362
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    .line 1364
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v9

    move v11, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v5, v9, :cond_3

    .line 1366
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-eq v12, v2, :cond_2

    .line 1367
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_2

    .line 1368
    invoke-static {v12}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {p0, v12}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1369
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v13

    if-ge v13, v3, :cond_0

    goto :goto_1

    .line 1373
    :cond_0
    invoke-virtual {p0, v12, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1374
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    if-le v12, v10, :cond_2

    move v10, v12

    goto :goto_1

    .line 1377
    :cond_1
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    if-ge v12, v11, :cond_2

    move v11, v12

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1381
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v10, v8, v11, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v8, v10

    goto :goto_2

    :cond_4
    move v11, v5

    .line 1383
    :goto_2
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v9

    .line 1384
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1386
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    if-eqz v4, :cond_5

    .line 1387
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    ushr-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    .line 1388
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    .line 1389
    iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 1390
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, v8

    const/4 v3, 0x0

    int-to-float v4, v11

    .line 1392
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 1393
    :cond_5
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    .line 1394
    invoke-virtual {p0, v2, v7}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1395
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    .line 1397
    iget-object v8, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v8

    int-to-float v10, v7

    int-to-float v8, v8

    div-float/2addr v10, v8

    .line 1399
    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1400
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v3, v7

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1400
    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1402
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1403
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1404
    :cond_6
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    const/4 v3, 0x5

    .line 1405
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1406
    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 1408
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v8

    sub-int/2addr v8, v7

    .line 1409
    iget-object v10, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v10

    int-to-float v8, v8

    int-to-float v10, v10

    div-float/2addr v8, v10

    .line 1411
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1412
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v3, v7, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v8

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1412
    invoke-virtual {v6, v3, v8, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1414
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    mul-float v5, v5, v4

    float-to-int v3, v5

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1415
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    :goto_3
    return v9
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .locals 4

    .line 944
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 943
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    .line 945
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 947
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 948
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method findOpenDrawer()Landroid/view/View;
    .locals 5

    .line 913
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 915
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 916
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 917
    iget v3, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method findVisibleDrawer()Landroid/view/View;
    .locals 4

    .line 1872
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1874
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1875
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1810
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1829
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1815
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0
.end method

.method public getDrawerElevation()F
    .locals 1

    .line 404
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    .line 405
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .locals 3

    .line 663
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v2, 0x5

    if-eq p1, v2, :cond_6

    const v2, 0x800003

    if-eq p1, v2, :cond_3

    const v2, 0x800005

    if-eq p1, v2, :cond_0

    goto :goto_4

    .line 697
    :cond_0
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq p1, v1, :cond_1

    .line 698
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    return p1

    :cond_1
    if-nez v0, :cond_2

    .line 700
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    :cond_2
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eq p1, v1, :cond_c

    return p1

    .line 687
    :cond_3
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq p1, v1, :cond_4

    .line 688
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    return p1

    :cond_4
    if-nez v0, :cond_5

    .line 690
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    :goto_1
    if-eq p1, v1, :cond_c

    return p1

    .line 677
    :cond_6
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq p1, v1, :cond_7

    .line 678
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    return p1

    :cond_7
    if-nez v0, :cond_8

    .line 680
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_2

    :cond_8
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    :goto_2
    if-eq p1, v1, :cond_c

    return p1

    .line 667
    :cond_9
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq p1, v1, :cond_a

    .line 668
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    return p1

    :cond_a
    if-nez v0, :cond_b

    .line 670
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_3

    :cond_b
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    :goto_3
    if-eq p1, v1, :cond_c

    return p1

    :cond_c
    :goto_4
    const/4 p1, 0x0

    return p1
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 720
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 724
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result p1

    return p1

    .line 721
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 758
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 757
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 760
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 762
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .locals 1

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 904
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    return p1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .locals 0

    .line 895
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    return p1
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1307
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .locals 1

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mContentView:Landroid/view/View;

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

.method public isDrawerOpen(I)Z
    .locals 0

    .line 1759
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1761
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1742
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1746
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1743
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .locals 2

    .line 1428
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1430
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 1429
    invoke-static {v0, p1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p1, p1, 0x5

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerVisible(I)Z
    .locals 0

    .line 1790
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1792
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1775
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1776
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a drawer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .locals 2

    .line 925
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 926
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    mul-float v1, v1, p2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x3

    .line 932
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-int v1, v1

    .line 931
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 933
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 980
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 981
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 974
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 975
    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1340
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1341
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 1344
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowInsets;

    .line 1345
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    .line 1350
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1351
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1445
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1448
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 1449
    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1472
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1473
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1474
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_1

    .line 1481
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1482
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1483
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_1

    .line 1455
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1456
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1457
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1458
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1459
    iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 1460
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v4, v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1461
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1465
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1466
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 1487
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_3
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1899
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    const/4 p1, 0x1

    return p1

    .line 1903
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1909
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1910
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 1911
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 1915
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    move-object v0, p0

    const/4 v2, 0x1

    .line 1175
    iput-boolean v2, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    sub-int v3, p4, p2

    .line 1177
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_b

    .line 1179
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1181
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    goto/16 :goto_6

    .line 1185
    :cond_0
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1187
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1188
    iget v9, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v10, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v11, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1189
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v11, v12

    iget v8, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1190
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v8, v12

    .line 1188
    invoke-virtual {v7, v9, v10, v11, v8}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_6

    .line 1192
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 1193
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x3

    .line 1197
    invoke-virtual {p0, v7, v11}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v11

    if-eqz v11, :cond_2

    neg-int v11, v9

    int-to-float v12, v9

    .line 1198
    iget v13, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float v13, v13, v12

    float-to-int v13, v13

    add-int/2addr v11, v13

    add-int v13, v9, v11

    int-to-float v13, v13

    div-float/2addr v13, v12

    goto :goto_1

    :cond_2
    int-to-float v11, v9

    .line 1201
    iget v12, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    mul-float v12, v12, v11

    float-to-int v12, v12

    sub-int v12, v3, v12

    sub-int v13, v3, v12

    int-to-float v13, v13

    div-float/2addr v13, v11

    move v11, v12

    .line 1205
    :goto_1
    iget v12, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v12, v13, v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    .line 1207
    :goto_2
    iget v14, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    const/16 v2, 0x10

    if-eq v14, v2, :cond_5

    const/16 v2, 0x50

    if-eq v14, v2, :cond_4

    .line 1212
    iget v2, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v14, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v10

    invoke-virtual {v7, v11, v2, v9, v14}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    sub-int v2, p5, p3

    .line 1219
    iget v10, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v10, v2, v10

    .line 1220
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v10, v14

    add-int/2addr v9, v11

    iget v14, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v14

    .line 1219
    invoke-virtual {v7, v11, v10, v9, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_5
    sub-int v2, p5, p3

    sub-int v14, v2, v10

    .line 1228
    div-int/lit8 v14, v14, 0x2

    .line 1232
    iget v5, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v14, v5, :cond_6

    .line 1233
    iget v14, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :cond_6
    add-int v5, v14, v10

    .line 1234
    iget v1, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v1, v2, v1

    if-le v5, v1, :cond_7

    .line 1235
    iget v1, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v2, v1

    sub-int v14, v2, v10

    :cond_7
    :goto_3
    add-int/2addr v9, v11

    add-int/2addr v10, v14

    .line 1237
    invoke-virtual {v7, v11, v14, v9, v10}, Landroid/view/View;->layout(IIII)V

    :goto_4
    if-eqz v12, :cond_8

    .line 1244
    invoke-virtual {p0, v7, v13}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1247
    :cond_8
    iget v1, v8, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x4

    .line 1248
    :goto_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_a

    .line 1249
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    .line 1253
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1254
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    .line 986
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 987
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 988
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 989
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v2, v6, :cond_4

    .line 992
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_16

    const/high16 v7, -0x80000000

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/16 v3, 0x12c

    :cond_2
    :goto_0
    if-ne v2, v7, :cond_3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    const/16 v4, 0x12c

    .line 1015
    :cond_4
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1017
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1018
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    .line 1024
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v9, v8, :cond_15

    .line 1026
    invoke-virtual {v0, v9}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1028
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_6

    goto/16 :goto_7

    .line 1032
    :cond_6
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v14, 0x3

    if-eqz v1, :cond_c

    .line 1035
    iget v15, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v15, v7}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v15

    .line 1036
    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v16

    const/16 v6, 0x15

    if-eqz v16, :cond_9

    .line 1037
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_c

    .line 1038
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    if-ne v15, v14, :cond_7

    .line 1040
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    .line 1041
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v15

    .line 1042
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v14

    .line 1040
    invoke-virtual {v2, v6, v15, v5, v14}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_4

    :cond_7
    const/4 v6, 0x5

    if-ne v15, v6, :cond_8

    .line 1044
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 1045
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1046
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1044
    invoke-virtual {v2, v5, v6, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 1048
    :cond_8
    :goto_4
    invoke-virtual {v12, v2}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    goto :goto_6

    .line 1051
    :cond_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_c

    .line 1052
    iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowInsets;

    const/4 v6, 0x3

    if-ne v15, v6, :cond_a

    .line 1054
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    .line 1055
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v14

    .line 1056
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1054
    invoke-virtual {v2, v6, v14, v5, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    goto :goto_5

    :cond_a
    const/4 v6, 0x5

    if-ne v15, v6, :cond_b

    .line 1058
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    .line 1059
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v14

    .line 1060
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v15

    .line 1058
    invoke-virtual {v2, v5, v6, v14, v15}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 1062
    :cond_b
    :goto_5
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v6

    iput v6, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    .line 1063
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v6

    iput v6, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    .line 1064
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v6

    iput v6, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    .line 1065
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    .line 1070
    :cond_c
    :goto_6
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1072
    iget v2, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v2, v3, v2

    iget v6, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v6

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1074
    iget v14, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v14, v4, v14

    iget v13, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v13

    invoke-static {v14, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 1076
    invoke-virtual {v12, v2, v13}, Landroid/view/View;->measure(II)V

    :goto_7
    move/from16 v15, p1

    move/from16 v13, p2

    goto/16 :goto_b

    :cond_d
    const/high16 v6, 0x40000000    # 2.0f

    .line 1077
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1078
    sget-boolean v2, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v2, :cond_e

    .line 1079
    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v2

    iget v14, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v2, v2, v14

    if-eqz v2, :cond_e

    .line 1080
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v12, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1084
    :cond_e
    invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/4 v14, 0x3

    if-ne v2, v14, :cond_f

    const/4 v14, 0x1

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    :goto_8
    if-eqz v14, :cond_10

    if-nez v10, :cond_11

    :cond_10
    if-nez v14, :cond_12

    if-nez v11, :cond_11

    goto :goto_9

    .line 1090
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Child drawer has absolute gravity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DrawerLayout"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already has a drawer view along that edge"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_9
    if-eqz v14, :cond_13

    const/4 v10, 0x1

    goto :goto_a

    :cond_13
    const/4 v11, 0x1

    .line 1099
    :goto_a
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v14, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v14

    iget v14, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v15, p1

    invoke-static {v15, v2, v14}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1102
    iget v14, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v5, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v14, v5

    iget v5, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v13, p2

    invoke-static {v13, v14, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v5

    .line 1105
    invoke-virtual {v12, v2, v5}, Landroid/view/View;->measure(II)V

    :goto_b
    add-int/lit8 v9, v9, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1107
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    return-void

    .line 1010
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 1920
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    if-nez v0, :cond_0

    .line 1921
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1925
    :cond_0
    check-cast p1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1926
    invoke-virtual {p1}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1928
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v0, :cond_1

    .line 1929
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1931
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1935
    :cond_1
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1936
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1938
    :cond_2
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v0, v1, :cond_3

    .line 1939
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1941
    :cond_3
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v0, v1, :cond_4

    .line 1942
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v2, 0x800003

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1944
    :cond_4
    iget v0, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v0, v1, :cond_5

    .line 1945
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v0, 0x800005

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    :cond_5
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 1335
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 9

    .line 1951
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1952
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1954
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    .line 1956
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1957
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1959
    iget v5, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1961
    :goto_1
    iget v7, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v5, :cond_3

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1965
    :cond_3
    :goto_3
    iget v0, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1970
    :cond_4
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1971
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1972
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1973
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v0, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1492
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1493
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1510
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1511
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1513
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v4, v0

    float-to-int v5, p1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1514
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1515
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float/2addr v0, v1

    .line 1516
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float/2addr p1, v1

    .line 1517
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v1

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    mul-int v1, v1, v1

    int-to-float p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_1

    .line 1520
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1522
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 1526
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1527
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    goto :goto_2

    .line 1500
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1502
    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1503
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1504
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1505
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_2

    .line 1532
    :cond_2
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1533
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1534
    iput-boolean v3, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openDrawer(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1645
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V

    return-void
.end method

.method public openDrawer(IZ)V
    .locals 2

    .line 1656
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void

    .line 1658
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No drawer view found with gravity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1659
    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public openDrawer(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1601
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V

    return-void
.end method

.method public openDrawer(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1611
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1615
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1616
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 1617
    iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 p2, 0x1

    .line 1618
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    .line 1620
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 1622
    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    or-int/lit8 p2, p2, 0x2

    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I

    const/4 p2, 0x3

    .line 1624
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1625
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p2, p1, v1, v0}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1627
    :cond_1
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1628
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1627
    invoke-virtual {p2, p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_0

    .line 1631
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V

    .line 1632
    iget p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, p2, v1, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V

    .line 1633
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1635
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    .line 1612
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a sliding drawer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1548
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1550
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1552
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1259
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_0

    .line 1260
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 416
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 417
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-nez p2, :cond_0

    .line 418
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 419
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mContentView:Landroid/view/View;

    return-void
.end method

.method public setDrawerElevation(F)V
    .locals 2

    .line 387
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    const/4 p1, 0x0

    .line 388
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 389
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 504
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 508
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 512
    :cond_1
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    return-void
.end method

.method public setDrawerLockMode(I)V
    .locals 1

    const/4 v0, 0x3

    .line 563
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    const/4 v0, 0x5

    .line 564
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void
.end method

.method public setDrawerLockMode(II)V
    .locals 3

    .line 588
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 587
    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_2

    const v2, 0x800003

    if-eq p2, v2, :cond_1

    const v2, 0x800005

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_0

    .line 598
    :cond_1
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_0

    .line 595
    :cond_2
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_0

    .line 592
    :cond_3
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    :goto_0
    if-eqz p1, :cond_5

    if-ne v0, v1, :cond_4

    .line 607
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 608
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    :cond_5
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 612
    :pswitch_0
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 614
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_2

    .line 618
    :pswitch_1
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 620
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 646
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget p2, p2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 651
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    return-void

    .line 647
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a drawer with appropriate layout_gravity"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDrawerShadow(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 476
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 442
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_1

    .line 447
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_2

    .line 449
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 451
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_4

    .line 453
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 457
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 458
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void

    :cond_4
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .locals 1
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 739
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 738
    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 741
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 743
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .locals 2

    .line 885
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 886
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    return-void

    .line 890
    :cond_0
    iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    .line 891
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 485
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 486
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1317
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1318
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1296
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1297
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 1329
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1330
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    return-void
.end method

.method public setTouchSensitivity(F)V
    .locals 5

    .line 2021
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 2023
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    const-string v1, "DrawerLayout"

    const-string v3, "Ignore set sensitivity because of mLeftDragger is null"

    .line 2024
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2026
    :cond_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    int-to-float v3, v0

    div-float v4, v2, p1

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    .line 2029
    :goto_0
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v1, :cond_1

    const-string p1, "DrawerLayout"

    const-string v0, "Ignore set sensitivity because of mRightDragger is null"

    .line 2030
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2032
    :cond_1
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    int-to-float v0, v0

    div-float/2addr v2, p1

    mul-float v0, v0, v2

    float-to-int p1, v0

    iput p1, v1, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I

    :goto_1
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .locals 3

    .line 772
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    .line 773
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v1, :cond_3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    .line 785
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 786
    iget p2, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    .line 787
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_2

    .line 788
    :cond_4
    iget p1, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    .line 789
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    .line 793
    :cond_5
    :goto_2
    iget p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v1, p1, :cond_6

    .line 794
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 796
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 799
    iget-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_3
    if-ltz p1, :cond_6

    .line 801
    iget-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {p2, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_6
    return-void
.end method
