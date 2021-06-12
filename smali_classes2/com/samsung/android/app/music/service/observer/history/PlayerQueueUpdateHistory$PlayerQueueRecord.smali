.class public Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerQueueRecord"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "playlistId"
    .end annotation
.end field

.field public b:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "trackCount"
    .end annotation
.end field

.field public c:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "type"
    .end annotation
.end field

.field public d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "queueType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " [PlayerQueueRecord > "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  PlaylistId : "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  TrackCount : "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  PlaylistType : "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  QueueType : "

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget v1, p0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
