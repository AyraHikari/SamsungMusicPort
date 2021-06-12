.class public Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayerQueueHistory"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "playlists"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueRecord;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;->a:Ljava/util/List;

    return-void
.end method
