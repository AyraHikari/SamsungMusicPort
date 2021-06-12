.class Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsCacheHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LyricsCacheHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/samsung/android/app/music/lyrics/LyricsCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-direct {v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsCacheHolder;->sInstance:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/samsung/android/app/music/lyrics/LyricsCache;
    .locals 1

    .line 193
    sget-object v0, Lcom/samsung/android/app/music/lyrics/LyricsCache$LyricsCacheHolder;->sInstance:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    return-object v0
.end method
