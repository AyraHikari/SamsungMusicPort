.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer$OnCustomErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/ICustomErrorContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;II)V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamingError id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorWhat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " errorExtra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SERVER"

    .line 191
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onStreamingError but ignore this, This is not a current playing item source id: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "handleStreamingCacheError already handled, ignore another streaming error."

    .line 193
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$302(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Z)Z

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;II)Z

    :goto_1
    return-void
.end method
