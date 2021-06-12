.class public Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultSyncTextColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mDefaultTextColorResId:I
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation
.end field

.field private mDefaultTextSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field

.field private final mLayoutResId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private final mViewBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultTextSizeResId:I

    .line 98
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultTextColorResId:I

    .line 101
    iput v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultSyncTextColorResId:I

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mViewBinders:Ljava/util/ArrayList;

    .line 115
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mContext:Landroid/content/Context;

    .line 116
    iput p2, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mLayoutResId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)Landroid/content/Context;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mLayoutResId:I

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)Ljava/util/ArrayList;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mViewBinders:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultTextSizeResId:I

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultTextColorResId:I

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultSyncTextColorResId:I

    return p0
.end method


# virtual methods
.method public addHeaderViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mViewBinders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;
    .locals 2

    .line 145
    new-instance v0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;-><init>(Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$1;)V

    return-object v0
.end method

.method public setDefaultSyncTextColorResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 130
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultSyncTextColorResId:I

    return-object p0
.end method

.method public setDefaultTextColorResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 125
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultTextColorResId:I

    return-object p0
.end method

.method public setDefaultTextSizeResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mDefaultTextSizeResId:I

    return-object p0
.end method

.method public setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-object p0
.end method
