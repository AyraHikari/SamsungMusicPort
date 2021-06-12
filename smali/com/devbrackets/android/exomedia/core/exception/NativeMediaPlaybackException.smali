.class public Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final extra:I

.field public final what:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has had the error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " with extras "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 32
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;->what:I

    .line 33
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/exception/NativeMediaPlaybackException;->extra:I

    return-void
.end method
