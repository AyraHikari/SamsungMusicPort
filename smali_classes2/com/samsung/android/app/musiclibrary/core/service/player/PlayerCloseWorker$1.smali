.class Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/OnFadeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;->addWork(Landroid/media/MediaPlayer;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

.field final synthetic val$m:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker$1;->val$m:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFadeFinished(F)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerCloseWorker$1;->val$m:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
