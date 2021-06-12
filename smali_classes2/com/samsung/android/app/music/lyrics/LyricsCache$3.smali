.class Lcom/samsung/android/app/music/lyrics/LyricsCache$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsCache;Landroid/os/Handler;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsCache$3;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 106
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange selfChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " uri: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$302(Lcom/samsung/android/app/music/lyrics/LyricsCache;J)J

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsCache$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsCache;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsCache;->access$400(Lcom/samsung/android/app/music/lyrics/LyricsCache;)V

    return-void
.end method
