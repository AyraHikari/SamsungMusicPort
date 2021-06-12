.class public final Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$State;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;,
        Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;
    }
.end annotation


# static fields
.field private static final CONTENT:Ljava/lang/String; = "player_extra_content"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;

.field private static final Empty$delegate:Lkotlin/Lazy;

.field private static final MESSAGE:Ljava/lang/String; = "player_extra_message"

.field private static final TEMP_LAZY_PLAYER_INITIALIZE:Z


# instance fields
.field private final activeQueueItemId:J

.field private final bundle:Landroid/os/Bundle;

.field private final durationInternal:J

.field private final isSupposedToPlaying:Z

.field private final playSpeed:F

.field private final playerState:I

.field private final playerType:I

.field private final position:J

.field private final soundPath:I

.field private final supposedToPlayingArray:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion;

    .line 225
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion$Empty$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion$Empty$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->Empty$delegate:Lkotlin/Lazy;

    .line 231
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->supposedToPlayingArray:[Z

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->activeQueueItemId:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerState:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->soundPath:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->position:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->durationInternal:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playSpeed:F

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->supposedToPlayingArray:[Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->supposedToPlayingArray:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying:Z

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->supposedToPlayingArray:[Z

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getActiveQueueItemId$musicLibrary_release()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->activeQueueItemId:J

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getState$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerState:I

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getPlayerType$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerType:I

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getSoundPath$musicLibrary_release()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->soundPath:I

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getPosition$musicLibrary_release()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->position:J

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getDuration$musicLibrary_release()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->durationInternal:J

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getPlaySpeed$musicLibrary_release()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playSpeed:F

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->isSupposedToPlaying$musicLibrary_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying:Z

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->getBundle$musicLibrary_release()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lkotlin/Lazy;
    .locals 1

    .line 19
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->Empty$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getActiveQueueItemId()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->activeQueueItemId:J

    return-wide v0
.end method

.method public final getContent()Landroid/os/Bundle;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "player_extra_content"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContentTimeStamp()J
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getContent()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "player_extra_content_time_stamp"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getDuration()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->durationInternal:J

    return-wide v0
.end method

.method public final getMessage()Landroid/os/Bundle;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "player_extra_message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getMessageTimeStamp()J
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessage()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "player_extra_message_time_stamp"

    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getPlaySpeed()F
    .locals 1

    .line 31
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playSpeed:F

    return v0
.end method

.method public final getPlayerState()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerState:I

    return v0
.end method

.method public final getPlayerType()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerType:I

    return v0
.end method

.method public final getPosition()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->position:J

    return-wide v0
.end method

.method public final getSoundPath()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->soundPath:I

    return v0
.end method

.method public final isSamePlaybackState(Z)Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying:Z

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isSupposedToPlaying()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MusicPlaybackState > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Active queue item id : "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->activeQueueItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PlayState : "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " PlayPosition : "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PlayDuration : "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-wide v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->durationInternal:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " PlaySpeed : "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " SupposedToPlay : "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " PlayerType : "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SoundPath : "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->soundPath:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string v1, " Message : "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    const-string v2, "player_extra_message"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Content : "

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    const-string v2, "player_extra_content"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->activeQueueItemId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 112
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playerType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->soundPath:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->position:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->durationInternal:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->playSpeed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 118
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->supposedToPlayingArray:[Z

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    .line 119
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->supposedToPlayingArray:[Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 120
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
