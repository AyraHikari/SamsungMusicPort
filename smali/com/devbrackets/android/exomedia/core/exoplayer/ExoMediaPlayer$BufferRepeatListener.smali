.class Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferRepeatListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$1;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;-><init>(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-static {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->a(Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;)Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer$BufferRepeatListener;->a:Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/ExoMediaPlayer;->m()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;->a(I)V

    :cond_0
    return-void
.end method
