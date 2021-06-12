.class final Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FlacMeta"
.end annotation


# instance fields
.field final blockLength:I

.field final blockType:I

.field final isLastBlock:Z


# direct methods
.method constructor <init>(ZII)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->isLastBlock:Z

    .line 170
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockType:I

    .line 171
    iput p3, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLastBlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->isLastBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " blockType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " blockLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/parser/FlacCommentFinder$FlacMeta;->blockLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
