.class Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LimitResult"
.end annotation


# instance fields
.field final listinfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

.field final removePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final retainPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->listinfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 118
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->removePositions:Ljava/util/List;

    .line 119
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCountLimiter$LimitResult;->retainPosition:Ljava/util/List;

    return-void
.end method
