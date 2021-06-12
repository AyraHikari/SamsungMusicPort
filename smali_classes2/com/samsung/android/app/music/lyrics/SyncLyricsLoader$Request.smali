.class Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# instance fields
.field final clients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;",
            ">;"
        }
    .end annotation
.end field

.field final requestTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->requestTime:J

    .line 181
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$Request;-><init>()V

    return-void
.end method
