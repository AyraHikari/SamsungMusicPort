.class final Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/tag/TagData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Private"
.end annotation


# instance fields
.field final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;->a:Z

    return-void
.end method

.method static a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;
    .locals 1

    .line 84
    new-instance v0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 93
    instance-of v0, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;->a:Z

    iget-boolean v0, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;->a:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Private : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/player/fullplayer/tag/TagData$Private;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
