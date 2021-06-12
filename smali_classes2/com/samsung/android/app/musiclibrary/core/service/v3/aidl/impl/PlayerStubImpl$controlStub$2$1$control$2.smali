.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1$control$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1$control$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1$control$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl;->getPlayer()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlayControl()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerStubImpl$controlStub$2$1$control$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayControl;

    move-result-object v0

    return-object v0
.end method
