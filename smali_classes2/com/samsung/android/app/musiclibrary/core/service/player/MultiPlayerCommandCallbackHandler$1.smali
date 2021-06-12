.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/CurrentMediaTask$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->executeCurrentMediaTask(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
