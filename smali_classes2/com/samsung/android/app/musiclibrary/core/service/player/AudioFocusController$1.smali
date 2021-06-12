.class Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/AudioFocusController;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
