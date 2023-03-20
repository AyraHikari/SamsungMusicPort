.class public Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;
.super Ljava/lang/Object;
.source "AudioThumbnailCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;
    }
.end annotation


# static fields
.field private static final HIGHLIGHT_OFFSET:Ljava/lang/String; = "highlight_offset"

.field public static final OPEN_ERR_NOT_ENOUGH_MEMORY:I

.field public static final OPEN_ERR_NOT_OPEN_FILE:I

.field public static final OPEN_ERR_UNSUPPORT_FILE_TYPE:I

.field public static final OPEN_SUCCESS:I

.field public static final RESULT_EXTRACT:I

.field private static final TAG:Ljava/lang/String; = "AudioThumbnailCompat"

.field private static final UNDEFINED:I


# instance fields
.field private mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

.field private mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    sput v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->RESULT_EXTRACT:I

    .line 2
    sput v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_SUCCESS:I

    const/4 v2, -0x3

    .line 3
    sput v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_UNSUPPORT_FILE_TYPE:I

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x2

    .line 4
    :goto_1
    sput v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_NOT_ENOUGH_MEMORY:I

    const/4 v0, -0x7

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_NOT_OPEN_FILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-direct {v0}, Lcom/samsung/android/media/mir/SemAudioThumbnail;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    .line 4
    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThumbnailCompat() Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 6
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThumbnailCompat() NoClassDefFoundError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    .line 7
    sget-object v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioThumbnailCompat() UnsatisfiedLinkError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8
    :cond_0
    iput-object v1, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    .line 9
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    :goto_0
    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getResultIntent(Landroid/net/Uri;I)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p0, :cond_1

    if-lez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "highlight_offset"

    invoke-virtual {p0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->close()V

    :goto_0
    return-void
.end method

.method public extractHighlight(Landroid/net/Uri;Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    invoke-virtual {v0, p2}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->checkFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p3, v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractStarted(Z)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mSemAudioThumbnail:Lcom/samsung/android/media/mir/SemAudioThumbnail;

    new-instance v1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$1;-><init>(Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;Landroid/net/Uri;)V

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/media/mir/SemAudioThumbnail;->extract(Ljava/lang/String;Lcom/samsung/android/media/mir/SemAudioThumbnail$ResultListener;)V

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_UNSUPPORT_FILE_TYPE:I

    invoke-interface {p3, p1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractError(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->open(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 8
    invoke-interface {p3, p1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractStarted(Z)V

    .line 9
    invoke-interface {p3, p2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractError(I)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p3, v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;->onExtractStarted(Z)V

    .line 11
    iget-object p2, p0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->mRingtoneRecommenderSdlCompat:Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;

    new-instance v0, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$2;-><init>(Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;Landroid/net/Uri;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;->doExtract(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$OnHighlightResultListener;)V

    :cond_3
    :goto_0
    return-void
.end method
