.class public Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/bixby/CheckArtist;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckArtistInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/bixby/CheckArtist;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/music/model/bixby/CheckArtistResponse;->list:Ljava/util/List;

    return-object v0
.end method
