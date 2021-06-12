.class public final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TEXT_SIZE_STATE:I = 0x1

.field private static final PREF_NAME:Ljava/lang/String; = "music_player_pref"

.field private static final PREF_TEXT_SIZE_STATE:Ljava/lang/String; = "text_size_state"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterView:Landroid/support/v7/widget/RecyclerView;

.field private mFromUser:Z

.field private final mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

.field private final mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

.field private mOnTextMagnificationChangedListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

.field private mPixelLineSpacing:I

.field private final mResources:Landroid/content/res/Resources;

.field private mScaledTextSize:F

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsUx-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Landroid/view/ViewGroup;I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    const-string p2, "music_player_pref"

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 61
    invoke-virtual {p1, p4, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)V

    .line 63
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;->setOnStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$OnStateChangedListener;)V

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->a(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->loadSetting()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->dispatchState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->saveSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mOnTextMagnificationChangedListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mFromUser:Z

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mScaledTextSize:F

    return p0
.end method

.method private dispatchState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    iget v0, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->d:I

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/res/Resources;IF)F

    move-result v2

    .line 151
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    .line 152
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 153
    iget p1, p1, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->a:I

    .line 155
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFontSizeChanged state-id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", text-size : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", line-spacing : "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->dispatchTextSizeChanged(FI)V

    .line 158
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchTextSizeChanged(FI)V
    .locals 1

    .line 162
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mScaledTextSize:F

    .line 163
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelLineSpacing:I

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 167
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsView:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->reHighlightLine(I)V

    .line 168
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method private loadSetting()V
    .locals 3

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mFromUser:Z

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "text_size_state"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;->setState(I)V

    .line 131
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mFromUser:Z

    return-void
.end method

.method private saveSetting()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "text_size_state"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    .line 136
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;->getState()Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;->a:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;->setVisibility(I)V

    return-void
.end method

.method public onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    .line 83
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;->getState()Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->dispatchState(Lcom/samsung/android/app/musiclibrary/ui/widget/StateButton$State;)V

    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 26
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 2

    .line 99
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 100
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelLineSpacing:I

    int-to-float p1, p1

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mResources:Landroid/content/res/Resources;

    .line 102
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x1

    .line 101
    invoke-static {v0, p1, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    .line 104
    iget-object p3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 106
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mPixelLineSpacing:I

    iput v1, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 107
    iget-object p3, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, p1, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 108
    iget-object p1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mScaledTextSize:F

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public setOnTextMagnificationChangedListener(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mOnTextMagnificationChangedListener:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;

    return-object p0
.end method

.method public show()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;->mLyricsMagnificationButton:Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LyricsMagnificationButton;->setVisibility(I)V

    return-void
.end method
