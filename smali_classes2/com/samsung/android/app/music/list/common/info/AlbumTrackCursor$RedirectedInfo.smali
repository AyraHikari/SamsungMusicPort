.class public final Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RedirectedInfo"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput p1, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->b:I

    .line 157
    iput p2, p0, Lcom/samsung/android/app/music/list/common/info/AlbumTrackCursor$RedirectedInfo;->a:I

    return-void
.end method
