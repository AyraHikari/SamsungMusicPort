.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 491
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object p1

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->stopForwardRewind(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
