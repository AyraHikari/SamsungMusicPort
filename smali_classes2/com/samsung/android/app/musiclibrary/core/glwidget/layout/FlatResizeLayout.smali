.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;
.super Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$DebugMatrixGenerator;,
        Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout<",
        "Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG_TEXT_ALPHA:F = 0.5f

.field private static final DEBUG_TEXT_COLOR:I = -0xff0100

.field private static final DEBUG_VIEW:Z = false

.field private static final DEFAULT_ACCESSIBILITY_MODEL_ID:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-FlatResizeLayout"

.field public static final LOG_TAG_ACCESSIBILITY:Ljava/lang/String; = "SMUSIC-FlatResizeLayoutAccessibility"

.field private static final NOT_SELECTED_Z:F = 2000.0f

.field private static final SELECTED_Z:F = 2200.0f

.field private static final TEXT_VIEW_ID:I

.field private static final mPaint:Landroid/graphics/Paint;

.field private static final sFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;


# instance fields
.field private mAlbOpK:F

.field private mAlbTextOpK:F

.field private mAlbumSpacingK:F

.field private mAlbumVerticalDeltaK:F

.field private mAnimK:F

.field private mAnimLeft:I

.field private mAnimRight:I

.field private mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

.field private mCenterX:I

.field private mCenterY:I

.field private mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

.field private mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

.field private mDrawablesCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

.field private mHasTexts:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsPortrait:Z

.field private mLastModelHeight:F

.field private mLastModelWidth:F

.field private mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

.field private mMaxScrollingDistance:I

.field private mMaxSelectedDx:F

.field private volatile mNeedCopyToArray:Z

.field private final mRealignLock:Ljava/lang/Object;

.field private mRect:Landroid/graphics/Rect;

.field private volatile mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

.field private mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

.field private mVBOCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->sFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Landroid/util/AttributeSet;)V
    .locals 3

    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;)V

    .line 112
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/OrthoCamera;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mDrawablesCache:Landroid/util/LruCache;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mInflater:Landroid/view/LayoutInflater;

    .line 181
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/musiclibrary/R$styleable;->GLFlatResizeGalleryView:[I

    const/4 v2, 0x0

    .line 182
    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Landroid/content/res/TypedArray;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    .line 184
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutVBOCache;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mVBOCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getTextLayoutId()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mIsPortrait:Z

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mScrollingFriction:F

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->setFriction(F)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;)Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    return-object p0
.end method

.method private bindText(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V
    .locals 4

    const/4 v0, 0x0

    .line 980
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    .line 981
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 995
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getTextLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 997
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 998
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 999
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1000
    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 1006
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->bindView(Landroid/content/Context;ILandroid/view/View;)V

    .line 1009
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->bindToView(Landroid/view/View;)V

    .line 1010
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setAdapterIndex(I)V

    return-void
.end method

.method private copyArtworksToArray()V
    .locals 5

    .line 894
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 895
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 896
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_0

    .line 899
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 900
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 901
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    add-int/lit8 v4, v1, 0x1

    aput-object v2, v3, v1

    move v1, v4

    goto :goto_1

    .line 904
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v0, v0

    if-ge v1, v0, :cond_4

    .line 905
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    aput-object v2, v0, v1

    :cond_4
    return-void
.end method

.method private copyChildsToArray()V
    .locals 7

    .line 915
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 916
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChildCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 917
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    array-length v6, v6

    if-lt v6, v1, :cond_0

    .line 918
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 925
    new-array v0, v1, [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .line 927
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 928
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->copyChildsToArray([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)I

    move-result v4

    goto :goto_1

    .line 932
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    array-length v0, v0

    if-ge v4, v0, :cond_3

    .line 933
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    const/4 v1, 0x0

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private getArtworkDrawable(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 357
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->RoundRectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    if-eq v1, v2, :cond_0

    .line 361
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mDrawablesCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 366
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$2;->$SwitchMap$com$samsung$android$app$musiclibrary$core$glwidget$layout$FlatResizeLayoutConfig$Shape:[I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 378
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "It should not be called"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 371
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    .line 372
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    .line 373
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result p1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 374
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mRoundedRectRadius:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    goto :goto_1

    .line 368
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getCircleArtworkDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object v1, p1

    .line 380
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mDrawablesCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCircleArtworkDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 386
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    return-object v0
.end method

.method public static getFactory()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;
    .locals 1

    .line 92
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->sFactory:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder$Factory;

    return-object v0
.end method

.method private getSelectedAlbumHeight(F)F
    .locals 1

    .line 659
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->isCircleShape()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    return v0

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float p1, p1

    return p1
.end method

.method private getSelectedAlbumWidth(F)F
    .locals 1

    .line 651
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->isCircleShape()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    return v0

    .line 654
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float p1, p1

    return p1
.end method

.method private handleOverScroll(FF)V
    .locals 0

    return-void
.end method

.method private isCircleShape()Z
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private limitScroll(F)F
    .locals 5

    .line 666
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    .line 667
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getX()F

    move-result v1

    .line 668
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result p1

    if-lez p1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    add-int/2addr v3, v4

    mul-int p1, p1, v3

    int-to-float p1, p1

    .line 673
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr v1, p1

    goto :goto_0

    .line 676
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_1

    .line 677
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v3

    sub-int/2addr p1, v3

    add-int/lit8 p1, p1, -0x2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    add-int/2addr v3, v4

    mul-int p1, p1, v3

    int-to-float p1, p1

    .line 678
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->getWidth()F

    move-result v0

    div-float/2addr v0, v2

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr v1, p1

    :cond_1
    :goto_0
    return v1
.end method

.method private positionSelected(FZ)Z
    .locals 7

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 508
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    .line 509
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v0

    if-ge v3, v0, :cond_2

    .line 511
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    cmpl-float v6, p1, v4

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->updateSelectedAdapterIndex(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 512
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    const-string p2, "SMUSIC-FlatResizeLayout"

    const-string v0, "Unable to change selection"

    .line 514
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    goto :goto_2

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 518
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getModelsCount()I

    move-result v0

    if-lt v3, v0, :cond_7

    const-string v0, "SMUSIC-FlatResizeLayout"

    const-string v3, "Failed to position selected view"

    .line 522
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    add-int/2addr v1, v5

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 529
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getAdapterWrap()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result p1

    rem-int v2, v1, p1

    goto :goto_4

    :cond_4
    if-gez v1, :cond_5

    goto :goto_4

    .line 534
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result p1

    sub-int/2addr p1, v5

    if-le v1, p1, :cond_6

    .line 535
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result p1

    add-int/lit8 v2, p1, -0x1

    goto :goto_4

    :cond_6
    move v2, v1

    .line 538
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->setSelectedAdapterIndex(I)V

    .line 539
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnSelectionChange()V

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->stopAnimation()V

    .line 541
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->doRealign()V

    goto :goto_5

    .line 543
    :cond_7
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    :goto_5
    return p2
.end method

.method private positionToLeft()V
    .locals 6

    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 551
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 552
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v0

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v5

    add-float/2addr v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    if-eqz v2, :cond_0

    .line 554
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 555
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v2, v2

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumSpacingK:F

    mul-float v5, v5, v0

    add-float/2addr v2, v5

    sub-float/2addr v4, v2

    goto :goto_1

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    int-to-float v0, v0

    sub-float/2addr v4, v0

    :goto_1
    const/4 v2, 0x0

    .line 560
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setX(F)V

    const/4 v0, 0x0

    .line 561
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private positionToRight()V
    .locals 6

    .line 568
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 569
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 570
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v0

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBiggestSize()F

    move-result v5

    add-float/2addr v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v4, v0

    if-eqz v2, :cond_0

    .line 572
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 573
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    int-to-float v2, v2

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumSpacingK:F

    mul-float v5, v5, v0

    add-float/2addr v2, v5

    add-float/2addr v4, v2

    goto :goto_1

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    int-to-float v0, v0

    add-float/2addr v4, v0

    :goto_1
    const/4 v2, 0x0

    .line 578
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setX(F)V

    const/4 v0, 0x0

    .line 579
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z

    move-object v0, v3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resizeToAnimationSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;F)Z
    .locals 8

    .line 585
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v0

    sub-float/2addr v0, p2

    .line 586
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setX(F)V

    .line 587
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    int-to-float p2, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpl-float p2, v0, p2

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gtz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    .line 592
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float p2, p2

    const/high16 v4, 0x40000000    # 2.0f

    cmpg-float p2, v0, p2

    if-gez p2, :cond_1

    .line 593
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float p2, p2

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimK:F

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    int-to-float v6, v6

    sub-float v6, v0, v6

    mul-float v5, v5, v6

    mul-float v5, v5, v4

    add-float/2addr p2, v5

    .line 594
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    int-to-float v4, v4

    sub-float v4, v0, v4

    goto :goto_1

    .line 596
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float p2, p2

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimK:F

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    int-to-float v6, v6

    sub-float v6, v0, v6

    mul-float v5, v5, v6

    mul-float v5, v5, v4

    sub-float/2addr p2, v5

    .line 597
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    .line 599
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V

    .line 600
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbOpK:F

    mul-float p2, p2, v4

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    add-float/2addr p2, v5

    .line 601
    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumVerticalDeltaK:F

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_2

    .line 602
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumVerticalDeltaK:F

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v5, v5, v6

    add-float/2addr v3, v5

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setY(F)V

    .line 604
    :cond_2
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAlpha(F)V

    move v3, v4

    goto :goto_2

    .line 606
    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V

    .line 607
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAlpha(F)V

    .line 608
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    add-int/2addr p2, v4

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setY(F)V

    .line 611
    :goto_2
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p2, v0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    const/high16 p2, 0x44fa0000    # 2000.0f

    const v0, 0x45098000    # 2200.0f

    if-eqz v1, :cond_5

    .line 614
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setZ(F)V

    goto :goto_4

    .line 616
    :cond_5
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setZ(F)V

    .line 619
    :goto_4
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v4, :cond_7

    .line 620
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    if-eqz v1, :cond_6

    .line 622
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setZ(F)V

    .line 623
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setAlpha(F)V

    goto :goto_5

    .line 625
    :cond_6
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setZ(F)V

    .line 626
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbTextOpK:F

    mul-float v3, v3, p2

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    add-float/2addr v3, p2

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setAlpha(F)V

    :cond_7
    :goto_5
    return v1
.end method

.method private updateMarkerViews(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V
    .locals 8

    .line 969
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getMarkerViewCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 971
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmapRatio()F

    move-result v0

    .line 972
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 973
    invoke-virtual {p1, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getMarkers(I)[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumWidth(F)F

    move-result v6

    .line 974
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelectedAlbumHeight(F)F

    move-result v7

    move v3, p2

    .line 972
    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->updateMarkerViews(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V

    .line 975
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->reloadMarkers()V

    :cond_0
    return-void
.end method

.method private updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V
    .locals 2

    .line 638
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->isCircleShape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    invoke-virtual {p1, p2, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setSize(FF)V

    goto :goto_0

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    mul-float v0, v0, p2

    .line 643
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setSize(FF)V

    goto :goto_0

    :cond_1
    div-float v0, p2, v0

    .line 645
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->setSize(FF)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected applyScroll(FF)Z
    .locals 6

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWrapAdapter:Z

    if-nez v0, :cond_1

    .line 449
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->limitScroll(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 452
    :goto_0
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v3, :cond_2

    const-string v3, "SMUSIC-FlatResizeLayout"

    .line 453
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleScroll delta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " maxDelta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_2
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 459
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_5

    cmpg-float v3, p1, v2

    if-gez v3, :cond_4

    add-float v3, p1, v0

    neg-float v0, v0

    goto :goto_2

    :cond_4
    sub-float v3, p1, v0

    goto :goto_2

    :cond_5
    move v0, p1

    const/4 v3, 0x0

    .line 469
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->positionSelected(FZ)Z

    move-result v1

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->positionToRight()V

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->positionToLeft()V

    if-eqz v1, :cond_7

    .line 476
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->handleOverScroll(FF)V

    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 478
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v4, v4

    const v5, 0x45098000    # 2200.0f

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setPosition(FFF)V

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    cmpl-float p1, p2, v2

    if-eqz p1, :cond_7

    .line 482
    :cond_6
    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->applyScroll(FF)Z

    .line 485
    :cond_7
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_8

    const-string p1, "SMUSIC-FlatResizeLayout"

    .line 486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleScroll end limited: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1
.end method

.method public bitmapUpdated(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 3

    .line 290
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->isCircleShape()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 291
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBiggestSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateSize(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;F)V

    .line 292
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmapRatio()F

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    if-nez v2, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateMarkerViews(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    .line 305
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAdapterIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedAdapterIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getChildDelta(I)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 309
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getWidth()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 310
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelWidth:F

    .line 311
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mLastModelHeight:F

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->fireOnSelectedAlbumSizeChanged()V

    :cond_4
    return-void
.end method

.method drawModel(Landroid/graphics/Canvas;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V
    .locals 7

    if-eqz p2, :cond_4

    .line 318
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAlpha()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 320
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 321
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->updateBoundsRect(Landroid/graphics/Rect;I)V

    .line 322
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Rectangle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    .line 327
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getArtworkDrawable(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 328
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShape:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;->Circle:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig$Shape;

    if-ne v3, v4, :cond_1

    .line 329
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v4, v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    neg-int v4, v4

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v6, v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMeshRadius:I

    neg-int v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 331
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 332
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 333
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    const/4 v0, 0x0

    .line 337
    :goto_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 338
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 340
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 341
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v4

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    .line 342
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v4

    mul-float v4, v4, v1

    float-to-int v4, v4

    .line 343
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 344
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->updateBoundsRect(Landroid/graphics/Rect;I)V

    .line 345
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRect:Landroid/graphics/Rect;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public getChildDelta(I)F
    .locals 5

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedAdapterIndex()I

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-ne p1, v0, :cond_1

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1

    :cond_0
    return v1

    .line 209
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimationIsNext:Z

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getRightFromSelected()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz v2, :cond_2

    .line 211
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_2

    .line 212
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getLeftFromSelected()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz v2, :cond_4

    .line 217
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 218
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz v2, :cond_6

    .line 227
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_6

    .line 228
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz v2, :cond_8

    .line 233
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v3

    if-ne v3, p1, :cond_8

    .line 234
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1

    .line 237
    :cond_9
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_b

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    .line 241
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    const-string v2, "SMUSIC-FlatResizeLayout"

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get child delta to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " loaded indexes: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v1
.end method

.method public getConfig()Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    return-object v0
.end method

.method public getExploreByTouchHelper(Landroid/view/View;)Landroid/support/v4/widget/ExploreByTouchHelper;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mExploreByTouchHelper:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$FlatResizeLayoutExploreByTouchHelper;

    return-object p1
.end method

.method public getMaxSelectedDelta()F
    .locals 1

    .line 254
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    return v0
.end method

.method protected handleScroll(FF)Z
    .locals 5

    .line 393
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 394
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "SMUSIC-FlatResizeLayout"

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleScroll skipped dx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " dy: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hasAdapter: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    .line 400
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_8

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_1

    .line 405
    :cond_2
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_3

    const-string v0, "SMUSIC-FlatResizeLayout"

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScroll dx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " dy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-nez v3, :cond_4

    cmpl-float p2, p2, v0

    if-nez p2, :cond_4

    .line 411
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->applyScroll(FF)Z

    return v1

    :cond_4
    cmpg-float p2, p1, v0

    if-gez p2, :cond_5

    const/4 v2, -0x1

    .line 424
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    :goto_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_6

    if-nez v1, :cond_6

    .line 428
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxScrollingDistance:I

    int-to-float p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    int-to-float v1, v2

    mul-float v1, v1, p2

    .line 429
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->applyScroll(FF)Z

    move-result v1

    sub-float/2addr p1, p2

    goto :goto_0

    .line 432
    :cond_6
    sget-boolean p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->DEBUG_SCROLL:Z

    if-eqz p1, :cond_7

    const-string p1, "SMUSIC-FlatResizeLayout"

    const-string p2, "handleScroll end"

    .line 433
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    :goto_1
    const-string v0, "SMUSIC-FlatResizeLayout"

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long distance scroll ignored: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " distanceY: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;
    .locals 3

    .line 1019
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;-><init>()V

    .line 1020
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->isCircleShape()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setRectangular(Z)V

    .line 1021
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v1, :cond_1

    .line 1022
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;-><init>()V

    .line 1023
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v2, :cond_0

    .line 1024
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$TextMatrixGenerator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    :cond_0
    const/4 v2, 0x1

    .line 1029
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setVisibility(Z)V

    .line 1031
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ViewModel;->setInheritAlpha(Z)V

    .line 1033
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->addChild(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/ChildModel;)I

    .line 1035
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->isCircleShape()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1036
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout$AspectAwareMatrixGenerator;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setMatrixGenerator(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MatrixGenerator;)V

    .line 1038
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumContentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected bridge synthetic obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->obtainModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    move-result-object v0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;II)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->hasAdapter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWidth:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    if-ne v1, p3, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAligned:Z

    if-nez v1, :cond_1

    .line 270
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWidth:I

    .line 271
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    .line 272
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAligned:Z

    .line 273
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mWidth:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->realign(II)V

    const/4 p2, 0x1

    .line 274
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAligned:Z

    .line 276
    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    if-eqz p2, :cond_2

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyArtworksToArray()V

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyChildsToArray()V

    .line 280
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    .line 281
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v1, p2

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 282
    invoke-virtual {p0, p1, v3, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->drawModel(Landroid/graphics/Canvas;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 856
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    monitor-enter p1

    const/16 v0, 0x4100

    .line 857
    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 859
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->getMatrix()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->beginFrame([F)V

    .line 861
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    if-eqz v0, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyArtworksToArray()V

    .line 863
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->copyChildsToArray()V

    :cond_0
    const/4 v0, 0x0

    .line 865
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    .line 867
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->resetModified([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 868
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;->resetModified([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V

    .line 870
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mVBOCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;)V

    const/16 v0, 0xbe2

    .line 871
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 873
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->hasShadow()Z

    move-result v1

    const/16 v2, 0x303

    if-eqz v1, :cond_1

    const/16 v1, 0x302

    .line 875
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 876
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->getMatrix()[F

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->render([F[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 879
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->bind()V

    .line 881
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindVertexAttribArrays()V

    const/4 v1, 0x1

    .line 884
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 885
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mChildsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;->getLength()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)V

    .line 887
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 888
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 803
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v1, p1

    .line 806
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 808
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v7

    if-ltz v7, :cond_1

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAlpha()F

    move-result v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_0

    .line 810
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getHeight()F

    move-result v8

    .line 811
    iget-boolean v9, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz v9, :cond_2

    .line 812
    invoke-virtual {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getChild(I)Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHeight()F

    move-result v9

    add-float/2addr v8, v9

    :cond_2
    if-eqz v7, :cond_3

    .line 815
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getX()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getWidth()F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v7, v7, v9

    if-gtz v7, :cond_3

    .line 816
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getY()F

    move-result v7

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v8, v10

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_4

    .line 817
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getZ()F

    move-result v7

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_0

    .line 820
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getZ()F

    move-result v2

    move v3, v2

    move-object v2, v4

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    .line 825
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->fireOnItemClick(I)V

    .line 827
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mSingleScroll:Z

    if-nez p1, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->getSelection()I

    move-result v0

    if-eq p1, v0, :cond_6

    .line 828
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->animateToChild(I)V

    :cond_6
    return v5
.end method

.method protected onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3

    .line 836
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->getBackgroundColor()I

    move-result p1

    .line 838
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p2, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 839
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 838
    invoke-static {p2, v1, v2, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 842
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz p1, :cond_0

    const-string p1, "MutableTextures"

    .line 843
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 845
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mVBOCache:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/IVBOCache;->reset()V

    .line 846
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    .line 847
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Meshes;->getTexturedRectangle(F)[F

    move-result-object p2

    const/4 v0, 0x3

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;-><init>([FI)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMarkersVBO:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/VBO;

    .line 848
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mShadowMesh:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShadowMesh;->initShader(Landroid/content/Context;)V

    const/16 p1, 0xb71

    .line 850
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x203

    .line 851
    invoke-static {p1}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    return-void
.end method

.method protected realign(II)V
    .locals 7

    .line 687
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x459c4000    # 5000.0f

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setDistance(FF)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setLookAt(FFF)V

    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    const v2, 0x458ca000    # 4500.0f

    invoke-virtual {v0, v1, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setPosition(FFF)V

    .line 690
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCamera:Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v0, v1, v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/Camera;->setViewport(FFFF)V

    .line 699
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mSingleScroll:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 703
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mIsPortrait:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    .line 711
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getCount()I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    .line 718
    :cond_2
    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->setListParams(II)V

    .line 721
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    array-length v2, v2

    if-eq v2, v0, :cond_4

    .line 722
    :cond_3
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRenderModelsArray:[Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    :cond_4
    const/4 v0, 0x1

    .line 725
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    .line 728
    div-int/2addr p1, v3

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    .line 729
    div-int/2addr p2, v3

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    .line 732
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    add-int/2addr p1, p2

    div-int/2addr p1, v3

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    add-int/2addr p1, p2

    .line 734
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    .line 735
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimRight:I

    .line 737
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    int-to-float p1, p1

    div-float v2, p2, p1

    .line 738
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimK:F

    .line 739
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumOpacity:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbOpK:F

    .line 740
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextSelectedOpacity:F

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v5, v5, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mTextUnselectedOpacity:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAnimLeft:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v3, v5

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbTextOpK:F

    .line 768
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v3, p2

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    int-to-float p2, p2

    div-float/2addr p2, v0

    add-float/2addr v3, p2

    add-float/2addr v2, v4

    div-float/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    .line 773
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacing:I

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSpacingAdditional:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxSelectedDx:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumSpacingK:F

    .line 775
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumVerticalDelta:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAlbumVerticalDeltaK:F

    .line 777
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mRealignLock:Ljava/lang/Object;

    monitor-enter p1

    .line 778
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 779
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setY(F)V

    const/high16 v2, 0x44fa0000    # 2000.0f

    .line 780
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setZ(F)V

    .line 781
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v3, v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setSize(FF)V

    .line 782
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setOriginalModelSize(I)V

    .line 783
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAlpha(F)V

    .line 785
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateMarkerViews(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    goto :goto_1

    .line 788
    :cond_5
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mModels:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ModelsList;->getSelectedModel()Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    .line 789
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mSelectedAlbumSize:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setSize(FF)V

    .line 790
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterX:I

    int-to-float v0, v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mCenterY:I

    int-to-float v2, v2

    const v3, 0x45098000    # 2200.0f

    invoke-virtual {p2, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setPosition(FFF)V

    .line 792
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mAlbumSize:I

    div-int/lit8 p2, p2, 0x4

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mMaxScrollingDistance:I

    .line 795
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->handleScroll(FF)Z

    .line 796
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method protected recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;)V
    .locals 0

    .line 78
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->recycleModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;)V

    return-void
.end method

.method protected reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;IZ)V
    .locals 1

    if-nez p3, :cond_0

    .line 939
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->getAdapterIndex()I

    move-result p3

    if-ne p3, p2, :cond_0

    return-void

    .line 948
    :cond_0
    iget-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mHasTexts:Z

    if-eqz p3, :cond_1

    .line 949
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->bindText(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    .line 951
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;->getAlbArtUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    .line 960
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->updateMarkerViews(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;I)V

    .line 961
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;->setAdapterIndex(I)V

    .line 962
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mConfig:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;

    iget p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayoutConfig;->mBitmapDimension:I

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    invoke-direct {p3, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/publisher/BitmapModelPublisher;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 963
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    const/4 p1, 0x1

    .line 965
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mNeedCopyToArray:Z

    return-void
.end method

.method protected bridge synthetic reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/Model;IZ)V
    .locals 0

    .line 78
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->reloadModel(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/MarkersModel;IZ)V

    return-void
.end method

.method public setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/FlatResizeLayout;->mShader:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->resetMutableTexturesCache()V

    .line 496
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/ScrollListLayout;->setAdapter(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;I)V

    return-void
.end method
