.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RedirectedInfoBuildData"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)V
    .locals 1

    .line 143
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->f:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->e:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->getColumnCount()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->a:I

    const/4 p1, -0x1

    .line 146
    iput p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfoBuildData;->d:I

    return-void
.end method
