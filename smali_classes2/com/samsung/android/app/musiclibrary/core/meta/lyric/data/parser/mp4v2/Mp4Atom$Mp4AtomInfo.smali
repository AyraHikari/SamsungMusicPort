.class Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Mp4AtomInfo"
.end annotation


# instance fields
.field count:I

.field final mandatory:Z

.field final name:Ljava/lang/String;

.field final onlyOne:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;->name:Ljava/lang/String;

    .line 310
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;->mandatory:Z

    .line 311
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/mp4v2/Mp4Atom$Mp4AtomInfo;->onlyOne:Z

    return-void
.end method
