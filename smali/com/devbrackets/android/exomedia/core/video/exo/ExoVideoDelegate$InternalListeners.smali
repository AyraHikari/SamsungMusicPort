.class public Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/listener/MetadataListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 249
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(I)V

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate$InternalListeners;->a:Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/exo/ExoVideoDelegate;->b:Lcom/devbrackets/android/exomedia/core/ListenerMux;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/ListenerMux;->a(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method
