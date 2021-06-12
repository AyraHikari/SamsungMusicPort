.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect$cancelRunnable$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AudioEffectApplier$AudioEffect;->c()V

    return-void
.end method
