.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollState;,
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollType;
    }
.end annotation


# static fields
.field private static final ATT_ANCHOR_LIST:Ljava/lang/String; = "anchorList"

.field private static final AUTO_NAME_SPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final TAG:Ljava/lang/String;

.field private static final sBlockUserTouch:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# instance fields
.field private final mActiveItemViewBinders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

.field private final mAnchorViewId:I

.field private mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

.field private mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

.field private final mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

.field private final mItemViewBinders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

.field private final mOnGenericMotionListener2:Landroid/view/View$OnGenericMotionListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOnTouchListener2:Landroid/view/View$OnTouchListener;

.field private final mOnVisibilityChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mResetControllers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;",
            ">;"
        }
    .end annotation
.end field

.field private mRestorePositionEnabled:Z

.field private final mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsUx-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->sBlockUserTouch:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 125
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener2:Landroid/view/View$OnTouchListener;

    .line 85
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnGenericMotionListener2:Landroid/view/View$OnGenericMotionListener;

    .line 94
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    .line 98
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    .line 100
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    .line 106
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    const-string p1, "http://schemas.android.com/apk/res-auto"

    const-string v1, "anchorList"

    const/4 v2, 0x0

    .line 126
    invoke-interface {p2, p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAnchorViewId:I

    .line 127
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnGenericMotionListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnGenericMotionListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnGenericMotionListener2:Landroid/view/View$OnGenericMotionListener;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/view/View$OnTouchListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener2:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    return-object p0
.end method

.method private activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewBinder;)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {p1, p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Type parameter of ItemController is not matched with recycler adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method private attachViewBinders()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 277
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewBinder;)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-interface {p1, p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V

    :cond_1
    return-void
.end method

.method private detachViewBinders()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 283
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureAnchorView()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAnchorViewId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Anchor id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAnchorViewId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Anchor view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$4;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener2:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnGenericMotionListener2:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetOutlineStrokeEnabled(Z)V

    :cond_1
    return-void
.end method

.method private findItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 324
    :cond_0
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;->getChild()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object p1

    .line 330
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 331
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method private setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 263
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->addListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 264
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    .line 265
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 266
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->removeListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 269
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 270
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 248
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->addListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 249
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRestorePositionEnabled:Z

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 250
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 251
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    .line 253
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->removeListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;)V

    .line 254
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    .line 255
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSyncedLyricEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->setOwner(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->resetOwner()V

    .line 241
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    return-void
.end method


# virtual methods
.method public final addItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    return-void
.end method

.method public final addOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addResetController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final clearItemViewBinders()V
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 356
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 357
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->removeItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final clearOnVisibilityChangedListeners()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final findItemViewBinder(Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    .line 311
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getScrollState()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mScrollHelper:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;->access$500(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->getState()I

    move-result v0

    return v0
.end method

.method public highlightLine(II)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 461
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->highlightLine(IIF)V

    return-void
.end method

.method public highlightLine(IIF)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;->set(IIF)V

    .line 474
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightRunnable:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightRunnable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 139
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->ensureAnchorView()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 229
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->access$600(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 231
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 223
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 224
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$SavedState;-><init>(Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_2

    .line 210
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;->onVisibilityChanged(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public reHighlightLine(I)V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    .line 455
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$2000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 456
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->highlightLine(II)V

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final removeItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->deactivateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    return-void
.end method

.method public final removeOnVisibilityChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnVisibilityChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final reset()V
    .locals 2

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    .line 479
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    .line 480
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)V

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->clearItemViewBinders()V

    .line 483
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;

    .line 484
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ResetController;->reset()V

    goto :goto_0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mResetControllers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final setFocusController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    if-eq v0, p1, :cond_3

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 446
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Z)V

    .line 448
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mFocusController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    :cond_3
    return-void
.end method

.method public final setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eq v0, p1, :cond_3

    .line 422
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mItemViewBinders:Ljava/util/Set;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 430
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightControllerEnabled(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    .line 432
    :cond_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    :cond_3
    return-void
.end method

.method public final setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 378
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    if-nez p1, :cond_1

    .line 380
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    goto :goto_0

    .line 382
    :cond_1
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/LyricsWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;I)V

    move-object p1, v1

    .line 384
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 385
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 386
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 387
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1800(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    const/4 v1, 0x0

    .line 388
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setSyncedLyricEnabled(Z)V

    .line 389
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->isSyncable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 390
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setSyncedLyricEnabled(Z)V

    :cond_2
    if-eqz v0, :cond_3

    .line 393
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->detachViewBinders()V

    .line 394
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->attachViewBinders()V

    .line 396
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLyrics lyric lines : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    .line 404
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;->access$1900(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mActiveItemViewBinders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;

    const/4 v2, 0x0

    .line 408
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->activateItemViewBinderInternal(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;Z)V

    goto :goto_0

    .line 411
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    .line 412
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mAdapter:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_2
    return-void
.end method

.method public final setOnAnchorGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method

.method public final setOnAnchorTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final setRestorePositionEnabled(Z)V
    .locals 1

    .line 370
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRestorePositionEnabled:Z

    .line 371
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mHighlightController:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;->access$700(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;Z)V

    :cond_0
    return-void
.end method

.method public final setTouchEnabled(Z)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->sBlockUserTouch:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    if-eqz p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mOnTouchListener2:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->sBlockUserTouch:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method
