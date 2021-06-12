.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;->a(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;Ljava/lang/Exception;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;->c:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;->a:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener$EventDispatcher$2;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionEventListener;->a(Ljava/lang/Exception;)V

    return-void
.end method
