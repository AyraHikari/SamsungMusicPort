.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->ensureClickHandler()V
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

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleClicked()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 132
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 133
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->next()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    :cond_0
    return-void
.end method

.method public onTripleClicked()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getActivePlayControl()Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->setSupposeToBePlaying(Z)V

    .line 122
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->prev(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayControl;->play()V

    :cond_0
    return-void
.end method
