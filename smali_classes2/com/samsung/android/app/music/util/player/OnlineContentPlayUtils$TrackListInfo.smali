.class public Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackListInfo"
.end annotation


# instance fields
.field a:I

.field b:[J

.field c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    return v0
.end method

.method public b()[J
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b:[J

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->d:Ljava/util/List;

    return-object v0
.end method
