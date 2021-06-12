.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private activeQueueItemId:J

.field private bundle:Landroid/os/Bundle;

.field private duration:J

.field private isSupposedToPlaying:Z

.field private playSpeed:F

.field private playerType:I

.field private position:J

.field private soundPath:I

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    int-to-long v0, v0

    .line 125
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->activeQueueItemId:J

    const-wide/16 v0, -0x1

    .line 127
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->duration:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 128
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playSpeed:F

    const/4 v0, 0x1

    .line 130
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playerType:I

    .line 131
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->soundPath:I

    return-void
.end method

.method private final ensureBundle()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->bundle:Landroid/os/Bundle;

    :cond_0
    return-void
.end method


# virtual methods
.method public final build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .line 193
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getActiveQueueItemId$musicLibrary_release()J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->activeQueueItemId:J

    return-wide v0
.end method

.method public final getBundle$musicLibrary_release()Landroid/os/Bundle;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getDuration$musicLibrary_release()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->duration:J

    return-wide v0
.end method

.method public final getPlaySpeed$musicLibrary_release()F
    .locals 1

    .line 128
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playSpeed:F

    return v0
.end method

.method public final getPlayerType$musicLibrary_release()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playerType:I

    return v0
.end method

.method public final getPosition$musicLibrary_release()J
    .locals 2

    .line 126
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->position:J

    return-wide v0
.end method

.method public final getSoundPath$musicLibrary_release()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->soundPath:I

    return v0
.end method

.method public final getState$musicLibrary_release()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->state:I

    return v0
.end method

.method public final isSupposedToPlaying$musicLibrary_release()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->isSupposedToPlaying:Z

    return v0
.end method

.method public final setActiveQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 135
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->activeQueueItemId:J

    return-object p0
.end method

.method public final setActiveQueueItemId$musicLibrary_release(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->activeQueueItemId:J

    return-void
.end method

.method public final setBundle$musicLibrary_release(Landroid/os/Bundle;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public final setContent(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 2

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->ensureBundle()V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "player_extra_content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final setDuration(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 160
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->duration:J

    return-object p0
.end method

.method public final setDuration$musicLibrary_release(J)V
    .locals 0

    .line 127
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->duration:J

    return-void
.end method

.method public final setMessage(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 2

    .line 175
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->ensureBundle()V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->bundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "player_extra_message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public final setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 165
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playSpeed:F

    return-object p0
.end method

.method public final setPlaySpeed$musicLibrary_release(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playSpeed:F

    return-void
.end method

.method public final setPlayerState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 140
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->state:I

    return-object p0
.end method

.method public final setPlayerType(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 145
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playerType:I

    return-object p0
.end method

.method public final setPlayerType$musicLibrary_release(I)V
    .locals 0

    .line 130
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->playerType:I

    return-void
.end method

.method public final setPosition(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->position:J

    return-object p0
.end method

.method public final setPosition$musicLibrary_release(J)V
    .locals 0

    .line 126
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->position:J

    return-void
.end method

.method public final setSoundPath(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 150
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->soundPath:I

    return-object p0
.end method

.method public final setSoundPath$musicLibrary_release(I)V
    .locals 0

    .line 131
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->soundPath:I

    return-void
.end method

.method public final setState$musicLibrary_release(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->state:I

    return-void
.end method

.method public final setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->isSupposedToPlaying:Z

    return-object p0
.end method

.method public final setSupposedToPlaying$musicLibrary_release(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->isSupposedToPlaying:Z

    return-void
.end method
