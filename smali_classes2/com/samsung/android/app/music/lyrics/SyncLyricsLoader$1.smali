.class Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/cp/LyricsIssuer$OnLyricsIssuedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->requestLyric(IJLjava/lang/String;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

.field final synthetic val$mediaId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;J)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;->this$0:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    iput-wide p2, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;->val$mediaId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsIssued(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;->this$0:Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;

    iget-wide v1, p0, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader$1;->val$mediaId:J

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;->access$300(Lcom/samsung/android/app/music/lyrics/SyncLyricsLoader;JLcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method
