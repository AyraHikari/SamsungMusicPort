.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "SubtitleInfo"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[Ljava/lang/Object;

.field final synthetic d:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;III)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->d:Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->a:I

    .line 170
    invoke-static {p1}, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;->a(Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;)I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->b:I

    .line 171
    new-array p1, p4, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->c:[Ljava/lang/Object;

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->c:[Ljava/lang/Object;

    iget p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->b:I

    not-int p2, p2

    int-to-long p2, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$SubtitleInfo;->c:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method
