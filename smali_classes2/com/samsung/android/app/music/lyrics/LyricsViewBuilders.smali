.class public abstract enum Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixed:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixedHighlightOnlyWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleScrollable:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field public static final enum StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

.field private static final sHeaderViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder<",
            "Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$1;

    const-string v1, "StyleTitleFixed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixed:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 52
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$2;

    const-string v1, "StyleTitleFixedWithMagnifier"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$3;

    const-string v1, "StyleTitleFixedHighlightOnly"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 88
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$4;

    const-string v1, "StyleTitleFixedHighlightOnlyWithMagnifier"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnlyWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 102
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$5;

    const-string v1, "StyleTitleScrollable"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleScrollable:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 130
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$6;

    const-string v1, "StyleTitleScrollableHighlightOnly"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    const/4 v0, 0x6

    .line 23
    new-array v0, v0, [Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    sget-object v1, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixed:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleFixedHighlightOnlyWithMagnifier:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleScrollable:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->StyleTitleScrollableHighlightOnly:Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->$VALUES:[Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    .line 186
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$7;

    invoke-direct {v0}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$7;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->sHeaderViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders$1;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    .locals 0

    .line 23
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->createHighlightFocusedViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 0

    .line 23
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->withMagnifier(Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->sHeaderViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    return-object v0
.end method

.method private static createHighlightFocusedViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 172
    new-instance p2, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    const v0, 0x7f0f004c

    invoke-direct {p2, p0, v0, p1}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;-><init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    return-object p2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
    .locals 1

    .line 23
    const-class v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->$VALUES:[Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;

    return-object v0
.end method

.method private static withMagnifier(Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 1

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    .line 161
    new-instance p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;

    const p2, 0x7f130346

    .line 162
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    const p3, 0x7f040107

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Landroid/view/ViewGroup;I)V

    .line 161
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V

    return-object p1
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 1

    const/4 v0, -0x1

    .line 177
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object p1

    return-object p1
.end method

.method public abstract build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end method

.method public abstract hasFixedHeader()Z
.end method
