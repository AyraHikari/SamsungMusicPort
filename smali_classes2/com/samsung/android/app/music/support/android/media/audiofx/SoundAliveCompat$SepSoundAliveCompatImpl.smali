.class Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SepSoundAliveCompatImpl"
.end annotation


# instance fields
.field private final mAudioSessionId:I

.field private final mOnErrorListener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

.field private final mPriority:I

.field private mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;


# direct methods
.method public constructor <init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mPriority:I

    .line 156
    iput p2, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mAudioSessionId:I

    .line 157
    iput-object p3, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mOnErrorListener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    .line 158
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->ensureSoundAlive()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;)Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mOnErrorListener:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;

    return-object p0
.end method

.method private ensureSoundAlive()V
    .locals 3

    .line 172
    :try_start_0
    new-instance v0, Landroid/media/audiofx/SemSoundAlive;

    iget v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mPriority:I

    iget v2, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mAudioSessionId:I

    invoke-direct {v0, v1, v2}, Landroid/media/audiofx/SemSoundAlive;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    new-instance v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl$1;-><init>(Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;)V

    invoke-virtual {v0, v1}, Landroid/media/audiofx/SemSoundAlive;->setErrorListener(Landroid/media/audiofx/SemSoundAlive$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->release()V

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/SemSoundAlive;->setErrorListener(Landroid/media/audiofx/SemSoundAlive$OnErrorListener;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    invoke-virtual {v0}, Landroid/media/audiofx/SemSoundAlive;->release()V

    .line 166
    iput-object v1, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    :cond_0
    return-void
.end method

.method public set3dEffectPosition(ZD)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->ensureSoundAlive()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    if-eqz v0, :cond_1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->mSemSoundAlive:Landroid/media/audiofx/SemSoundAlive;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/audiofx/SemSoundAlive;->set3dEffectPosition(ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;->release()V

    :cond_1
    :goto_0
    return-void
.end method
