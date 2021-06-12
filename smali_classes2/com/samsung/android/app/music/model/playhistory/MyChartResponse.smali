.class public Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private chartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/MyChartList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;->chartList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/playhistory/MyChartList;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/model/playhistory/MyChartResponse;->chartList:Ljava/util/ArrayList;

    return-object v0
.end method
