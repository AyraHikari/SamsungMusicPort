.class public final Landroid/support/v7/media/MediaSessionStatus$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaSessionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/media/MediaSessionStatus$Builder;->setTimestamp(J)Landroid/support/v7/media/MediaSessionStatus$Builder;

    .line 188
    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaSessionStatus$Builder;->setSessionState(I)Landroid/support/v7/media/MediaSessionStatus$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/media/MediaSessionStatus;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 200
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/support/v7/media/MediaSessionStatus;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "status must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Landroid/support/v7/media/MediaSessionStatus;
    .locals 2

    .line 242
    new-instance v0, Landroid/support/v7/media/MediaSessionStatus;

    iget-object v1, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/support/v7/media/MediaSessionStatus;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus$Builder;
    .locals 2

    .line 234
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "extras"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setQueuePaused(Z)Landroid/support/v7/media/MediaSessionStatus$Builder;
    .locals 2

    .line 224
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "queuePaused"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSessionState(I)Landroid/support/v7/media/MediaSessionStatus$Builder;
    .locals 2

    .line 216
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "sessionState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setTimestamp(J)Landroid/support/v7/media/MediaSessionStatus$Builder;
    .locals 2

    .line 208
    iget-object v0, p0, Landroid/support/v7/media/MediaSessionStatus$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method
