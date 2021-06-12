.class public final Landroid/support/v7/media/MediaSessionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaSessionStatus$Builder;
    }
.end annotation


# static fields
.field static final KEY_EXTRAS:Ljava/lang/String; = "extras"

.field static final KEY_QUEUE_PAUSED:Ljava/lang/String; = "queuePaused"

.field static final KEY_SESSION_STATE:Ljava/lang/String; = "sessionState"

.field static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final SESSION_STATE_ACTIVE:I = 0x0

.field public static final SESSION_STATE_ENDED:I = 0x1

.field public static final SESSION_STATE_INVALIDATED:I = 0x2


# instance fields
.field final mBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;
    .locals 1

    if-eqz p0, :cond_0

    .line 170
    new-instance v0, Landroid/support/v7/media/MediaSessionStatus;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaSessionStatus;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static sessionStateToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "invalidated"

    return-object p0

    :pswitch_1
    const-string p0, "ended"

    return-object p0

    :pswitch_2
    const-string p0, "active"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()I
    .locals 3

    .line 107
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "sessionState"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 97
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isQueuePaused()Z
    .locals 2

    .line 116
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    const-string v1, "queuePaused"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSessionStatus{ "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "timestamp="

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->getTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    const-string v1, " ms ago"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionState="

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->getSessionState()I

    move-result v1

    invoke-static {v1}, Landroid/support/v7/media/MediaSessionStatus;->sessionStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", queuePaused="

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->isQueuePaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", extras="

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/support/v7/media/MediaSessionStatus;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
