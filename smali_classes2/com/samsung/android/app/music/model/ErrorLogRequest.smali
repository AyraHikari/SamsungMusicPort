.class public Lcom/samsung/android/app/music/model/ErrorLogRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private errorLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/ErrorLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLog(Lcom/samsung/android/app/music/model/ErrorLog;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/ErrorLogRequest;->errorLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
