.class Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalTrackListModel"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)V"
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput p1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;->a:I

    .line 457
    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;->a:I

    return v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;->b:Ljava/util/List;

    return-object v0
.end method
