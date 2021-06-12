.class final Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Connection"
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method private constructor <init>(ZI)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->a:Z

    .line 210
    iput p2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->b:I

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;
    .locals 1

    const-string v0, "connectivity"

    .line 202
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 203
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x2

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    .line 205
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isOnline()Z

    move-result p1

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;-><init>(ZI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 215
    instance-of v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 216
    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;

    .line 217
    iget-boolean v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->a:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->a:Z

    if-ne v0, v2, :cond_0

    iget p1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->b:I

    iget v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->b:I

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isOnline : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Connection;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
