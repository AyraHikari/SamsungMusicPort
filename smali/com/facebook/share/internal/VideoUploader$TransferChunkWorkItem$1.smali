.class final Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;
.super Ljava/util/HashSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 412
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const v0, 0x14cc4b    # 1.909996E-39f

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    const v0, 0x14cc4d    # 1.909999E-39f

    .line 414
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    const v0, 0x14cc56

    .line 415
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    const v0, 0x14cc59

    .line 416
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    const v0, 0x14cc61

    .line 417
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
