.class public Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/DrmDownloadComplete;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/samsung/android/app/music/model/purchase/DrmDownloadComplete;)Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;
    .locals 2

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;-><init>()V

    if-eqz p0, :cond_0

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;->list:Ljava/util/ArrayList;

    .line 17
    iget-object v1, v0, Lcom/samsung/android/app/music/model/purchase/DrmDownloadCompleteArray;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method
