.class Lcom/facebook/appevents/FlushStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public numEvents:I

.field public result:Lcom/facebook/appevents/FlushResult;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/facebook/appevents/FlushStatistics;->numEvents:I

    .line 25
    sget-object v0, Lcom/facebook/appevents/FlushResult;->SUCCESS:Lcom/facebook/appevents/FlushResult;

    iput-object v0, p0, Lcom/facebook/appevents/FlushStatistics;->result:Lcom/facebook/appevents/FlushResult;

    return-void
.end method
