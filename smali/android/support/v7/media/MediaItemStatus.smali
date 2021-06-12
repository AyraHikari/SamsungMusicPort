.class public final Landroid/support/v7/media/MediaItemStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaItemStatus$Builder;
    }
.end annotation


# static fields
.field public static final EXTRA_HTTP_RESPONSE_HEADERS:Ljava/lang/String; = "android.media.status.extra.HTTP_RESPONSE_HEADERS"

.field public static final EXTRA_HTTP_STATUS_CODE:Ljava/lang/String; = "android.media.status.extra.HTTP_STATUS_CODE"

.field static final KEY_CONTENT_DURATION:Ljava/lang/String; = "contentDuration"

.field static final KEY_CONTENT_POSITION:Ljava/lang/String; = "contentPosition"

.field static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field static final KEY_PLAYBACK_STATE:Ljava/lang/String; = "playbackState"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final PLAYBACK_STATE_BUFFERING:I = 0x3

.field public static final PLAYBACK_STATE_CANCELED:I = 0x5

.field public static final PLAYBACK_STATE_ERROR:I = 0x7

.field public static final PLAYBACK_STATE_FINISHED:I = 0x4

.field public static final PLAYBACK_STATE_INVALIDATED:I = 0x6

.field public static final PLAYBACK_STATE_PAUSED:I = 0x2

.field public static final PLAYBACK_STATE_PENDING:I = 0x0

.field public static final PLAYBACK_STATE_PLAYING:I = 0x1


# instance fields
.field final mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus;
    .locals 1

    if-eqz p0, :cond_0

    .line 308
    new-instance v0, Landroid/support/v7/media/MediaItemStatus;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaItemStatus;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static playbackStateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "error"

    return-object p0

    :pswitch_1
    const-string p0, "invalidated"

    return-object p0

    :pswitch_2
    const-string p0, "canceled"

    return-object p0

    :pswitch_3
    const-string p0, "finished"

    return-object p0

    :pswitch_4
    const-string p0, "buffering"

    return-object p0

    :pswitch_5
    const-string p0, "paused"

    return-object p0

    :pswitch_6
    const-string p0, "playing"

    return-object p0

    :pswitch_7
    const-string p0, "pending"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .line 298
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getContentDuration()J
    .locals 4

    .line 243
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentDuration"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 4

    .line 233
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "contentPosition"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 252
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 3

    .line 223
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "playbackState"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 210
    iget-object v0, p0, Landroid/support/v7/media/MediaItemStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaItemStatus{ "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaItemStatus;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, " ms ago"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackState="

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaItemStatus;->getPlaybackState()I

    move-result v1

    invoke-static {v1}, Landroid/support/v7/media/MediaItemStatus;->playbackStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentPosition="

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaItemStatus;->getContentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", contentDuration="

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaItemStatus;->getContentDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaItemStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
