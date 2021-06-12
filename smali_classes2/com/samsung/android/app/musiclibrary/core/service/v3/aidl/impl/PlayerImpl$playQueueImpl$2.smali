.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;
    .locals 3

    .line 32
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->access$getIPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;

    move-result-object v1

    const-string v2, "iPlayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayer;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$playQueueImpl$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/impl/PlayerImpl$PlayQueueImpl;

    move-result-object v0

    return-object v0
.end method
