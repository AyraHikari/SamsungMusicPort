.class public abstract Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

.field b:J

.field public final c:Ljava/lang/Exception;

.field private final d:J

.field private e:Ljava/lang/String;

.field private volatile f:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->f:Z

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .line 46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->d:J

    .line 48
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->c:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->a:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " elapsed time: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->e:Ljava/lang/String;

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " loading time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->f:Z

    return-void
.end method

.method public c()J
    .locals 4

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->d:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public abstract d()Z
.end method

.method public abstract e()V
.end method

.method public z_()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/request/BaseArtworkRequest;->f:Z

    return v0
.end method
