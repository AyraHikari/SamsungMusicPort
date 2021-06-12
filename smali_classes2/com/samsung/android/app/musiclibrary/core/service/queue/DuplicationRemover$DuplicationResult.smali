.class Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DuplicationResult"
.end annotation


# instance fields
.field final listinfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

.field final retainPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;->listinfo:Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo;

    .line 183
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/DuplicationRemover$DuplicationResult;->retainPositions:Ljava/util/List;

    return-void
.end method
